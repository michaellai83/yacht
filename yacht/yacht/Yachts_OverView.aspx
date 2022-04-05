<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="Yachts_OverView.aspx.cs" Inherits="yacht.Yachts_OverView" %>
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
        <script type="text/javascript">
            $(function () {
                $('.topbuttom').click(function () {
                    $('html, body').scrollTop(0);
                });
            });
    </script>

    <link rel="stylesheet" type="text/css" href="css/jquery.ad-gallery.css">
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
   
    <form name="aspnetForm" method="post" action="Yachts_OverView.aspx" id="aspnetForm">
        <div>
                <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
                    value="/wEPDwUKMTI5MDk2MDIwMA9kFgJmD2QWAgIDD2QWAgIBD2QWDmYPZBYCAgIPFgIeC18hSXRlbUNvdW50Ag4WHAIBD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQyNjEwMjg0MS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MjYxMDI4NDEuanBnZAICD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQyNjEwMzQyOS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MjYxMDM0MjkuanBnZAIDD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQyNjEwNDIwNy5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MjYxMDQyMDcuanBnZAIED2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQxNjEwMTQyOC5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MTYxMDE0MjguanBnZAIFD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDUwODA0NDg0NS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA1MDgwNDQ4NDUuanBnZAIGD2QWAmYPFQIjdXBsb2FkL0ltYWdlcy8yMDEyMDQwMjA0MzUwMi0tMS5qcGckdXBsb2FkL0ltYWdlcy9zMjAxMjA0MDIwNDM1MDItLTEuanBnZAIHD2QWAmYPFQIjdXBsb2FkL0ltYWdlcy8yMDEyMDQwMjA0MzUwOS0tMS5qcGckdXBsb2FkL0ltYWdlcy9zMjAxMjA0MDIwNDM1MDktLTEuanBnZAIID2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQxNDEyMTE0Mi5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MTQxMjExNDIuanBnZAIJD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDQxNDEyMTMxOS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA0MTQxMjEzMTkuanBnZAIKD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzA5NTkzMy5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMwOTU5MzMuanBnZAILD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzA5NTk0My5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMwOTU5NDMuanBnZAIMD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzA5NTk1OS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMwOTU5NTkuanBnZAIND2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzEwMDAxOC5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMxMDAwMTguanBnZAIOD2QWAmYPFQIgdXBsb2FkL0ltYWdlcy8yMDEyMDYxMzEwMDAyOS5qcGchdXBsb2FkL0ltYWdlcy9zMjAxMjA2MTMxMDAwMjkuanBnZAIBDxYCHwACBxYOAgEPZBYCZg8VAjxZYWNodHNfT3ZlclZpZXcuYXNweD9pZD02ZDI0NWI2Mi1mZjA3LTQ2M2ItOTViMy0yNzdmMGU1YWFjMjUJVGF5YW5hIDM3ZAICD2QWAmYPFQI8WWFjaHRzX092ZXJWaWV3LmFzcHg/aWQ9NWZiODRlMTUtMDQxNC00NGY5LWI3MjMtMzJhMWM0Njg1YWEzCVRheWFuYSA0NmQCAw9kFgJmDxUCPFlhY2h0c19PdmVyVmlldy5hc3B4P2lkPWMwYWU2YzY5LTdiMzYtNDg2ZC05N2U2LWZkM2JmMjAwNjRlNQlUYXlhbmEgNDhkAgQPZBYCZg8VAjxZYWNodHNfT3ZlclZpZXcuYXNweD9pZD03ODJhMjg2Mi1lZGUxLTRmOGUtOWUyZS1kM2U4OGRkMGUzNTYaVGF5YW5hIDU0ICAgKE5ldyBCdWlsZGluZylkAgUPZBYCZg8VAjxZYWNodHNfT3ZlclZpZXcuYXNweD9pZD04ZmE1Y2UzZS00MzdmLTRiMWItYjcxNy0yNjAyZTcxNThlNDAJVGF5YW5hIDU4ZAIGD2QWAmYPFQI8WWFjaHRzX092ZXJWaWV3LmFzcHg/aWQ9ZWU5NTFkZGEtZmFkOC00MmI5LTkwNTYtNTI0NzMxNzBkNzI5CVRheWFuYSA2NGQCBw9kFgJmDxUCPFlhY2h0c19PdmVyVmlldy5hc3B4P2lkPTNjNTA3ODU3LWU2ZGEtNDRlMC05NWFiLWYwNThkNzkzYzA5YQhJU0FSQSA1MGQCAg8WAh4EVGV4dAUJVGF5YW5hIDM3ZAIDDxYCHwEFCVRheWFuYSAzN2QCBA8PFgIeB1Zpc2libGVoZGQCBQ8WAh8BBawUPGRpdiBjbGFzcz0iYm94MSI+DQoJVGhlIFRheWFuYSAzNyBpcyBwZXJoYXBzIHRoZSBtb3N0IHN1Y2Nlc3NmdWwgc2VtaS1jdXN0b20gY3J1aXNpbmcgYm9hdCB0byBiZSBidWlsdC4gSXQgd2FzIGRlc2lnbmVkIGJ5IEJvYiBQZXJyeSBhbmQgaW50cm9kdWNlZCBpbiAxOTc1IGFzIGEgcmVzcG9uc2UgdG8gdGhlIFdlc3RzYWlsIDMyIHdoaWNoIHdlcmUgc2VsbGluZyBpbiBlbm9ybW91cyBudW1iZXJzLiBUb2RheSBsb29raW5nIGJhY2ssIHdpdGggdGhlIGJvYXQgc3RpbGwgaW4gcHJvZHVjdGlvbiB3aXRoIGEgYm9hdCBjb3VudCBvZiA1ODgsIG1vc3Qgc3RpbGwgc2FpbGluZywgYW5kIGFuIGFjdGl2ZSBhbmQgb3duZXJzIGNvbW11bml0eSwgaXRzIHZlcnkgYXBwYXJlbnQgdGhhdCBQZXJyeSBoYXMgc3VjY2VlZGVkLjxiciAvPg0KCTxiciAvPg0KCU9uZSBjb3VsZCBzYXkgdGhlIGJvYXQgd2FzIGRlc2lnbmVkIHRvIGlnbml0ZSBpbWFnaW5hdGlvbnMgb2YgdHJvcGljYWwgc3Vuc2V0cyBpbiBleG90aWMgbG9jYXRpb25zOyB0aGluayBvb2RsZXMgb2YgdGVhayBhbmQgYSBiZWF1dGlmdWwgY3VzdG9tIGludGVyaW9yLCB3cmFwcGVkIGludG8gdHJhZGl0aW9uYWwgZG91YmxlLWVuZGVyIGh1bGwgd2l0aCBhIGZ1bGwga2VlbC4gQmVuZWF0aCB0aGUgYWxsdXJpbmcgcm9tYW5jZSwgeW91JnJzcXVvO2xsIGZpbmQgYSBib2F0IHRoYXQgaXMgc29saWRseSBidWlsdCwgYW5kIGluZGVlZCBtYW55IFRheWFuYSAzN3MgY2FuIGJlIGZvdW5kIG9uIHRoZSBibHVlIHdhdGVyIGNydWlzaW5nIGNpcmN1aXQgYXJvdW5kIHRoZSB3b3JsZC48YnIgLz4NCgk8YnIgLz4NCglUYXlhbmEgMzcgaGFzIGJlZW4gY29uc3RydWN0ZWQgb2YgdGhlIGZpbmVzdCBtYXRlcmlhbHMsIHVzaW5nIHRoZSBiZXN0IHRlY2huaXF1ZXMuIFRoZXJlIGlzIG5vIGJldHRlciB5YWNodCBpbiBoZXIgc2l6ZSByYW5nZSBvbiB0aGUgbWFya2V0LiBXaXRoIGNhcmUgYW5kIHByb3BlciBtYWludGVuYW5jZSBzaGUgd2lsbCBub3Qgb25seSBwcm92ZSB0byBiZSBhbiBleGNlbGxlbnQgaW52ZXN0bWVudCwgc2hlIHdpbGwgdGFrZSB5b3UgY3J1aXNpbmcgYW55d2hlcmUgaW4gdGhlIHdvcmxkIHNhZmVseSBhbmQgY29tZm9ydGFibHkuIFRoaXMgaXMgYmVpbmcgcHJvdmVuIGFsbW9zdCBkYWlseS4gT2NlYW4gY3Jvc3NpbmdzIGJ5IFRheWFuYSAzNyZyc3F1bztzIGFyZSByb3V0aW5lLiBDaXJjdW1uYXZpZ2F0aW9ucyBoYXZlIGJlZW4gcmVwb3J0ZWQuIEJ5IHRoZSBzYW1lIHRva2VuLCBvdmVyIDUwMCBvZiB0aGVzZSB5YWNodHMgYXJlIHRoZSBwcmltYXJ5IGhvbWVzIG9mIHRoZWlyIG93bmVycy48YnIgLz4NCgkmbmJzcDs8L2Rpdj4NCjxkaXYgY2xhc3M9ImJveDMiPg0KCTxoND4NCgkJMzcgRElNRU5TSU9OUzwvaDQ+DQoJPHRhYmxlIGNsYXNzPSJ0YWJsZTAyIj4NCgkJPHRib2R5Pg0KCQkJPHRyPg0KCQkJCTx0ZCBjbGFzcz0idGFibGUwMnRkMDEiPg0KCQkJCQk8dGFibGU+DQoJCQkJCQk8dGJvZHk+DQoJCQkJCQkJPHRyPg0KCQkJCQkJCQk8dGg+DQoJCQkJCQkJCQlIdWxsIGxlbmd0aDwvdGg+DQoJCQkJCQkJCTx0ZD4NCgkJCQkJCQkJCTM2JnJzcXVvOy04JnJkcXVvOzwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCQk8dHIgY2xhc3M9InRyMDAzIj4NCgkJCQkJCQkJPHRoPg0KCQkJCQkJCQkJTC5XLkwuPC90aD4NCgkJCQkJCQkJPHRkPg0KCQkJCQkJCQkJMzEmcnNxdW87LTAmcmRxdW87JnJzcXVvOzwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCQk8dHI+DQoJCQkJCQkJCTx0aD4NCgkJCQkJCQkJCUIuIE1BWDwvdGg+DQoJCQkJCQkJCTx0ZD4NCgkJCQkJCQkJCTExJnJzcXVvOy02JnJkcXVvOzwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCQk8dHIgY2xhc3M9InRyMDAzIj4NCgkJCQkJCQkJPHRoPg0KCQkJCQkJCQkJU3RhbmRhcmQgZHJhZnQ8L3RoPg0KCQkJCQkJCQk8dGQ+DQoJCQkJCQkJCQk1JnJzcXVvOy04JnJkcXVvOzwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCQk8dHI+DQoJCQkJCQkJCTx0aD4NCgkJCQkJCQkJCUJhbGxhc3Q8L3RoPg0KCQkJCQkJCQk8dGQ+DQoJCQkJCQkJCQk4MDAwIGxiczwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCQk8dHIgY2xhc3M9InRyMDAzIj4NCgkJCQkJCQkJPHRoPg0KCQkJCQkJCQkJRGlzcGxhY2VtZW50PC90aD4NCgkJCQkJCQkJPHRkPg0KCQkJCQkJCQkJMjI1MDAgbGJzPC90ZD4NCgkJCQkJCQk8L3RyPg0KCQkJCQkJCTx0cj4NCgkJCQkJCQkJPHRoPg0KCQkJCQkJCQkJU2FpbCBhcmVhPC90aD4NCgkJCQkJCQkJPHRkPg0KCQkJCQkJCQkJNzY4IHNxLmZ0LjwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCQk8dHIgY2xhc3M9InRyMDAzIj4NCgkJCQkJCQkJPHRoPg0KCQkJCQkJCQkJQ3V0dGVyPC90aD4NCgkJCQkJCQkJPHRkPg0KCQkJCQkJCQkJODYxIHNxLmZ0LjwvdGQ+DQoJCQkJCQkJPC90cj4NCgkJCQkJCTwvdGJvZHk+DQoJCQkJCTwvdGFibGU+DQoJCQkJPC90ZD4NCgkJCQk8dGQ+DQoJCQkJCTxpbWcgYWx0PSJUYXlhbmEiIHNyYz0idXBsb2FkL2ltYWdlcy8zNy5naWYiIC8+PC90ZD4NCgkJCTwvdHI+DQoJCTwvdGJvZHk+DQoJPC90YWJsZT4NCjwvZGl2Pg0KZAIGD2QWAgIBDxYCHwACARYCAgEPZBYCAgEPDxYEHgtOYXZpZ2F0ZVVybAUkfi91cGxvYWQvRmlsZXMvMjAxMjA0MTMwMTU1NDgtLTEucGRmHwEFIFRBWUFOQTM3LVNUQU5EQVJEIFNQRUNJRklDQVRJT05TZGRk4uOBR7Clz2JvX65McUtJV7h8Cxw=" />
            </div>
            <div>
                <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A5CD8A30" />
                <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
                    value="/wEWAgKmyvjZAQL9+YC2DetfqSiQyHf3Sn1xyyFHAxZpPOio" />
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
                <div id="crumb1"><a href="index.aspx">Home</a> >> <a href="Yachts_OverView.aspx">Yachts</a> >> <asp:Literal ID="Lit_topa" runat="server"></asp:Literal></div>
                <div class="right">
                    <div class="right1">
                        <div class="title"> <asp:Literal ID="Lit_title" runat="server"></asp:Literal></div>
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
                        <div class="box1">
                            <asp:Literal ID="Lit_main" runat="server"></asp:Literal>
                            <br />
                            &nbsp;
                        </div>
                        <div class="box3">
                            <asp:Literal ID="Lit_table" runat="server"></asp:Literal>
                        </div>
                        <p class="topbuttom"><img src="images/top.gif" alt="top" /></p>
                        <!--下載開始-->
                        <div id="ctl00_ContentPlaceHolder1_divDownload" class="downloads">
                            <p><img src="images/downloads.gif" alt="&quot;&quot;" /></p>
                            <ul>
                                
                                    <asp:Literal ID="Lit_Donwloads" runat="server"></asp:Literal>
                                
                            </ul>
                        </div>
                        <!--下載結束-->
                        <!--------------------------------內容結束------------------------------------------------------>
                    </div>
                </div>
                <!--------------------------------右邊選單結束---------------------------------------------------->
            </div>
    </form>
        
</asp:Content>
