using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dot_net_Exam
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            form1.Visible = true;
        
        }
        string[] images = new string[10];
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["product"] += "Canadian Dollar;";
            Session["price"] +="2000;";
            images[0] = Image1.ImageUrl;
            Session["img"] += images[0]+";";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["product"] += "Kuwait Dinar;";
            Session["price"] += "7000;";
            images[1] = Image2.ImageUrl;
            Session["img"] += images[1] + ";";

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["product"] += "Euro;";
            Session["price"] += "2100;";
            images[2] = Image3.ImageUrl;
            Session["img"] += images[2] + ";";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["product"] += "Ruble;";

            Session["price"] += "4000;";
            images[3] = Image4.ImageUrl;
            Session["img"] += images[3] + ";";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["product"] += "Indian Rupee;";

            Session["price"] += "3000;";
            images[4] = Image5.ImageUrl;
            Session["img"] += images[4] + ";";

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["product"] += "US Dollar;";
            Session["price"] += "200;";
            images[5]= Image6.ImageUrl;
            Session["img"] += images[5] + ";";
            Response.Write(Session["price"]);

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_cart.aspx");
        }
    }
}