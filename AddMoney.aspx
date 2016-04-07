<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMoney.aspx.cs" Inherits="MemberManage_AddMoney" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" cellpadding="0" cellspacing="0" style="height: 

198px; width: 810px;">
            <tr>
                <td style="height: 487px; text-align: center" 

valign="top">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-

Size="12pt" ForeColor="Red" Text="会员充值"
                        Width="65px"></asp:Label>
                    <table align="center" cellpadding="0" 

cellspacing="0">
                        <tr>
                            <td rowspan="1" style="width: 89px; height: 

25px; text-align: center">
                            </td>
                            <td style="width: 94px; height: 25px; text-

align: center">
                                <asp:Label ID="labLoginName" 

runat="server" Font-Size="12pt" Text="充值金额" 

Width="66px"></asp:Label></td>
                            <td style="width: 169px; height: 25px; text-

align: left">
                                <asp:TextBox ID="txtLoginName" 

runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                            </td>
                            <td style="width: 149px; height: 25px">
                                &nbsp;<asp:RequiredFieldValidator 

ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName"
                                    Font-Size="12pt" Height="1px" 

Width="117px">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td colspan="2" rowspan="1" style="text-

align: center">
                            </td>
                            <td style="width: 169px; height: 22px; text-

align: left">
                                &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnRegister" 

runat="server" Font-Size="12pt" OnClick="btnRegister_Click"
                                    Text="充值" />
                                &nbsp;&nbsp; &nbsp;<asp:Button 

ID="btnCancel" runat="server" CausesValidation="False"
                                    Font-Size="12pt" 

OnClick="btnCancel_Click" Text="重置" /></td>
                            <td rowspan="1" style="width: 149px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</asp:Content>
