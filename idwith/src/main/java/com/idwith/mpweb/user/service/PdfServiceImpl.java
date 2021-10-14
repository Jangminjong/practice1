package com.idwith.mpweb.user.service;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idwith.mpweb.user.PdfTestDAO;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;

@Service
public class PdfServiceImpl implements PdfTextService {
	@Autowired
	private PdfTestDAO dao;

	@Override
	public String createPDF(String user_id) {
		String result = ""; // 초기값이 null이 들어가면 오류가 발생될수 있기 때문에 공백을 지정

		/*
		 * try { Document document = new Document(); // pdf문서를 처리하는 객체
		 * 
		 * System.out.println("중간1"); File fileName = new File("orderList.pdf");
		 * 
		 * PdfWriter pdfWriter; pdfWriter = new PdfWriter();
		 * 
		 * //PdfWriter.getInstance(document, new FileOutputStream(fileName + dir)); //
		 * pdf파일의 저장경로를 d드라이브의 sample.pdf로 한다는 뜻
		 * 
		 * document.open(); // 웹페이지에 접근하는 객체를 연다
		 * 
		 * BaseFont baseFont = BaseFont.createFont("c:/windows/fonts/malgun.ttf",
		 * BaseFont.IDENTITY_H, BaseFont.EMBEDDED); // pdf가 기본적으로 한글처리가 안되기 때문에 한글폰트 처리를
		 * 따로 해주어야 한다. // createFont메소드에 사용할 폰트의 경로 (malgun.ttf)파일의 경로를 지정해준다. // 만약에 이
		 * 경로에 없을 경우엔 java파일로 만들어서 집어넣어야 한다.
		 * 
		 * Font font = new Font(baseFont, 12); // 폰트의 사이즈를 12픽셀로 한다.
		 * 
		 * PdfPTable table = new PdfPTable(4); // 4개의 셀을 가진 테이블 객체를 생성 (pdf파일에 나타날 테이블)
		 * Chunk chunk = new Chunk("장바구니", font); // 타이틀 객체를 생성 (타이틀의 이름을 장바구니로 하고 위에 있는
		 * font를 사용)
		 * 
		 * System.out.println("중간2");
		 * 
		 * Paragraph ph = new Paragraph(chunk); ph.setAlignment(Element.ALIGN_CENTER);
		 * document.add(ph); // 문단을 만들어서 가운데 정렬 (타이틀의 이름을 가운데 정렬한다는 뜻)
		 * 
		 * document.add(Chunk.NEWLINE); document.add(Chunk.NEWLINE); // 줄바꿈 (왜냐하면 타이틀에서
		 * 두줄을 내린후에 셀(테이블)이 나오기 때문)
		 * 
		 * PdfPCell cell1 = new PdfPCell(new Phrase("상품코드", font)); // 셀의 이름과 폰트를 지정해서
		 * 셀을 생성한다. cell1.setHorizontalAlignment(Element.ALIGN_CENTER); // 셀의 정렬방식을
		 * 지정한다. (가운데정렬)
		 * 
		 * PdfPCell cell2 = new PdfPCell(new Phrase("작가코드", font));
		 * cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
		 * 
		 * PdfPCell cell3 = new PdfPCell(new Phrase("구매자", font));
		 * cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
		 * 
		 * PdfPCell cell4 = new PdfPCell(new Phrase("금액", font));
		 * cell4.setHorizontalAlignment(Element.ALIGN_CENTER);
		 * 
		 * table.addCell(cell1); // 그리고 테이블에 위에서 생성시킨 셀을 넣는다. table.addCell(cell2);
		 * table.addCell(cell3); table.addCell(cell4);
		 * 
		 * System.out.println("중간3");
		 * 
		 * List<GoodsOrderDetailVO> orderList = dao.getPDFList(user_id);
		 * 
		 * for (int i = 0; i < orderList.size(); i++) { GoodsOrderDetailVO vo =
		 * orderList.get(i); // 레코드에 값들을 꺼내서 dto에 저장 PdfPCell cellProductName = new
		 * PdfPCell(new Phrase(vo.getOrder_detail_code(), font)); // 반복문을 사용해서 상품정보를 하나씩
		 * // 출력해서 셀에 넣고 테이블에 // 저장한다.
		 * 
		 * PdfPCell cellPrice = new PdfPCell(new Phrase("" +
		 * vo.getOrder_detail_seller(), font)); // Phrase타입은 숫자형(int형 같은타입)으로 하면 에러가
		 * 발생되기 때문에 dto앞에 공백("")주어서 String타입으로 변경한다.
		 * 
		 * PdfPCell cellAmount = new PdfPCell(new Phrase("" + vo.getOrder_id(), font));
		 * // Phrase타입은 숫자형(int형 같은타입)으로 하면 에러가 발생되기 때문에 dto앞에 공백("")주어서 String타입으로
		 * 변경한다.
		 * 
		 * PdfPCell cellMoney = new PdfPCell(new Phrase("" + vo.getOrder_detail_price(),
		 * font)); // Phrase타입은 숫자형(int형 같은타입)으로 하면 에러가 발생되기 때문에 dto앞에 공백("")주어서
		 * String타입으로 변경한다.
		 * 
		 * table.addCell(cellProductName); // 셀의 데이터를 테이블에 저장한다. (장바구니안에 들어있는 갯수만큼 테이블이
		 * 만들어진다) table.addCell(cellPrice); table.addCell(cellAmount);
		 * table.addCell(cellMoney); } document.add(table); // 웹접근 객체에 table를 저장한다.
		 * document.close(); // 저장이 끝났으면 document객체를 닫는다. result = "pdf 파일이 생성되었습니다.";
		 * 
		 * System.out.println("마지막");
		 * 
		 * } catch (Exception e) { e.printStackTrace(); result = "pdf 파일 생성 실패..."; }
		 */
		
		Document doc = new Document(PageSize.A4, 20, 20, 30, 30);
		try {
			PdfWriter.getInstance(doc, new FileOutputStream("orderList.pdf"));
			doc.open();
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return result;
	}
}
