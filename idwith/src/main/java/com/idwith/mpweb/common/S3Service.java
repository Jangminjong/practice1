package com.idwith.mpweb.common;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Properties;

import org.apache.ibatis.io.Resources;
import org.springframework.stereotype.Repository;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Repository
public class S3Service {

	private AmazonS3 s3Client;

	private String resource = "config/s3.properties";
	private Properties properties = new Properties();
	String bucketName = "";
	String accessKey = "";
	String secretKey = "";
	
	public S3Service() {
		s3getproperty(resource);
		createS3Client();	
	}

	// aws S3 client ����
	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials))
				.withRegion(Regions.AP_NORTHEAST_2).build();
	}

	// singleton pattern
	static private S3Service instance = null;

	public static S3Service getInstance() {
		if (instance == null) {
			return new S3Service();
		} else {
			return instance;
		}
	}

	public void upload(File file, String key) {
		uploadToS3(new PutObjectRequest(bucketName, key, file));
	}

	public void upload(InputStream is, String key, String contentType, long contentLength, String bucket) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);

		uploadToS3(new PutObjectRequest(bucket, key, is, objectMetadata));
	}

	// PutObjectRequest�� Aws S3 ��Ŷ�� ���ε��� ��ü ��Ÿ �����Ϳ� ���� �����ͷ�
	// �̷�����ִ�.
	private void uploadToS3(PutObjectRequest putObjectRequest) {

		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println(String.format("[%s] upload complete", putObjectRequest.getKey()));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void copy(String orgKey, String copyKey) {
		try {
			// Copy ��ü ����
			CopyObjectRequest copyObjRequest = new CopyObjectRequest(bucketName, orgKey, bucketName, copyKey);
			// Copy
			this.s3Client.copyObject(copyObjRequest);

			System.out.println(String.format("Finish copying [%s] to [%s]", orgKey, copyKey));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

	public void delete(String key) {
		try {
			// Delete ��ü ����
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(bucketName, key);
			// Delete
			this.s3Client.deleteObject(deleteObjectRequest);
			System.out.println(String.format("[%s] deletion complete", key));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

	public void s3getproperty(String resource) {
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			properties.load(reader);
			bucketName = properties.getProperty("s3.bucketname");
			accessKey = properties.getProperty("s3.accesskey");
			secretKey = properties.getProperty("s3.secretkey");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}