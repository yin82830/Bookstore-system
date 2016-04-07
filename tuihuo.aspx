<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tuihuo.aspx.cs" Inherits="tuihuo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" style="width: 100%">
                退货流程</td>
        </tr>
        <tr>
            <td align="left" style="width: 100%">
                <p>
                    <span style="color: rgb(0,0,0)">一、联系我们的客服 </span>
                </p>
                <p>
                    如果您购买的商品有任何质量问题或使用疑问，都请您在第一时间联系我们的客服：4008-708-708。</p>
                <p>
                    <br />
                </p>
                <p>
                    <span style="color: rgb(0,0,0)">二、开具检测报告 </span>
                </p>
                <p>
                    家电商品及配件自您收到商品之日起15日内，如出现国家三包所规定的质量问题，请您与我们的销售代表或客服人员联系，经客服确认后，联系厂家的售后部门办理检测报告。</p>
                <p>
                    开具检测报告说明：因商品本身质量问题需要送检，在您送检过程中所引起的相关费用我们均不承担。</p>
                <p>
                    <br />
                </p>
                <p>
                    <span style="color: rgb(0,0,0)">三、商品寄回 </span>
                </p>
                <p>
                    如检测报告确认属于质量问题，请在检测报告有效期内将商品的外包装、内带附件、保修卡、说明书、发票及检测报告单随同商品一起寄回，寄回地址即为您购买产品时的发货公司地址。否则，即视为您放弃退货的权利，我们也将无法实现退货的承诺。</p>
                <p>
                    <br />
                </p>
                <p>
                    <span style="color: rgb(0,0,0)">退货说明： </span>
                </p>
                <p>
                    <strong></strong>1、退回要求：凡是配件需要办理退货手续，请您务必将配件连同外包装一起寄回，保证商品的完整，包括原来的包装物、用户手册，和其他由厂商提供的所有附件，并保证产品未受污损。如果商品任何一部分丢失或损坏，则在您补全所有附件之前，我们无法提供退货服务。如果商品主机完好无损，附件丢失，并符合退货条件，需扣除所丢失或损坏附件的金额后办理退款。</p>
                <p>
                    <strong></strong>2、退货邮费：因当地没有官方售后维修中心而寄回我们售后服务中心代为检测的邮费，先由您来承担，若商品确实有质量问题，则相应的物流费用会以等额现金劵的形式返还到您的账户当中（需要您提供相关的快递面单或发票），并且更换后的寄送费用也由我们承担。</p>
                <p align="left">
                    3、退货延误：由于商品不全而造成的退货退款延误，我们不承担责任。</p>
                <p>
                    4、发票退回：为保证您顺利办理退款，退货同时，请务必将开具的发票一同退回。</p>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100%">
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="申请退货" /></td>
        </tr>
    </table>
</asp:Content>

