<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuildAndPricePage.aspx.cs" Inherits="_1913864_MohammedWaseq_Midterm.BuildAndPricePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Hondi Motors Ltd. </title>
    <style type="text/css">
        .auto_style1 {
            width: 733px;
            height: 581px;
        }

        .auto_style2 {
            text-align: center;
            color: blue;
        }

        .auto_style3 {
            width: 450px;
        }

        .auto_style4 {
            height: 120px;
        }

        .auto_style5 {
            border-radius: 45px;
        }

        .auto_style6 {
            width:385px;
        }

        .auto_style7 {
            width:250px;
        }

        .auto_style8 {
            width:116px;
        }

        .auto_style9 {
            width:100px;
        }

        .auto_style10 {
            margin-top: 0px;
            border-radius:50px;
        }
        .auto_style11{
            margin-top: 0px;
            border-radius:50px;
        }
        .auto_style12{
            width: 417px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto_style1">
        <div>
            <h1 class="auto_style2">Hondi Build & Price</h1>
        </div>
        <hr class="auto_style12" />
        <br />
        <table class="auto_style3">
            <tr style="vertical-align: top;">
                <td class="auto_class4">

                    <asp:Panel ID="HondiPanel" runat="server" CssClass="auto_style5" GroupingText ="Car Information" BackColor="#ff99ff" Height="100%" Width="500px">
                        <br />
                        <table class="auto_style6">
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblCity" runat="server" AssociatedControlID="txtCity" Text="Your City: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="auto_style9" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblZipCode" runat="server" AssociatedControlID="txtZipCode" Text="Zip Code: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="auto_style9" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblCarModel" runat="server" Text="Select Car Model: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:DropDownList ID="cboCarModel" runat="server" CssClass="auto_style9" AutoPostBack="true" OnSelectedIndexChanged="cboCarModel_SelectedIndexChanged" Width="200px">
                                        <asp:ListItem>Select a Car Model</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblInteriorColor" runat="server" Text="Interior Color: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:ListBox ID="lstInteriorColor" runat="server" CssClass="auto_style9" AutoPostBack="true" Width="200px"></asp:ListBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblAccessories" runat="server" Text="Accessories: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:CheckBoxList ID="chkBoxAccessories" runat="server" AutoPostBack="true"></asp:CheckBoxList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblWarranty" runat="server" Text="Warranty: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:RadioButtonList ID="radLstWarranty" runat="server" AutoPostBack="true"></asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="lblContact" runat="server" Text="Dealer Contact you by Phone?"></asp:Label>
                                </td>
                                <td class="auto-style9">
                                    <asp:CheckBox ID="chkBoxContact" runat="server" AutoPostBack="True" OnCheckedChanged="chkBoxContact_CheckChanged" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto_style7">
                                    <asp:Label ID="lblPhone" runat="server" AssociatedControlID="txtPhone" Text="Phone Number: "></asp:Label>
                                </td>
                                <td class="auto_style9">
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="auto_style9" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </asp:Panel>
                </td>
                <td class="auto_style8">
                <asp:Panel ID="panPriceResume" runat="server" GroupingText="Price Resume" Height="256px" Width="268px" BackColor="#ff99ff" CssClass="auto_style10">
                    <asp:Literal ID="litPriceResume" runat="server"></asp:Literal>
                    <asp:Button ID="btnConclude" runat="server" OnClick="btnConclude_Click" Text="Conclude" Height="35px" style="margin-top: 8px" Width="231px" />
                </asp:Panel>
                <br />
                <asp:Panel ID="panFinalInfo" runat="server" GroupingText="Final Information" BackColor="#ff99ff" CssClass="auto_style11">
                    <asp:Literal ID="litFinalInfo" runat="server"></asp:Literal>
                </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>