<%@ Page Title="" Language="C#" MasterPageFile="~/Yacht.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="yacht.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--遮罩-->
        <div class="bannermasks">
            <img src="images/banner00_masks.png" alt="&quot;&quot;" />
        </div>
        <!--遮罩結束-->
    <form name="form1" method="post" action="index.aspx" id="form1">
            <div>
                <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
                    value="/wEPDwULLTE2ODUyNzM1NTIPZBYCAgMPZBYGAgEPFgIeC18hSXRlbUNvdW50AgUWCgIBD2QWAmYPFQcABl9ibGFuayB1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMTA1OTQ5LmpwZwZUQVlBTkECMzcTU1BFQ0lGSUNBVElPTiBTSEVFVAEwZAICD2QWAmYPFQcABl9ibGFuayB1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMTA1OTA5LmpwZwZUQVlBTkECNTQTU1BFQ0lGSUNBVElPTiBTSEVFVAExZAIDD2QWAmYPFQcABl9ibGFuayB1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMTA1NTA2LmpwZwZUQVlBTkECNDgTU1BFQ0lGSUNBVElPTiBTSEVFVAEwZAIED2QWAmYPFQcABl9ibGFuayB1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMTEwMzU2LmpwZwZUQVlBTkECNTgTU1BFQ0lGSUNBVElPTiBTSEVFVAEwZAIFD2QWAmYPFQcABl9ibGFuayB1cGxvYWQvSW1hZ2VzLzIwMTIwNDAyMTEwMzI5LmpwZwZUQVlBTkECNjQTU1BFQ0lGSUNBVElPTiBTSEVFVAEwZAIDDxYCHwACBRYKAgEPZBYCZg8VAiF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQwMjEwNTk0OS5qcGcbVEFZQU5BMzdTUEVDSUZJQ0FUSU9OIFNIRUVUZAICD2QWAmYPFQIhdXBsb2FkL0ltYWdlcy9zMjAxMjA0MDIxMDU5MDkuanBnG1RBWUFOQTU0U1BFQ0lGSUNBVElPTiBTSEVFVGQCAw9kFgJmDxUCIXVwbG9hZC9JbWFnZXMvczIwMTIwNDAyMTA1NTA2LmpwZxtUQVlBTkE0OFNQRUNJRklDQVRJT04gU0hFRVRkAgQPZBYCZg8VAiF1cGxvYWQvSW1hZ2VzL3MyMDEyMDQwMjExMDM1Ni5qcGcbVEFZQU5BNThTUEVDSUZJQ0FUSU9OIFNIRUVUZAIFD2QWAmYPFQIhdXBsb2FkL0ltYWdlcy9zMjAxMjA0MDIxMTAzMjkuanBnG1RBWUFOQTY0U1BFQ0lGSUNBVElPTiBTSEVFVGQCBQ8WAh8AAgMWBgIBD2QWBAIBDw8WAh4ISW1hZ2VVcmwFIXVwbG9hZC9JbWFnZXMvczIwMTkxMTE4MDk1ODM3LmpwZ2RkAgIPFQQKMjAxOS8xMS8xOCQ2NzI1MWNiOC0yMDQ4LTQ2YzAtOWVhYy01ZDg2N2FkOWNjMzg0VGF5YW5hIDU0IFN0b2NrIEJvYXQgZm9yIHNhbGUgd2l0aCAgYSBzcGVjaWFsIHByaWNlIAEwZAICD2QWBAIBDw8WAh8BBSF1cGxvYWQvSW1hZ2VzL3MyMDE5MDIxMzA0MjQxMC5qcGdkZAICDxUECTIwMTkvNi8xOCQwMjk3MDdiMy0wZDUyLTRlYmYtYTI1MS0zNDI1ODMxNDQzY2QzTmV3IFRBWUFOQSA1NGZ0ICB1bmRlciBjb25zdHJ1Y3Rpb24gKGtlZXAgdXBkYXRpbmcpATBkAgMPZBYEAgEPDxYCHwEFIXVwbG9hZC9JbWFnZXMvczIwMTgxMjIyMDg0OTE1LmpwZ2RkAgIPFQQKMjAxOC8xMi8yMiQxMmY4YzNlMi1mMmZhLTQwNTQtOGQ3Mi1kOGUxZDI2NzRkYzkPTWVycnkgQ2hyaXN0bWFzATBkZCdKx/FCxbk9iOIMg1yA5eR4Hgt+" />
            </div>
            <div>
                <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="90059987" />
            </div>
            <!--------------------------------換圖開始---------------------------------------------------->
            <div id="abgne-block-20110111">
                <div class="bd">
                    <div class="banner">
                        <ul>
                            <asp:Literal ID="Lit_TopPic" runat="server"></asp:Literal>
                        </ul>
                        <!--小圖開始-->
                        <div class="bannerimg title" style="display: none">
                            <ul>
                                <li>
                                    <div>
                                        <p class="bannerimg_p">
                                            <img src='upload/Images/s20120402105949.jpg' alt='TAYANA37SPECIFICATION SHEET' />
                                        </p>
                                    </div>
                                </li>

                                <li>
                                    <div>
                                        <p class="bannerimg_p">
                                            <img src='upload/Images/s20120402105909.jpg' alt='TAYANA54SPECIFICATION SHEET' />
                                        </p>
                                    </div>
                                </li>

                                <li>
                                    <div>
                                        <p class="bannerimg_p">
                                            <img src='upload/Images/s20120402105506.jpg' alt='TAYANA48SPECIFICATION SHEET' />
                                        </p>
                                    </div>
                                </li>

                                <li>
                                    <div>
                                        <p class="bannerimg_p">
                                            <img src='upload/Images/s20120402110356.jpg' alt='TAYANA58SPECIFICATION SHEET' />
                                        </p>
                                    </div>
                                </li>

                                <li>
                                    <div>
                                        <p class="bannerimg_p">
                                            <img src='upload/Images/s20120402110329.jpg' alt='TAYANA64SPECIFICATION SHEET' />
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--小圖結束-->
                    </div>
                </div>
            </div>
            <!--------------------------------換圖結束---------------------------------------------------->
            <!--------------------------------最新消息---------------------------------------------------->
            <div class="news">
                <div class="newstitle">
                    <p class="newstitlep1">
                        <img src="images/news.gif" alt="news" />
                    </p>
                    <p class="newstitlep2">
                        <a href="new_list.aspx">More>></a>
                    </p>
                </div>
                <ul>
                    <!--TOP第一則最新消息-->
                    <!-- 這邊要用literal 去做-->
                    <asp:Literal ID="Lit_Top1" runat="server"></asp:Literal>
                </ul>
            </div>
            <!--------------------------------最新消息結束---------------------------------------------------->
        </form>
</asp:Content>
