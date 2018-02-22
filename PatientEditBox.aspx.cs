using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using System.Configuration;
using System.Data;

namespace TissueTrack
{
    public partial class PatientEditBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DBManager db = new DBManager(DataProvider.SqlServer, ConfigurationManager.ConnectionStrings["TSConnection"].ToString());
            string s_tissueid = Request.QueryString["tissid"];
            if (s_tissueid != null)
            {
                DataSet ds_tissuedet = new DataSet();
                db.Open();
                ds_tissuedet = db.ExecuteDataSet(CommandType.Text, "select tissid,tisscode,proddes,vendor,tlot,convert(varchar,OTSUE.texdate,101) as texdate,storage,recmm,ttemp,pintact,convert(varchar,datrcmm,101),tcatalog from OTSUE where tissid='" + s_tissueid + "'");
                db.Close();
                if (ds_tissuedet.Tables[0].Rows.Count > 0)
                {
                    Session["tissueid"] = ds_tissuedet.Tables[0].Rows[0][0].ToString();
                    txttisscode.Text = ds_tissuedet.Tables[0].Rows[0][1].ToString();
                    txtdes.Text = ds_tissuedet.Tables[0].Rows[0][2].ToString();
                    txtvendor.Text = ds_tissuedet.Tables[0].Rows[0][3].ToString();
                    txtlot.Text = ds_tissuedet.Tables[0].Rows[0][4].ToString();
                    txtexpdate.Text = ds_tissuedet.Tables[0].Rows[0][5].ToString();
                    drpstorage.Text = ds_tissuedet.Tables[0].Rows[0][6].ToString();
                    txtrecmm.Text = ds_tissuedet.Tables[0].Rows[0][10].ToString();
                    drptrantemp.Text = ds_tissuedet.Tables[0].Rows[0][8].ToString();
                    drppintact.Text = ds_tissuedet.Tables[0].Rows[0][9].ToString();
                    txtcat.Text = ds_tissuedet.Tables[0].Rows[0][11].ToString();
                    drprecmm.Text = ds_tissuedet.Tables[0].Rows[0][7].ToString();



                }

            }

        }
    }
}