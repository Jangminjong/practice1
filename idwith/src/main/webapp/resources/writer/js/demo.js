$(function () {
    skinChanger();
    activateNotificationAndTasksScroll();

    setSkinListHeightAndScroll(true);
    setSettingListHeightAndScroll(true);
    $(window).resize(function () {
        setSkinListHeightAndScroll(false);
        setSettingListHeightAndScroll(false);
    });
});

//Skin changer
function skinChanger() {
    $('.right-sidebar .demo-choose-skin li').on('click', function () {
        var $body = $('body');
        var $this = $(this);

        var existTheme = $('.right-sidebar .demo-choose-skin li.active').data('theme');
        $('.right-sidebar .demo-choose-skin li').removeClass('active');
        $body.removeClass('theme-' + existTheme);
        $this.addClass('active');

        $body.addClass('theme-' + $this.data('theme'));
    });
}

//Skin tab content set height and show scroll
function setSkinListHeightAndScroll(isFirstTime) {
    var height = $(window).height() - ($('.navbar').innerHeight() + $('.right-sidebar .nav-tabs').outerHeight());
    var $el = $('.demo-choose-skin');

    if (!isFirstTime){
      $el.slimScroll({ destroy: true }).height('auto');
      $el.parent().find('.slimScrollBar, .slimScrollRail').remove();
    }

    $el.slimscroll({
        height: height + 'px',
        color: 'rgba(0,0,0,0.5)',
        size: '6px',
        alwaysVisible: false,
        borderRadius: '0',
        railBorderRadius: '0'
    });
}

//Setting tab content set height and show scroll
function setSettingListHeightAndScroll(isFirstTime) {
    var height = $(window).height() - ($('.navbar').innerHeight() + $('.right-sidebar .nav-tabs').outerHeight());
    var $el = $('.right-sidebar .demo-settings');

    if (!isFirstTime){
      $el.slimScroll({ destroy: true }).height('auto');
      $el.parent().find('.slimScrollBar, .slimScrollRail').remove();
    }

    $el.slimscroll({
        height: height + 'px',
        color: 'rgba(0,0,0,0.5)',
        size: '6px',
        alwaysVisible: false,
        borderRadius: '0',
        railBorderRadius: '0'
    });
}

//Activate notification and task dropdown on top right menu
function activateNotificationAndTasksScroll() {
    $('.navbar-right .dropdown-menu .body .menu').slimscroll({
        height: '254px',
        color: 'rgba(0,0,0,0.5)',
        size: '4px',
        alwaysVisible: false,
        borderRadius: '0',
        railBorderRadius: '0'
    });
}

//Google Analiytics ======================================================================================
addLoadEvent(loadTracking);
var trackingId = 'UA-30038099-6';

function addLoadEvent(func) {
    var oldonload = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = func;
    } else {
        window.onload = function () {
            oldonload();
            func();
        }
    }
}

function loadTracking() {
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', trackingId, 'auto');
    ga('send', 'pageview');
}
//========================================================================================================



$(document).ready(function() {
    $("#calendar").fullCalendar({
      header: {
        left: "prev,next today",
        center: "title",
        right: "month,agendaWeek,agendaDay"
      },
      defaultView: "month",
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      select: function(start, end) {
        // Display the modal.
        // You could fill in the start and end fields based on the parameters
        $(".modal").modal("show");
        $(".modal")
          .find("#title")
          .val("");
        $(".modal")
          .find("#starts-at")
          .val("");
        $(".modal")
          .find("#ends-at")
          .val("");
        $("#save-event").show();
        $("input").prop("readonly", false);
      },
      eventRender: function(event, element) {
        //dynamically prepend close button to event
        element
          .find(".fc-content")
          .prepend("<span class='closeon material-icons'>&#xe5cd;</span>");
        element.find(".closeon").on("click", function() {
          $("#calendar").fullCalendar("removeEvents", event._id);
        });
      },
      eventClick: function(calEvent) {
        // Display the modal and set event values.
        $(".modal").modal("show");
      var title = $(".modal")
          .find("#title")
          .val(calEvent.title);
     var start = $(".modal")
          .find("#starts-at")
          .val(calEvent.start);
      var end = $(".modal")
          .find("#ends-at")
          .val(calEvent.end);
          $("#save-event").show();
        $("input").prop("readonly", false);
      }
    });
    // Bind the dates to datetimepicker.
    $("#starts-at, #ends-at").datetimepicker();
    //click to save event
    $("#save-event").on("click", function(event) {
      var title = $("#title").val();
      if (title) {
        var eventData = {
          title: title,
          start: $("#starts-at").val(),
          end: $("#ends-at").val()
        };
        $("#calendar").fullCalendar("renderEvent", eventData, true); // stick? = true
      }
      $("#calendar").fullCalendar("unselect");
      // Clear modal inputs
      $(".modal")
        .find("input")
        .val("");
      // hide modal
      $(".modal").modal("hide");
    });
  });