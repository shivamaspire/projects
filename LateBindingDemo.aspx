<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LateBindingsDemo.aspx.cs"
    Inherits="LateBindingsDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" style="width: 70%; height: 500px" border="1">
            <tr style="height: 10%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Label ID="lblHeader" runat="server" Text="LateBinding Demo" Font-Bold="True"
                        Font-Size="24px" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr style="height: 10%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Label ID="lblName" runat="server" Text="Select Name: " ForeColor="Blue"></asp:Label>
                    &nbsp;&nbsp; &nbsp;
                    <asp:DropDownList ID="drpName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpName_SelectedIndexChanged">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lnbAll" runat="server" Font-Bold="True" Font-Size="18pt" OnClick="lnbAll_Click">All</asp:LinkButton>
                </td>
            </tr>
            <tr style="height: 80%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:DataGrid ID="dgLogin" runat="server" BackColor="White" BorderColor="#E7E7FF"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="100%" Width="100%"
                        AutoGenerateColumns="False" OnCancelCommand="dgLogin_CancelCommand" OnDeleteCommand="dgLogin_DeleteCommand"
                        OnEditCommand="dgLogin_EditCommand" OnUpdateCommand="dgLogin_UpdateCommand">
                        <AlternatingItemStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" ID="txtName" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblName" Text='<%# DataBinder.Eval(Container, "DataItem.name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Password">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" ID="txtPasswprd" Text='<%# DataBinder.Eval(Container, "DataItem.Password") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblPassword" Text='<%# DataBinder.Eval(Container, "DataItem.Password") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Con-Password">
                                <EditItemTemplate>
                                    <asp:TextBox runat="server" ID="txtCPassword" Text='<%# DataBinder.Eval(Container, "DataItem.CPassword") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblCPassword" Text='<%# DataBinder.Eval(Container, "DataItem.CPassword") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
                            <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" Mode="NumericPages" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:DataGrid>
                </td>
            </tr>
            <tr style="height: 10%">
                <td style="width: 100%; text-align: center; vertical-align: middle">
                    <asp:Label ID="lblAns" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
