<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newgoods.aspx.cs"   MasterPageFile="~/MasterPage.master" Inherits="MemberManage_NewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 100%">
            <tr>
                <td style="width: 718px">
                    <asp:DataList ID="dlnet" runat="server" RepeatColumns="3" ShowFooter="False" ShowHeader="False"
                        Width="100%">
                        <ItemTemplate>
                            <table style="width: 279px; height: 110px">
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
                <td style="width: 718px; height: 18px;">
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
