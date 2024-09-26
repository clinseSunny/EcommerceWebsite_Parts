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
    public partial class SingUp : System.Web.UI.Page
    {
        FunCls FnObj = new FunCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            string sel = "Select max(Reg_id) from Login_tb";
            string admin_id = FnObj.Fun_Query(sel);
            int admin_Id = 0;
            if (admin_id == "")
            {
                admin_Id = 4 + 1;
            }
            else
            {
                int newid = Convert.ToInt32(admin_id);
                admin_Id = newid + 1;
            }
            string ins = "insert into Admin_tb values(" + admin_Id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + "," +
                 "'" + TextBox4.Text + "'," + TextBox5.Text + ")";
            int i = FnObj.Fun_NonQuery(ins);
            if (i == 1)
            {
                string ins2 = "insert into Login_tb values('" + TextBox1.Text + "'," + TextBox5.Text + "," + admin_Id + ",'admin')";
                int f = FnObj.Fun_NonQuery(ins2);
                if (f == 1)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}