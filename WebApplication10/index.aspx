<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication10.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(function () {
            $('.txtrdt').change(function () {
                if (!confirm("this is me")) {
                    $(this).val($(this).find('option:first').val()); // Reset to first option
                    event.preventDefault(); // Prevent default change event behavior
                    event.stopPropagation(); // Stop event propagation 
                    return false; 
                    
                }
                return false;
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddl" CssClass="txtrdt" runat="server" OnSelectedIndexChanged="ddl_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="0" Text="Select"></asp:ListItem>
                <asp:ListItem Value="1" Text="test1"></asp:ListItem>
                <asp:ListItem Value="2" Text="test2"></asp:ListItem>
                <asp:ListItem Value="3" Text="test3"></asp:ListItem>
                <asp:ListItem Value="3" Text="test3"></asp:ListItem>
                <asp:ListItem Value="5" Text="tes"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
