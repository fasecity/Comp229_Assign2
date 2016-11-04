using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            AgeLabel.Font.Size = 15;
            AgeLabel.Text = "Please enter your age.";

            NameLabel.Font.Size = 15;
            NameLabel.Text = "Please enter your name.";

            DropDownLabel.Font.Size = 15;
            DropDownLabel.Text = "What's your favroite product?";

            PriceLabel.Font.Size = 15;
            PriceLabel.Text = "What is the maximum you would spend on a product?";

            EmailLabel.Font.Size = 15;
            EmailLabel.Text = "Please enter email.";

            GenderLabel.Font.Size = 15;

            GenderHiddenLabel.Visible = false;

            if (MaleRadioButton.Checked)
            {
                GenderHiddenLabel.Visible = true;
                GenderHiddenLabel.Text = "You are a " + MaleRadioButton.Text + "<br />";
            }

            if (FemaleRadioButton.Checked)
            {
                GenderHiddenLabel.Visible = true;
                GenderHiddenLabel.Text = "You are a " + FemaleRadioButton.Text + "<br />";
            }
            if (MaleRadioButton.Checked && FemaleRadioButton.Checked)
            {
                GenderHiddenLabel.Visible = true;
                GenderHiddenLabel.Text = "You dont have to tell us your gender this is optional "  + "<br />";
            }

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["ageval"] = AgeTextBox.Text;
                Session["nameval"] = NameTextBox.Text;
                Session["productval"] = DropDownList1.Text;
                Session["priceval"] = PriceTextBox.Text;
                Session["emailval"] = EmailTextBox.Text;
               
                Response.Redirect("ThankYouPage.aspx");
                
            }
        }
    }
}