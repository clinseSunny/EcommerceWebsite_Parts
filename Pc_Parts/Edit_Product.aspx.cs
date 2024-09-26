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

    public partial class Edit_Product : System.Web.UI.Page
    {
        FunCls FnObj = new FunCls();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string sel = "select category_id,category_name from Category_tb";
                DataSet ds = FnObj.Fun_DataSet(sel);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_id";
                DropDownList1.DataBind();
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            string sel2 = "select * from Product_tb where category_id=" + DropDownList1.SelectedValue + "";
            DataSet ds2 = FnObj.Fun_DataSet(sel2);
            GridView1.DataSource = ds2;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getId = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from  Product_tb where Product_id=" + getId + "";
            int d = FnObj.Fun_NonQuery(del);

            if (d == 1)
            {
                string sel3 = "select * from Product_tb";
                DataSet ds3 = FnObj.Fun_DataSet(sel3);
                GridView1.DataSource = ds3;
                GridView1.DataBind();
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
            int getuPdiD = Convert.ToInt32(GridView1.DataKeys[i].Value);
            Session["UPID"] = getuPdiD;
            Response.Redirect("EditCategorey_Grid.aspx");
        }
    }
}