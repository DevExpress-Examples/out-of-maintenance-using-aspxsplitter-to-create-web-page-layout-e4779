<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default2.aspx.vb" Inherits="Default2"
    MasterPageFile="~/MasterPage.master" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="content" runat="server" ContentPlaceHolderID="gridPlaceHolder">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        KeyFieldName="OrderID" Width="100%" ClientInstanceName="grid">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="OrderID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="EmployeeID" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="OrderDate" VisibleIndex="3">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="RequiredDate" VisibleIndex="4">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="ShippedDate" VisibleIndex="5">
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="ShipVia" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Freight" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipName" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipAddress" VisibleIndex="9">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipCity" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipRegion" VisibleIndex="11">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipPostalCode" VisibleIndex="12">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ShipCountry" VisibleIndex="13">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings VerticalScrollableHeight="500" />
        <SettingsPager Mode="EndlessPaging" PageSize="50" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
        SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
</asp:Content>