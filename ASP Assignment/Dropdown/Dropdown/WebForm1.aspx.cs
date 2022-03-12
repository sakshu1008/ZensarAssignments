using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dropdown
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] str = new string[] { "select", "Iphone11", "Iphone12", "Iphone13","Iphone14" };

                for (int i = 0; i < str.Length; i++)
                {
                    DropDownList1.Items.Add(str[i]);
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = DropDownList1.Text;
            Image1.ImageUrl = "~/images/" + str + ".jpg";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = DropDownList1.SelectedIndex.ToString();
            if (DropDownList1.Text == "Iphone11")
            {
                TextBox1.Text = "50000";
            }
            else if (DropDownList1.Text == "Iphone12")
            {
                TextBox1.Text = "70000";
            }
            else if (DropDownList1.Text == "Iphone13")
            {
                TextBox1.Text = "80000";
            }
            else 
            {
                TextBox1.Text = "90000";
            }


        }
    }
}