using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dot_net_Exam
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == "Godwin" && TextBox2.Text == "God@123")
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Label2.Text = "Invalid Credentials";
                Label2.Visible = true;
            }
        }
    }
}