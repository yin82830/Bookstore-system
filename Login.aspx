<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<%@ Register Src="Control/MemberLogin.ascx" TagName="MemberLogin" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%"  >
        <tr>
            <td align="center" style="width: 183px">
                &nbsp;</td>
            <td align="center" style="width: 100px">
               
                <uc1:MemberLogin ID="MemberLogin1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

