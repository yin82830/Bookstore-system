<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master"  CodeFile="AnsQuestion.aspx.cs" Inherits="MemberManage_AnsQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 895px; height: 355px; background-image: url(../Image/例图/购物信息查询.jpg);" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 529px; vertical-align: top; height: 355px; text-align: center;">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="12pt" ForeColor="Red" Text="找回密码"
                        Width="69px"></asp:Label><br />
                    <br />
                    <table align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#66ccff">
                        <tr>
                            <td style="width: 42px; text-align: center">
                            </td>
                            <td style="width: 132px; text-align: center;">
                    <asp:Label ID="labQuePwd" runat="server" Text="密码问题：" Width="90px" Font-Size="12pt"></asp:Label></td>
                            <td style="width: 171px; text-align: center;">
                    <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="12pt" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 42px; text-align: center">
                            </td>
                            <td style="width: 132px; text-align: center;">
                    <asp:Label ID="labAnsPwd" runat="server" EnableViewState="False" Text="密码提示答案：" Font-Size="12pt" Width="118px"></asp:Label></td>
                            <td style="width: 171px; text-align: center;">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="12pt"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="btnSure" runat="server" Height="22px" Text="确定" Width="43px" OnClick="btnSure_Click" Font-Size="12pt" /></td>
            </tr>
        </table>

 

</asp:Content>
