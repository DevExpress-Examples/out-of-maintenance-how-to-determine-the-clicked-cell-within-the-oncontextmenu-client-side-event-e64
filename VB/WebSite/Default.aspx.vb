Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Grid_HtmlDataCellPrepared(ByVal sender As Object, ByVal e As ASPxGridViewTableDataCellEventArgs)
		e.Cell.Attributes("data-CI") = String.Format("{0}_{1}", e.VisibleIndex, Grid.DataColumns.IndexOf(e.DataColumn)) ' cell info
	End Sub
	Protected Sub Grid_CustomJSProperties(ByVal sender As Object, ByVal e As ASPxGridViewClientJSPropertiesEventArgs)
		e.Properties("cpDataColumnMap") = Grid.DataColumns.ToDictionary(Function(c) Grid.DataColumns.IndexOf(c), Function(c) c.FieldName)
	End Sub
End Class