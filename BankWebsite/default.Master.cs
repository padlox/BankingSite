/*
 *
 * Joyce Heath
 * Alliance Bank
 * 04/09/2018
 *
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankWebsite
{
    public partial class _default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["imgLoanSaleClick"] == null)
            {
                Application["imgLoanSaleClick"] = 0;
            }
        }

        protected void imgLoanSale_Click(object sender, ImageClickEventArgs e)
        {
                Application["imgLoanSaleClick"] = int.Parse(Application["imgLoanSaleClick"].ToString()) + 1;
        }
    }
}