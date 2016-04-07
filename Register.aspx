<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs"   MasterPageFile="~/MasterPage.master" Inherits="MemberManage_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <asp:Panel ID="Panel1" runat="server" Height="638px" Width="810px" BorderColor="White" BorderWidth="1px">
     <table cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="text-align: center; height: 487px;">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="12pt" ForeColor="Red" Text="新会员注册"
                        Width="117px"></asp:Label>
                    <table align="center" cellpadding="0" cellspacing="0" style="width: 775px" >
                        <tr>
                            <td style="width: 89px; text-align: center" rowspan="11">
                            </td>
                            <td style="width: 94px; text-align: center; height: 31px;">
                    <asp:Label ID="labLoginName" runat="server" Text="会员登录名" Font-Size="12pt" Width="100px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 31px;">
                    <asp:TextBox ID="txtLoginName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                    </td>
                            <td style="width: 149px; height: 31px;">
                                &nbsp;<asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName" Font-Size="12pt" Height="1px" Width="117px">会员登录名不能为空</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 94px; text-align: center; height: 24px;">
                    <asp:Label ID="labSex" runat="server" Text="性别" Font-Size="12pt" Width="67px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 24px;">
                    <asp:DropDownList ID="ddlSex" runat="server" Width="127px" Font-Size="12pt">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
                            <td style="width: 149px; height: 24px;">
                            </td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labPwd" runat="server" Text="密码" Font-Size="12pt" Width="74px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtPwd" runat="server"  TextMode="Password" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px">
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Font-Size="12pt" Width="104px">会员密码不能为空</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labTName" runat="server" Text="真实姓名" Font-Size="12pt" Width="83px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtTName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px">
                            </td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labQuePwd" runat="server" Text="密码问题" Font-Size="12pt" Width="90px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                     <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px">
                    <asp:RequiredFieldValidator ID="rfvQuePwd" runat="server" ControlToValidate="txtQuePwd" Font-Size="12pt" Width="136px">您应该输入密码问题，以防造成不必要的损失</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labAnsPwd" runat="server" Text="密码提示答案" Font-Size="12pt" Width="106px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px">
                    <asp:RequiredFieldValidator ID="rfvAnsPwd" runat="server" ControlToValidate="txtAnsPwd" Font-Size="12pt" Width="135px">您应该输入密码问题的提示答案，以防造成不必要的损失</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center; height: 23px;">
                    <asp:Label ID="labTel" runat="server" Text="电话" Font-Size="12pt" Width="70px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 23px;">
                    <asp:TextBox ID="txtTel" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px; height: 23px;">
                            </td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labEmail" runat="server" Text="E-mail地址" Font-Size="12pt" Width="88px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                            <td style="width: 149px">
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="12pt" Width="132px">您输入的E-mail地址格式不正确，请重新输入</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="width: 94px; text-align: center; height: 24px;">
                    <asp:Label ID="Label1" runat="server" Text="所在城市" Font-Size="12pt" Width="71px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 24px;">
                               <asp:TextBox ID="ddlCity" runat="server" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px; height: 24px;">
                    </td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center;">
                    <asp:Label ID="labAddress" runat="server" Text="住址" Font-Size="12pt" Width="67px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px">
                    </td>
                        </tr>
                         <tr>
                            <td style="width: 94px; text-align: center; height: 23px;">
        <asp:Label ID="labPostCode" runat="server" Text="邮编" Font-Size="12pt" Width="60px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 23px;">
                    <asp:TextBox ID="txtPostCode" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox></td>
                            <td style="width: 149px; height: 23px;">
                    <asp:RegularExpressionValidator ID="revPostCode" runat="server" ControlToValidate="txtPostCode" ValidationExpression="\d{6}" Font-Size="12pt" Width="134px">您的邮编输入有误</asp:RegularExpressionValidator></td>
                        </tr>
                         <tr>
                             <td style="text-align: center" colspan="2" rowspan="1">
                             </td>
                            <td style="width: 169px; text-align: left; height: 22px;">
                                &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" Font-Size="12pt" />
                                &nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancel" runat="server" Text="重置" OnClick="btnCancel_Click" Font-Size="12pt" CausesValidation="False" /></td>
                            <td style="width: 149px;" rowspan="1">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
 

</asp:Content>
