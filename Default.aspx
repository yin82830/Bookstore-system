<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>


<%@ Register Src="Control/MemberLogin.ascx" TagName="MemberLogin" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; border:1px soid red;">
        <tr>
            <td colspan="2">
                <table align="center" cellpadding="0" cellspacing="0"
                    style="font-size: 12pt; width: 895px; height: 65px">
                    <tr>
                  
                        <td align="left" colspan="2" style="vertical-align: top; width:1100px; text-align: center; height:25px; background-image: url(images/main_10.jpg); color: #ffffff;"
                            valign="top">
                            最新商品展示</td>
                    </tr>
                    <tr>
                       
                        <td align="left" colspan="2" style="vertical-align: top;  text-align: center"
                            valign="top">
                            <table style="width: 652px">
                                <tr>
                                    <td style="width: 664px">
                                        <asp:DataList ID="dlNewGoods" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                                            Width="1100px">
                                            <ItemTemplate>
                                                <table style="width: 227px; height: 110px">
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
                                                            <%#Eval("GoodsPrice") %>
                                                            元
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2" style="vertical-align: top; width:1200px; height:25px; text-align: center; background-image: url(images/main_10.jpg); color: #ffffff;"
                            valign="top">
                            热门商品展示</td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2" style="vertical-align: top; width: 868px; text-align: center"
                            valign="top">
                            <asp:DataList ID="hotGoods" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                                            Width="1100px">
                                <ItemTemplate>
                                    <table style="width: 227px; height: 110px">
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
                                                <%#Eval("GoodsPrice") %>
                                                元
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2" style="vertical-align: top; width: 868px; height:25px; text-align: center; background-image: url(images/main_10.jpg); color: #ffffff;"
                            valign="top">
                            推荐商品展示</td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2" style="vertical-align: top; width: 868px; text-align: center"
                            valign="top">
                            <asp:DataList ID="dltuijianGoods" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                                            Width="1100px">
                                <ItemTemplate>
                                    <table style="width: 227px; height: 110px">
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
                                                <%#Eval("GoodsPrice") %>
                                                元
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


