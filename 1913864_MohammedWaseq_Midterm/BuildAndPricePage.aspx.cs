using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1913864_MohammedWaseq_Midterm
{
    public partial class BuildAndPricePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panFinalInfo.Visible = panPriceResume.Visible = false;
            txtPhone.Visible = lblPhone.Visible = false;
            if(!Page.IsPostBack)
            {   
                //Car Model
                cboCarModel.Items.Add(new ListItem("Civoc","25000"));
                cboCarModel.Items.Add(new ListItem("DR-V","30000"));
                cboCarModel.Items.Add(new ListItem("Appord","33000"));
                cboCarModel.Items.Add(new ListItem("Cilot","45000"));
                cboCarModel.Items.Add(new ListItem("Odyrrey","54000"));

                //Interior Color
                lstInteriorColor.Items.Add(new ListItem("White (Free)", "0"));
                lstInteriorColor.Items.Add(new ListItem("Dark (+ $300)", "300"));
                lstInteriorColor.Items.Add(new ListItem("Pearl (+ $900)", "900"));
                lstInteriorColor.SelectedIndex = 0;

                //Accessories
                chkBoxAccessories.Items.Add(new ListItem("Aero Kit (+ $1300)", "1300"));
                chkBoxAccessories.Items.Add(new ListItem("Film (+ $600)", "600"));
                chkBoxAccessories.Items.Add(new ListItem("Cold Weather (+ $900)", "900"));
                chkBoxAccessories.Items.Add(new ListItem("Hondi Emblem (+ $150)", "150"));
                chkBoxAccessories.Items.Add(new ListItem("Snow Tire Package (+ $1800)", "1800"));

                //Warranty
                radLstWarranty.Items.Add(new ListItem("3 Years (Included)", "0"));
                radLstWarranty.Items.Add(new ListItem("5 Years (+ $1000)", "1000"));
                radLstWarranty.Items.Add(new ListItem("7 Years (+ $1500)", "1500"));
                radLstWarranty.SelectedIndex = 0;

            }

            if(cboCarModel.SelectedIndex > 0)
            {
                calculatePrice();
            }
        }

        private void calculatePrice()
        {
            decimal carPrice = 0, interiorColor = 0, accessories = 0, warranty = 0, withoutTaxes, withTaxes;

            carPrice = Convert.ToDecimal(cboCarModel.SelectedItem.Value);
            litPriceResume.Text = "<br>Car Price : $" + carPrice + "<br>";

            foreach (ListItem item in lstInteriorColor.Items)
            {
                interiorColor += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }
            litPriceResume.Text += "Interior Color: $" + interiorColor + "<br>";

            foreach (ListItem item in chkBoxAccessories.Items)
            {
                accessories += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }
            litPriceResume.Text += "Accessories: $" + accessories + "<br>";

            foreach (ListItem item in radLstWarranty.Items)
            {
                warranty += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }
            litPriceResume.Text += "Warranty: $" + warranty + "<br><br><br>";

            withoutTaxes = carPrice + interiorColor + accessories + warranty;
            litPriceResume.Text += "Total without taxes: $" + withoutTaxes + "<br><br>";

            withTaxes = withoutTaxes + (withoutTaxes * Convert.ToDecimal(0.15));
            withTaxes = Math.Round(withTaxes, 2);
            litPriceResume.Text += "Total with taxes(15%): $" + withTaxes + "";

            panPriceResume.Visible = true;

        }

        protected void chkBoxContact_CheckChanged(object sender,EventArgs e)
        {
            txtPhone.Visible = lblPhone.Visible = chkBoxContact.Checked;
        }

        protected void cboCarModel_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            panFinalInfo.Visible = true;
            litFinalInfo.Text = "Congratulations in obtaining your new Hondi " + "<br/>" + cboCarModel.SelectedItem.Text + " in " + txtCity.Text + ", " + txtZipCode.Text + "." + "<br/>" + "<br/>" + "Your car comes with " + lstInteriorColor.SelectedItem.Text + " interior color," +  chkBoxAccessories.SelectedItem.Text + "," + " accessories." + "<br/>" + "<br/>" + "You chose " + radLstWarranty.SelectedItem.Text + " of warranty ";
            litFinalInfo.Text += (chkBoxContact.Checked) ? "and our dealer will contact you by the phone number " + txtPhone.Text : "." + "<br/>";
            
        }
    }
}