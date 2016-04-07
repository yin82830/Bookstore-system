<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPwd.aspx.cs"   MasterPageFile="~/MasterPage.master" Inherits="MemberManage_ShowPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 809px; background-image: url(../Image/例图/购物信息查询.jpg); height: 355px;" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="width: 529px; vertical-align: top; height: 355px; text-align: center;">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="12pt" ForeColor="Red" Text="找到密码"
                        Width="137px"></asp:Label><br />
                    <br />
                    <table align="center" border="1" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 31px; text-align: center; height: 29px;">
                            </td>
                            <td style="width: 62px; text-align: center; height: 29px;">
                    <asp:Label ID="labMemberID" runat="server" Text="会员ID：" Font-Size="12pt" Width="86px"></asp:Label></td>
                            <td style="width: 166px; text-align: center; height: 29px;">
                                <asp:Label ID="labMName" runat="server" Font-Size="12pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 31px; text-align: center">
                            </td>
                            <td style="width: 62px; text-align: center;">
                    <asp:Label ID="labPwd" runat="server" Text="密  码：" Font-Size="12pt" Width="83px"></asp:Label></td>
                            <td style="width: 166px; text-align: center;">
                                <asp:Label ID="labMPwd" runat="server" Font-Size="12pt"></asp:Label></td>
                        </tr>
                    </table>
                    <br />
                    </td>
            </tr>
        </table>
</asp:Content>