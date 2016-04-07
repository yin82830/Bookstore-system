<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderPingjia.aspx.cs" Inherits="orderPingjia" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 100%">
        <tr>
            <td align="center" style="width: 100%">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="99px">
                    <asp:ListItem>好评</asp:ListItem>
                    <asp:ListItem>中平</asp:ListItem>
                    <asp:ListItem>差评</asp:ListItem>
                    <asp:ListItem>其他</asp:ListItem>
                </asp:DropDownList>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 100%; height: 119px">
                <asp:TextBox ID="TextBox1" runat="server" Height="140px" TextMode="MultiLine" Width="387px">输入评价内容</asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" style="width: 100%">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="评价" /></td>
        </tr>
    </table>
</asp:Content>

