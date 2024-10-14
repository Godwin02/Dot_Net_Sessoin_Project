using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dot_net_Exam
{
    public partial class view_cart : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string product = Session["product"].ToString();
                string images = Session["img"].ToString();
                string price = Session["price"].ToString();
                string[] pro = product.Split(';');
                string[] img = images.Split(';');
                string[] pri = price.Split(';');
                Response.Write(pri.Length);

                for (int i = 0; i < img.Length; i++)
                {
                    if (pro[i] != null && img[i] != null)
                    {
                        DropDownList1.Items.Add(new ListItem(pro[i], img[i] + ";" + pri[i]));
                    }
                }
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Label1.Text = DropDownList1.SelectedItem.Text;
            if (Label1.Text == "Select")
            {
                Panel1.Visible = false;
            }

            if (Label1.Text == "Canadian Dollar")
            {
                Panel1.Visible = true;
                Response.Write(DropDownList1.SelectedItem.Text);
                string SelectedValue = DropDownList1.SelectedValue;
                string[] vs = SelectedValue.Split(';');
                Response.Write(DropDownList1.SelectedValue);
                Image1.ImageUrl = vs[0];
                Label2.Text = "Rupees:" + vs[1];

            }
            if (Label1.Text == "Kuwait Dinar")
            {
                Panel1.Visible = true;
                Response.Write(DropDownList1.SelectedItem.Text);
                string SelectedValue = DropDownList1.SelectedValue;
                string[] vs = SelectedValue.Split(';');
                Response.Write(DropDownList1.SelectedValue);
                Image1.ImageUrl = vs[0];
                Label2.Text = "Rupees:" + vs[1];
            }
            if (Label1.Text == "Euro")
            {
                Panel1.Visible = true;
                Response.Write(DropDownList1.SelectedItem.Text);
                string SelectedValue = DropDownList1.SelectedValue;
                string[] vs = SelectedValue.Split(';');
                Response.Write(DropDownList1.SelectedValue);
                Image1.ImageUrl = vs[0];
                Label2.Text = "Rupees:" + vs[1];
            }
            if (Label1.Text == "Ruble")
            {
                Panel1.Visible = true;
                Response.Write(DropDownList1.SelectedItem.Text);
                string SelectedValue = DropDownList1.SelectedValue;
                string[] vs = SelectedValue.Split(';');
                Response.Write(DropDownList1.SelectedValue);
                Image1.ImageUrl = vs[0];
                Label2.Text = "Rupees:" + vs[1];
            }
            if (Label1.Text == "Indian Rupee")
            {
                Panel1.Visible = true;
                Response.Write(DropDownList1.SelectedItem.Text);
                string SelectedValue = DropDownList1.SelectedValue;
                string[] vs = SelectedValue.Split(';');
                Response.Write(DropDownList1.SelectedValue);
                Image1.ImageUrl = vs[0];
                Label2.Text = "Rupees:" + vs[1];
            }
            if (Label1.Text == "US Dollar")
            {
                Panel1.Visible = true;
                Response.Write(DropDownList1.SelectedItem.Text);
                string SelectedValue = DropDownList1.SelectedValue;
                string[] vs = SelectedValue.Split(';');
                Response.Write(DropDownList1.SelectedValue);
                Image1.ImageUrl = vs[0];
                Label2.Text = "Rupees:" + vs[1];
            }
            if (DropDownList1.SelectedItem.Text == "")
            {
                Panel1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>confirm('Your Order Placed Successfully.');");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string[] a = Label2.Text.Split(':');
            double price =double.Parse(a[1]);
            double total = price * double.Parse(TextBox1.Text);
            Label3.Text = total.ToString();
        }
    }
}