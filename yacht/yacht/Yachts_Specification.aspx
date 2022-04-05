<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="Yachts_Specification.aspx.cs" Inherits="yacht.Yachts_Specification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>
    Tayana | Tayana Yachts Official Website
  </title>
  <script type="text/javascript" src="Scripts/jquery.min.js"></script>
  <!--[if lt IE 7]>
  <script type="text/javascript" src="javascript/iepngfix_tilebg.js"></script>
  <![endif]-->
  <link rel="shortcut icon" href="favicon.ico" />
  <link href="css/homestyle.css" rel="stylesheet" type="text/css" />
  <link href="css/reset.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript">
    $(function () {
      $('.topbuttom').click(function () {
        $('html, body').scrollTop(0);
      });
    });
  </script>
  <link rel="stylesheet" type="text/css" href="css/jquery.ad-gallery.css" />
  <style type="text/css">
    img,
    div,
    input {
      behavior: url("");
    }
  </style>
  <script type="text/javascript" src="Scripts/jquery.ad-gallery.js"></script>
  <script type="text/javascript">
    $(function () {
      var galleries = $('.ad-gallery').adGallery();
      galleries[0].settings.effect = 'fade';
      if ($('.banner input[type=hidden]').val() == "0") {
        $(".bannermasks").hide();
        $(".banner").hide();
        $("#crumb").css("top", "125px");
      }
    });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form name="aspnetForm" method="post" action="Yachts_Specification.html?id=6d245b62-ff07-463b-95b3-277f0e5aac25"
      id="aspnetForm">
      <div>
        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTQ4MzIwODk3NQ9kFgJmD2QWAgIDD2QWAgIBD2QWDGYPZBYCAgIPFgIeC18hSXRlbUNvdW50Ag4WHAIBD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQyNjEwMjg0MS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MjYxMDI4NDEuanBnZAICD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQyNjEwMzQyOS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MjYxMDM0MjkuanBnZAIDD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQyNjEwNDIwNy5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MjYxMDQyMDcuanBnZAIED2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQxNjEwMTQyOC5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MTYxMDE0MjguanBnZAIFD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDUwODA0NDg0NS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA1MDgwNDQ4NDUuanBnZAIGD2QWAmYPFQIjdXBsb2FkL0ltYWdlcy8yMDEyMDQwMjA0MzUwMi0tMS5qcGckdXBsb2FkL0ltYWdlcy9zMjAxMjA0MDIwNDM1MDItLTEuanBnZAIHD2QWAmYPFQIjdXBsb2FkL0ltYWdlcy8yMDEyMDQwMjA0MzUwOS0tMS5qcGckdXBsb2FkL0ltYWdlcy9zMjAxMjA0MDIwNDM1MDktLTEuanBnZAIID2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQxNDEyMTE0Mi5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MTQxMjExNDIuanBnZAIJD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQxNDEyMTMxOS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MTQxMjEzMTkuanBnZAIKD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzA5NTkzMy5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMwOTU5MzMuanBnZAILD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzA5NTk0My5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMwOTU5NDMuanBnZAIMD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzA5NTk1OS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMwOTU5NTkuanBnZAIND2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzEwMDAxOC5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMxMDAwMTguanBnZAIOD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzEwMDAyOS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMxMDAwMjkuanBnZAIBDxYCHwACBxYOAgEPZBYCZg8VAkFZYWNodHNfU3BlY2lmaWNhdGlvbi5hc3B4P2lkPTZkMjQ1YjYyLWZmMDctNDYzYi05NWIzLTI3N2YwZTVhYWMyNQlUYXlhbmEgMzdkAgIPZBYCZg8VAkFZYWNodHNfU3BlY2lmaWNhdGlvbi5hc3B4P2lkPTVmYjg0ZTE1LTA0MTQtNDRmOS1iNzIzLTMyYTFjNDY4NWFhMwlUYXlhbmEgNDZkAgMPZBYCZg8VAkFZYWNodHNfU3BlY2lmaWNhdGlvbi5hc3B4P2lkPWMwYWU2YzY5LTdiMzYtNDg2ZC05N2U2LWZkM2JmMjAwNjRlNQlUYXlhbmEgNDhkAgQPZBYCZg8VAkFZYWNodHNfU3BlY2lmaWNhdGlvbi5hc3B4P2lkPTc4MmEyODYyLWVkZTEtNGY4ZS05ZTJlLWQzZTg4ZGQwZTM1NhpUYXlhbmEgNTQgICAoTmV3IEJ1aWxkaW5nKWQCBQ9kFgJmDxUCQVlhY2h0c19TcGVjaWZpY2F0aW9uLmFzcHg/aWQ9OGZhNWNlM2UtNDM3Zi00YjFiLWI3MTctMjYwMmU3MTU4ZTQwCVRheWFuYSA1OGQCBg9kFgJmDxUCQVlhY2h0c19TcGVjaWZpY2F0aW9uLmFzcHg/aWQ9ZWU5NTFkZGEtZmFkOC00MmI5LTkwNTYtNTI0NzMxNzBkNzI5CVRheWFuYSA2NGQCBw9kFgJmDxUCQVlhY2h0c19TcGVjaWZpY2F0aW9uLmFzcHg/aWQ9M2M1MDc4NTctZTZkYS00NGUwLTk1YWItZjA1OGQ3OTNjMDlhCElTQVJBIDUwZAICDxYCHgRUZXh0BQlUYXlhbmEgMzdkAgMPFgIfAQUJVGF5YW5hIDM3ZAIEDw8WAh4HVmlzaWJsZWhkZAIFDxYCHwEFrR88cD5IVUxMPC9wPg0KPHVsPg0KPGxpPkhhbmQgbGFpZCB1cCBGUlAgaHVsbCwgd2hpdGUgd2l0aCBibHVlIGNvdmUgc3RyaXBlIGFuZCBib290IHRvcC48L2xpPg0KPGxpPiAgVGVhayBydWJyYWlsLjxiciAvPg0KPC9saT4NCjwvdWw+DQoNCjxwPkRFQ0svSEFSRFdBUkU8L3A+DQo8dWw+DQo8bGk+SGFuZCBsYWlkIHVwIEZSUCBjb3JkIGRlY2suPC9saT4NCjxsaT5UZWFrIGNvY2twaXQgc2VhdHMgYW5kIGNvY2twaXQgZ3JhdGluZzwvbGk+DQo8bGk+VGVhayBza3lsaWdodDwvbGk+DQo8bGk+VGVhayBjb21wYW5pb253YXkgaGF0Y2ggd2l0aCBkb29ycyAmYW1wOyBzdG9ybWJvYXJkczwvbGk+DQo8bGk+VGVhayBvciBhbHVtbnVtIGZvcndhcmQgaGF0Y2g8L2xpPg0KPGxpPlRlYWsgZXh0ZXJpb3IgdHJpbTwvbGk+DQo8bGk+VGVhayBleHRlcmlvciBoYW5kcmFpbHM8L2xpPg0KPGxpPlRlYWsgc2Ftc29tIHBvc3RzIGZvcndhcmQ8L2xpPg0KPGxpPkxhbWluYXRlZCBib3cgc3ByaXQgd2l0aCB0ZWFrIHBsYXRmb3JtICZhbXA7IGFuY2hvciByb2xsZXJzPC9saT4NCjxsaT5DaGFpbiBsb2NrZXIgYW5kIG9uZSBkZWNrIHBpcGU8L2xpPg0KPGxpPlNTIHN0YW5jaGlvbnMsIHZpbnlsIGNvdmVyZWQgZGJsIGxpZmVsaW5lcyB3LyBnYXRlcyBQJmFtcDtTPC9saT4NCjxsaT5TUyBib3cgcHVscGl0PC9saT4NCjxsaT5TUyBzdGVybiBwdWxwaXQ8L2xpPg0KPGxpPlN0YWlubGVzcyBoYXdzZSBwaXBlcyAmYW1wOyBtb29yaW5nIGNsZWF0cyAoc2l4KTwvbGk+DQo8bGk+U3RhaW5sZXNzIHN0ZWVsIG9wZW5pbmcgcG9ydHMgKHRlbik8L2xpPg0KPGxpPkRvcmFkZSB2ZW50cyAoZm91cik8L2xpPg0KPGxpPkZSUCBzZWFob29kPC9saT4NCjxsaT5Qcm9wYW5lIGxvY2tlciBmb3IgdHdvIDIwIGxiIHRhbmtzLCB2ZW50ZWQgb3ZlcmJvYXJkPC9saT4NCjxsaT5Ud28gY29hbWluZyBsb2NrZXJzPC9saT4NCjxsaT5BbHVtaW5pdW0gbWFpbnNoZWV0IHRyYXZlbGVyIHcvIHJvbGxlciBjYXI8L2xpPg0KPGxpPlN0YXlzYWlsIHRyYWNrPC9saT4NCjxsaT5BbHVtaW5pdW0gZ2Vub2EgdHJhY2tzIHdpdGggY2FyczwvbGk+DQo8bGk+VGVhayBzbGlkaW5nIGNvbXBhbmlvbndheSBoYXRjaDwvbGk+DQo8bGk+VGVhayBjb2FtaW5nIGNhcHM8L2xpPg0KPGxpPldpbmNoIGhhbmRsZXM8L2xpPg0KPGxpPlNldmVuIExld21hciB3aW5jaGVzIDxiciAvPg0KVHdvIDQwQ1NUIGppYiBzaGVldDxiciAvPg0KT25lIDQwQ1NUbWFpbiBzaGVldDxiciAvPg0KT25lIDMwQ1NUIHN0YXlzYWlsPGJyIC8+DQpPbmUgMzBDU1QgamliIGhhbHlhcmQ8YnIgLz4NCk9uZSAzMENTVCBtYWluIGhhbHlhcmQ8YnIgLz4NCk9uZSAzMENTVCBzdGF5c2FpbCBoYWx5YXJkPA0KPC9saT4NCjwvdWw+DQoNCjxwPkVOR0lORS9NQUNISU5FUlk8L3A+DQo8dWw+DQo8bGk+MDFEaWVzZWwgZW5naW5lIOKAkyBZYW5tYXIgNEpIRSwgZnJlc2ggd2F0ZXIgY29vbGVkLCA1NUhQPC9saT4NCjxsaT5FbmdpbmUgY29vbGluZyB3YXRlciBpbnRha2Ugc3RyYWluZXI8L2xpPg0KPGxpPkRyaXBsZXNzIHNoYWZ0IGdsYW5kPC9saT4NCjxsaT5Ccm9uemUgdGhyZWUgYmxhZGUgcHJvcGVsbGVyPC9saT4NCjxsaT5GaWJlcmdsYXNzIGRyaXAgcGFuDQo8L2xpPg0KPC91bD4NCg0KDQo8cD5TVEVFUklORzwvcD4NCjx1bD4NCjxsaT5QZWRlc3RhbCBzdGVlcmluZyA8L2xpPg0KPGxpPlRlYWsgdHJhZGl0aW9uYWwgc3RlZXJpbmcgd2hlZWw8L2xpPg0KPGxpPlRlYWsgJmFtcDsgU1MgZW1lcmdlbmN5IHRpbGxlcjwvbGk+DQo8bGk+U1MgcnVkZGVyIHNoYWZ0PGJyIC8+DQo8L2xpPg0KPC91bD4NCg0KPHA+U1BBUlMvUklHR0lORzwvcD4NCjx1bD4NCiAgPGxpPkFsdW1uaXVtIG1hc3QgJmFtcDsgYm9vbSwgbWFzdCB3aXRoIGVsZWN0cmljYWwgY29uZHVpdHM8L2xpPg0KICA8bGk+NS8xNuKAnSBTUyBzdGFuZGluZyByaWdnaW5nIHcvIHN3YWdlZCB0ZXJtaW5hbHM8L2xpPg0KICA8bGk+U3RheXNhaWwgYm9vbSAmYW1wOyBmaXR0aW5ncyAgICA8L2xpPg0KPC91bD4NCg0KPHA+U0FJTFM8L3A+DQo8dWw+DQogIDxsaT5NYWluLCA4IG96LCB3LzIgcmVlZiBwb2ludHM8L2xpPg0KICA8bGk+WWFua2VlIGppYiwgOCBveiwgMTAwJTwvbGk+DQogIDxsaT5TdGF5c2FpbCwgOCBvejwvbGk+DQogIDxsaT5NaXp6b24sIDggb3ogKGtldGNoIG9ubHkpPC9saT4NCiAgPGxpPlNhaWwgYmFncyBmb3IgYWxsIHNhaWxzPC9saT4NCiAgPGxpPlNhaWwgY292ZXJzIGZvciBhbGwgc2FpbHMgKGJsdWUpPGJyIC8+DQogIDwvbGk+DQo8L3VsPg0KDQoNCjxwPklOVEVSSU9SPC9wPg0KPHVsPg0KICA8bGk+VGVhayBhbmQgaG9sbHkgY2FiaW4gc29sZTwvbGk+DQogIDxsaT5XaGl0ZSBmb3JtaWNhIGNvdW50ZXJzIGluIGhlYWQgJmFtcDsgZ2FsbGV5LiBUZWFrIHZlbmVlciBjaGFydCAmYW1wOyBkaW5ldHRlIHRhYmxlIHRvcHMuPC9saT4NCiAgPGxpPlRlYWsgZnJhbWVkIG1pcnJvciBpbiBoZWFkPC9saT4NCiAgPGxpPkludGVyaW9yIHRlYWsgaGFuZHJhaWxzPC9saT4NCiAgPGxpPlYtYmVydGggZmlsbGVyIChpZiBhcHBsaWNhYmxlKTwvbGk+DQogIDxsaT5WaW55bCBjdXNoaW9uIGNvdmVyczwvbGk+DQogIDxsaT5JY2UgY2hlc3QgaW5zdWxhdGVkIHcvIDTigJ0gUFUgZm9hbSAmYW1wOyBTUyBsaW5lZDwvbGk+DQogIDxsaT5JbnRlcmlvciB2YXJuaXNoZWQgcXVhbGl0eSBwb2x5dXJldGhhbmUgc2F0aW48L2xpPg0KICA8bGk+U3RvdmUgYWxjb3ZlIFNTIGxpbmVkPC9saT4NCiAgPGxpPkVhc2lseSByZW1vdmFibGUgaGVhZCBsaW5lcjwvbGk+DQogIDxsaT5DZWlsaW5nIG9uIGFsbCBleHBvc2VkIGh1bGwgYXJlYXMgIDwvbGk+DQo8L3VsPg0KDQoNCjxwPkVMRUNUUklDQUw8L3A+DQo8dWw+DQogIDxsaT5EdWFsIGwyMEFILCAxMiB2b2x0IGJhdHRlcmllcyBpbiBGUlAgYm94ZXM8L2xpPg0KICA8bGk+RWlnaHQgbDIgdm9sdCBjYWJpbiBsaWdodHMgb3ZlcmhlYWQgJmFtcDsgc2l4IHJlYWRpbmcgbGlnaHRzPC9saT4NCiAgPGxpPjEyIHZvbHQgZWxlY3RyaWNhbCBzeXN0ZW0gdy8gMyB3YXkgc3dpdGNoLCBlbGVjdHJpYyBwYW5lbCB3LyBicmVha2VycyAmYW1wOyB2b2x0IG1ldGVyICAmYW1wOyBhbW1ldGVyIGFuZCBEQyBvdXRsdGVzPC9saT4NCiAgPGxpPmxsMCB2b2x0IHNob3JlIHBvd2VyIHN5c3RlbSB3LyAzMGFtcCBwb3dlciBzb2NrZXQsIGVsZWN0cmljIHBhbmVsIHcvIGJyZWFrZXJzICZhbXA7IA0KICAgIHZvbHQgbWV0ZXIgYW5kIGFtbWV0ZXIsIGxsMCB2b2x0IG91dGxldHMgdGhyb3VnaG91dCB5YWNodDwvbGk+DQogIDxsaT5JbnRlcm5hdGlvbmFsIHJ1bGVzIHJ1bm5pbmcgbGlnaHRzPC9saT4NCiAgPGxpPkRlY2sgZmxvb2QgbGlnaHQ8L2xpPg0KICA8bGk+QW5jaG9yIGxpZ2h0IDwvbGk+DQo8L3VsPg0KDQoNCjxwPlBMVU1CSU5HPC9wPg0KPHVsPg0KICA8bGk+OTAgZ2FsbG9uIG1pbGQgc3RlZWwgZnVlbCB0YW5rPC9saT4NCiAgPGxpPmwwMCBnYWxsb24gU1MgZnJlc2ggd2F0ZXIgdGFuazwvbGk+DQogIDxsaT4zMCBnYWxsb24gRlJQIGhvbGRpbmcgdGFuazwvbGk+DQogIDxsaT5NYW51YWwgbWFyaW5lIGhlYWQ8L2xpPg0KICA8bGk+SG90IGFuZCBjb2xkIHByZXNzdXJlIHdhdGVyIHN5c3RlbTwvbGk+DQogIDxsaT5PbmUgaGVhdnkgZHV0eSBlbGVjdHJpY2FsIGJpbGdlIHB1bXA8L2xpPg0KICA8bGk+T25lIGhpZ2ggY2FwYWNpdHkgbWFudWFsIGJpbGdlIHB1bXAgdG8gcHVtcCBiaWxnZSAmYW1wOyBob2xkaW5nIHRhbms8L2xpPg0KICA8bGk+bDAgZ2FsbG9uIHdhdGVyIGhlYXRlciwgKGxsMCBvciAyMjB2b2x0KSAmYW1wOyBlbmdpbmUgaGVhdGVkPC9saT4NCiAgPGxpPkJpbGdlIHB1bXAgc3RyYWluZXI8L2xpPg0KICA8bGk+U2VhIGNvY2tzIG9uIGFsbCB0aHJvdWdoIGh1bGwgZml0dGluZ3M8L2xpPg0KICA8bGk+RG91YmxlIGNsYW1wcyBvbiBhbGwgdGhyb3VnaC1odWxscyBiZWxvdyB3YXRlciBsaW5lPGJyIC8+DQogIDwvbGk+DQo8L3VsPmRkvCMAsACCcjk0kPWSFH34uQ4jlmc=" />
      </div>
      <div>
        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="35B0793E" />
        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
          value="/wEWAgKovPfrCwL9+YC2DU8+PloyL7UO5NLFqlSj4s+0qSa9" />
      </div>
      <!--------------------------------選單開始結束---------------------------------------------------->
      <!--遮罩-->
      <div class="bannermasks"><img src="images/banner01_masks.png" alt="&quot;&quot;" /></div>
      <!--遮罩結束-->
      <div class="banner1">
        <input type="hidden" name="ctl00$ContentPlaceHolder1$Gallery1$HiddenField1"
          id="ctl00_ContentPlaceHolder1_Gallery1_HiddenField1" value="1" />
        <div id="gallery" class="ad-gallery">
          <div class="ad-image-wrapper">
          </div>
          <div class="ad-controls">
          </div>
          <div class="ad-nav">
            <div class="ad-thumbs">
              <ul class="ad-thumb-list">
                 <asp:Literal ID="Lite_picbox" runat="server"></asp:Literal>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="conbg">
        <!--------------------------------左邊選單開始---------------------------------------------------->
        <div class="left">
          <div class="left1">
            <p><span>YACHTS</span></p>
            <ul>
              <asp:Literal ID="Lit_lift" runat="server"></asp:Literal>
            </ul>
          </div>
        </div>
        <!--------------------------------左邊選單結束---------------------------------------------------->
        <!--------------------------------右邊選單開始---------------------------------------------------->
        <div id="crumb1"><a href="index.html">Home</a> >> <a href="#">Yachts</a> >><asp:Literal ID="Lit_topa" runat="server"></asp:Literal></div>
        <div class="right">
          <div class="right1">
            <div class="title"> <asp:Label ID="Lab_title" runat="server" Text=""></asp:Label>

            </div>
            <!--------------------------------內容開始---------------------------------------------------->
            <!--次選單-->
            <div class="menu_y">
              <ul>
                <li class="menu_y00">YACHTS</li>
                  <asp:Literal ID="Lit_maintopa" runat="server"></asp:Literal>
                <li>
                </li>
              </ul>
            </div>
            <!--次選單-->
            <div class="box5">
              <h4>DETAIL SPECIFICATION</h4>
              <p>HULL</p>
              <ul>
                  <asp:Literal ID="Lit_Hull" runat="server"></asp:Literal>
              </ul>
              <p>DECK/HARDWARE</p>
              <ul>
                  <asp:Literal ID="Lit_Deck" runat="server"></asp:Literal>
              </ul>
              <p>ENGINE/MACHINERY</p>
              <ul>
                  <asp:Literal ID="Lit_Engine" runat="server"></asp:Literal>
              </ul>
              <p>STEERING</p>
              <ul>
                  <asp:Literal ID="Lit_Steering" runat="server"></asp:Literal>
                </li>
              </ul>
              <p>SPARS/RIGGING</p>
              <ul>
                  <asp:Literal ID="Lit_Spars" runat="server"></asp:Literal>
              </ul>
              <p>SAILS</p>
              <ul>
                  <asp:Literal ID="Lit_Sails" runat="server"></asp:Literal>
              </ul>
              <p>INTERIOR</p>
              <ul>
                  <asp:Literal ID="Lit_Interior" runat="server"></asp:Literal>
              </ul>
              <p>ELECTRICAL</p>
              <ul>
                  <asp:Literal ID="Lit_Electrical" runat="server"></asp:Literal>
              </ul>
              <p>PLUMBING</p>
              <ul>
                  <asp:Literal ID="Lit_Plumbing" runat="server"></asp:Literal>
              </ul>
            </div>
            <p class="topbuttom"><img src="images/top.gif" alt="top" /></p>
            <!--------------------------------內容結束------------------------------------------------------>
          </div>
        </div>
        <!--------------------------------右邊選單結束---------------------------------------------------->
      </div>
    </form>
</asp:Content>
