<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script type="text/javascript">
		function Grid_ContextMenu(s, e) {
			var cellInfo = GetCellInfo(s, ASPxClientUtils.GetEventSource(e.htmlEvent));
			if(!cellInfo) return;
			var args = cellInfo.split("_");
			var visibleIndex = parseInt(args[0]);
			var fieldName = s.cpDataColumnMap[parseInt(args[1])];
			alert("VisibleIndex = " + visibleIndex + "\nFieldName = " + fieldName);
		}
		function GetCellInfo(grid, element) {
			var gridMainElement = grid.GetMainElement();
			while(element && element !== gridMainElement && element.tagName !== "BODY") {
				var cellInfo = element.getAttribute("data-CI");
				if(cellInfo) 
					return cellInfo;
				element = element.parentNode;
			}
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">

		<dx:ASPxGridView ID="Grid" runat="server" DataSourceID="GridDataSource" 
			OnHtmlDataCellPrepared="Grid_HtmlDataCellPrepared" OnCustomJSProperties="Grid_CustomJSProperties">
			<Columns>
				<dx:GridViewDataColumn FieldName="CategoryID" />
				<dx:GridViewDataColumn FieldName="CategoryName" />
				<dx:GridViewDataColumn FieldName="Description" />
			</Columns>
			<ClientSideEvents ContextMenu="Grid_ContextMenu" />
		</dx:ASPxGridView>

		<asp:AccessDataSource ID="GridDataSource" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]" />

	</form>
</body>
</html>