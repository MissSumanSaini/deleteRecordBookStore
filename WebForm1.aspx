<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="deleteRecordBookStore.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                     <td> ProductName:</td>
                     <td> <asp:TextBox id="txtProudtName" runat ="server"></asp:TextBox></td>
                </tr>

                  <tr>
                     <td> ProductPrice:</td>
                     <td> <asp:TextBox id="TxtProductPrice" runat ="server"></asp:TextBox></td>
                </tr>

                  <tr>
                     <td> </td>
                    <td><asp:button ID="btnSave" runat="server" text="Save" OnClick ="btnSave_Click" /> </td>
                </tr>

                  <tr>
                     <td> </td>
                    <td> <asp:GridView ID="grd" runat ="server" OnRowCommand="grd_RowCommand1" AutoGenerateColumns="false" > 
                        <Columns>
                        <asp:TemplateField HeaderText ="ProuctId">
                            <ItemTemplate>
                                <%#Eval("ProductId") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                      <asp:TemplateField HeaderText ="ProuctName">
                            <ItemTemplate>
                                <%#Eval("ProductName") %>
                            </ItemTemplate>
                           </asp:TemplateField>

                      <asp:TemplateField HeaderText ="ProductPrice">
                            <ItemTemplate>
                                <%#Eval("ProductPrice") %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField >
                            <ItemTemplate>
                                <asp:LinkButton ID="BtmDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("ProductId") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                           
                        </Columns> 
                         </asp:GridView></td>
                









            </table>

        </div>
    </form>
</body>
</html>
