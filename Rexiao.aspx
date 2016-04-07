<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rexiao.aspx.cs"   MasterPageFile="~/MasterPage.master" Inherits="MemberManage_RexiaoBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
            <table style="width: 652px">
                <tr>
                    <td style="width: 664px">
                        <asp:DataList ID="dlnet" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                            Width="740px">
                            <ItemTemplate>
                                <table style="width: 289px; height: 110px">
                                    <tr>
                                        <td style="width: 104px">
                                            <a href='ShowInfo.aspx?GoodsID=<%#Eval("GoodsID") %>'>
                                                <img border="0" src='uploads/<%#Eval("GoodsPhoto") %>' style="width: 106px; height: 101px" /></a>
                                        </td>
                                        <td align="left" valign="top">
                                            <a href='ShowInfo.aspx?GoodsID=<%#Eval("GoodsID") %>'>
                                                <%#Eval("GoodsName") %>
                                            </a>
                                            <br />
                                           
                                             价格：
                                        <%#Eval("GoodsPrice") %>元
                                         
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList></td>
                </tr>
                <tr>
                    <td style="width: 664px">
                        共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; 当前第【<asp:Label
                            ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                        <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                        &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                        &nbsp; &nbsp;
                        <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                        &nbsp;&nbsp;
                        <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
 

</asp:Content>
