<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccReg.aspx.cs"  MasterPageFile="~/MasterPage.master"  Inherits="MemberManage_SuccReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 529px; height: 354px; background-image: url(../Image/例图/注册成功页面.jpg); font-size: 12pt;" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="text-align: center; width: 529px; height: 354px;" rowspan="3" colspan="2">
                    <br /><br /><br /><table cellpadding="0" cellspacing="0"align="center" style="font-size: 12pt; width: 251px;">
                    <tr>
                            <td style="width: 80px; height: 15px; font-size: 12pt;">
                    会员ID：</td>
                            <td style="width: 76px; height: 15px;">
                                <asp:Label ID="labMID" runat="server" Font-Size="12pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 80px; height: 15px; font-size: 12pt;">
                    会员名：</td>
                            <td style="width: 76px; height: 15px;">
                                <asp:Label ID="labMName" runat="server" Font-Size="12pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 80px; font-size: 12pt;">
                    密 码：</td>
                            <td style="width: 76px">
                                <asp:Label ID="labMPwd" runat="server" Font-Size="12pt"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
        </table>
    </div>
</asp:Content>