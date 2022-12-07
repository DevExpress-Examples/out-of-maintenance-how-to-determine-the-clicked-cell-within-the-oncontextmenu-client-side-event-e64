using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected void Grid_HtmlDataCellPrepared(object sender, ASPxGridViewTableDataCellEventArgs e) {
        e.Cell.Attributes["data-CI"] = string.Format("{0}_{1}", e.VisibleIndex, Grid.DataColumns.IndexOf(e.DataColumn)); // cell info
    }
    protected void Grid_CustomJSProperties(object sender, ASPxGridViewClientJSPropertiesEventArgs e) {
        e.Properties["cpDataColumnMap"] = Grid.DataColumns.ToDictionary(c => Grid.DataColumns.IndexOf(c), c => c.FieldName);
    }
}