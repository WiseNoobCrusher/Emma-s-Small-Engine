﻿using SalesDatasets;
using SalesDatasets.DeliveryDatasetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmaSmallEngine
{
    public partial class Deliveries_Delete : System.Web.UI.Page
    {
       private static DeliveryDataset dsDelivery = new DeliveryDataset();
        protected void Page_Load(object sender, EventArgs e)
        {
            deliverySubPageTableAdapter daSubPageCust = new deliverySubPageTableAdapter();
            int id = Convert.ToInt32(Request.QueryString["val"]);

            daSubPageCust.Fill(dsDelivery.deliverySubPage, id);

            foreach (DataRow r in dsDelivery.deliverySubPage)
            {
                lblcustFirst.Text = r.ItemArray[1].ToString();
                lblcustLast.Text = r.ItemArray[2].ToString();
                lblcustPhone.Text = r.ItemArray[3].ToString();
                lblcustAddress.Text = r.ItemArray[4].ToString();
                lblcustCity.Text = r.ItemArray[5].ToString();
                lblcustPostal.Text = r.ItemArray[6].ToString();
                lblordNumber.Text = r.ItemArray[7].ToString();
                lblordDate.Text = r.ItemArray[8].ToString();
                lblprodName.Text = r.ItemArray[9].ToString();
                lblprodDescription.Text = r.ItemArray[10].ToString();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["val"]);
            var cnnString = global::EmmaSmallEngine.Properties.Settings.Default.EmmaConnectionString;
            var cmd = "DELETE FROM customer WHERE id = @id";
            using (SqlConnection cnn = new SqlConnection(cnnString))
            {
                using (SqlCommand cmds = new SqlCommand(cmd, cnn))
                {
                    cmds.Parameters.AddWithValue("@id", id);
                    cnn.Open();
                    cmds.ExecuteNonQuery();
                }
            }
            Response.Redirect("~/Deliveries.aspx");
        }
    }
}