<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1" bordercolor="#cccccc" cellpadding="6" cellspacing="1"
        class="txt" width="99%">
        <tr>
            <td align="center" class="txt2">
                客户留言</td>
        </tr>
        <tr>
            <td class="txt2">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="height: 332px"
                    width="95%">
                    <tr>
                        <td >
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td height="25" width="18%">
                                        <font color="#ff0000">*</font>留言主题：</td>
                                    <td width="82%" align="left">
                                        <asp:TextBox ID="title" runat="server" Width="180"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title"
                                            ErrorMessage="请输入留言主题"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0" width="320">
                                            <tr>
                                                <td background="dot.gif">
                                                    <img height="1" src="dot.gif" width="4" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="25">
                                        <font color="#ff0000">*</font>姓 名：</td>
                                    <td align="left">
                                        <asp:TextBox ID="name" runat="server" Width="180"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name"
                                            ErrorMessage="请输入姓名"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0" width="320">
                                            <tr>
                                                <td background="dot.gif">
                                                    <img height="1" src="dot.gif" width="4" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="25">
                                        公司名称：</td>
                                    <td align="left">
                                        <asp:TextBox ID="compyname" runat="server" Width="180"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0" width="320">
                                            <tr>
                                                <td background="dot.gif">
                                                    <img height="1" src="dot.gif" width="4" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="25">
                                        电<strong>子</strong>邮件<span style="color: #ff0000">：</span></td>
                                    <td style="color: #ff0000" align="left">
                                        <asp:TextBox ID="email" runat="server" Width="180"></asp:TextBox></td>
                                </tr>
                                <tr style="color: #ff0000">
                                    <td colspan="2" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0" width="320">
                                            <tr>
                                                <td background="dot.gif">
                                                    <img height="1" src="dot.gif" width="4" /></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="color: #ff0000">
                                    <td height="25">
                                        网 址：</td>
                                    <td align="left">
                                        <asp:TextBox ID="htp" runat="server" Width="180"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td height="25" valign="top" width="18%">
                                        <font color="#ff0000">*</font>留言内容：</td>
                                    <td width="82%" align="left">
                                        <asp:TextBox ID="neirong" runat="server" Height="100" TextMode="MultiLine" Width="300"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="neirong"
                                            ErrorMessage="请输入内容"></asp:RequiredFieldValidator></td>
                                </tr>
                            </table>
                            <br />
                            <asp:Button ID="fabu" runat="server" CssClass="ttbut" OnClick="fabu_Click" Text="发布"
                                Width="54px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tbody>
                                    <tr>
                                        <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 961px">
                                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                                                Width="100%">
                                                <ItemTemplate>
                                                    <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 661px">
                                                        <tr>
                                                            <td align="left" style="width: 448px">
                                                             
                                                                  标题：  <%#Eval("title")%>
                                                               
                                                            </td>
                                                            <td align="center" style="width: 140px">
                                                                <asp:Label ID="Label2" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'
                                                                    Width="193px"></asp:Label>时间：<%#Eval("addTime")%>
                                                            </td>
                                                        </tr>
                                                          <tr>
                                                              <td align="left" colspan="2" style="height: 99px">
                                                                
                                                                  <hr style="width: 803px" />
                                                                 留言内容：<%#Eval("neirong")%></td>
                                                        </tr>   <tr>
                                                              <td align="left" colspan="2" style="height: 99px">
                                                                
                                                                  <hr />
                                                                 留言回复：<%#Eval("Huifu")%></td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                            </asp:DataList></td>
                                    </tr>
                                    <tr>
                                        <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 961px;
                                            height: 38px">
                                            共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
                                            当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                                            <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                                            &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                            <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                                            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

