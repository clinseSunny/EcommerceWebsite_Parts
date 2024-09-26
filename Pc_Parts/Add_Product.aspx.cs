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
    public partial class Add_Product : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Saving the uploaded file
            string p = "~/img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            // Correct SQL insertion query
            string ins = "insert into Product_tb values(" + DropDownList1.SelectedValue + ", '" + TextBox1.Text + "', " +
                         TextBox2.Text + ", " + TextBox3.Text + ", '" + p + "', '" + TextBox4.Text + "')";

            // Execute the query
            int i = FnObj.Fun_NonQuery(ins);

            if (i == 1)
            {
                Response.Redirect("Admin_Page.aspx");
            }
        }
    }
}