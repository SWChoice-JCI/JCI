<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DealerCode" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="DealerCode" HeaderText="DealerCode" ReadOnly="True" SortExpression="DealerCode" />
                <asp:BoundField DataField="DealerName" HeaderText="DealerName" SortExpression="DealerName" />
                <asp:BoundField DataField="DealerDBA" HeaderText="DealerDBA" SortExpression="DealerDBA" />
                <asp:BoundField DataField="DealerAdd1" HeaderText="DealerAdd1" SortExpression="DealerAdd1" />
                <asp:BoundField DataField="DealerCity" HeaderText="DealerCity" SortExpression="DealerCity" />
                <asp:BoundField DataField="DealerState" HeaderText="DealerState" SortExpression="DealerState" />
                <asp:BoundField DataField="DealerZipCode" HeaderText="DealerZipCode" SortExpression="DealerZipCode" />
                <asp:BoundField DataField="VehicleStatus" HeaderText="VehicleStatus" SortExpression="VehicleStatus" />
                <asp:BoundField DataField="DealerType" HeaderText="DealerType" SortExpression="DealerType" />
                <asp:BoundField DataField="DefaultPort" HeaderText="DefaultPort" SortExpression="DefaultPort" />
                <asp:BoundField DataField="DealerTel" HeaderText="DealerTel" SortExpression="DealerTel" />
                <asp:BoundField DataField="DealerRegion" HeaderText="DealerRegion" SortExpression="DealerRegion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataRepositoryConnectionString %>" SelectCommand="Select * From Kma.DealerMaster"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
