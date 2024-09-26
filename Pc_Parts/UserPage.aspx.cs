using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Pc_Parts
{
    public partial class UserPage : System.Web.UI.Page
    {
        FunCls FnObj = new FunCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from Category_tb";
                DataTable dt = FnObj.Fn_DataTable(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int getId = Convert.ToInt32(e.CommandArgument);
            Session["categorey_id"] = getId;
            Response.Redirect("");
        }
    }
}