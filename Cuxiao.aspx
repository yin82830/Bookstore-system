<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/MasterPage.master" CodeFile="Cuxiao.aspx.cs" Inherits="MemberManage_CuxiaoBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div>
        <table style="width: 652px">
            <tr>
                <td style="width: 664px">
                    <asp:DataList ID="dlnet" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                        Width="740px">
                        <ItemTemplate>
                            <table style="width: 295px; height: 110px">
                                <tr>
                                    <td style="width: 104px">
                                        <a href='ShowInfo.aspx?GoodsID=<%#Eval("GoodsID") %>'>
                                            <img border="0" src='uploads/<%#Eval("GoodsPhoto") %>' style="width: 106px; height: 101px" /></a>
                                    </td>
                                    <td align="left" valign="top">
                                        <a href='ShowInfo.aspx?GoodsID=<%#Eval("GoodsID") %>'>
                                            <%#Eval("GoodsName") %>
                                        </a>
                                     
                                 �۸�
                                        <%#Eval("GoodsPrice") %>Ԫ
                                       
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList></td>
            </tr>
            <tr>
                <td style="width: 664px">
                    ����<asp:Label ID="lblSumPage" runat="server"></asp:Label>��ҳ &nbsp; ��ǰ�ڡ�<asp:Label
                        ID="lblCurrentPage" runat="server"></asp:Label>��ҳ&nbsp;
                    <asp:HyperLink ID="hyfirst" runat="server">��ҳ</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">��һҳ</asp:HyperLink>
                    &nbsp; &nbsp;
                    <asp:HyperLink ID="lnkNext" runat="server">��һҳ</asp:HyperLink>
                    &nbsp;&nbsp;
                    <asp:HyperLink ID="hylastpage" runat="server">βҳ</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
</asp:Content>
