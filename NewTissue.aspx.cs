using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace TissueTrack
{
    public partial class NewTissue : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Authenticate.GrpName == "Admin")
            {
                this.MasterPageFile = "Tissue_Admin.Master";
            }
            else if (Authenticate.GrpName == "Store")
            {
                this.MasterPageFile = "Tissue_Store.Master";
            }
            else if (Authenticate.GrpName == "Nurse")
            {
                this.MasterPageFile = "Tissue_Nurse.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDropDowns();
            }
        }

        public void FillDropDowns()
        {
            DBManager db = new DBManager();
            try
            {
                db = new DBManager(DataProvider.SqlServer, ConfigurationManager.ConnectionStrings["TSConnection"].ToString());
                db.Open();
                // db.BeginTransaction();
                string cmdtext = "select username,username from OUSR where username <> ''";
                DataSet ds= db.ExecuteDataSet(CommandType.Text, cmdtext);
                //db.CommitTransaction();
                drprecmm.DataSource = ds;
                drprecmm.DataValueField = "username";
                drprecmm.DataTextField = "username";
                drprecmm.DataBind();
                db.Close();

            }
            catch (Exception ex)
            {
                db.RollbackTransaction();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DBManager db=new DBManager();
            try
            {      
                db = new DBManager(DataProvider.SqlServer, ConfigurationManager.ConnectionStrings["TSConnection"].ToString());
                db.Open();
                //db.BeginTransaction();
                string cmdtext = "INSERT INTO OTSUE (tisscode,proddes,vendor,tlot,texdate,ttemp,storage,pintact,active,recmm,datrcmm,tcatalog,createdate) values('" + txttisscode.Text.ToString() + "','" +
                  txtdes.Text.ToString() + "','" + txtvendor.Text.ToString() + "','" + txtlot.Text.ToString() + "','" + txtexpdate.Text.ToString() + "','" + drptrantemp.SelectedValue.ToString() + "','" + drpstorage.SelectedValue.ToString() + "','" + drppintact.SelectedValue.ToString() + "',1,'" + drprecmm.SelectedValue.ToString() + "','" + txtrecmm.Text.ToString() + "','" + txtcat.Text.ToString() + "',GETDATE());select @@identity;";
                object res = db.ExecuteScalar(CommandType.Text, cmdtext);
                int id = Convert.ToInt32(res);
                string cmdtext1 = "INSERT INTO OPTNT (tissid) Values (" + id.ToString() + ")";
                int res1 = db.ExecuteNonQuery(CommandType.Text, cmdtext1);
                //db.CommitTransaction();
                db.Close();
                ClearFields();
            }
            catch (Exception ex)
            {
                db.RollbackTransaction();
            }
         }


        void ClearFields()
        {
            txttisscode.Text = "";
            txtdes.Text = "";
            txtvendor.Text = "";
            txtlot.Text = "";
            txtcat.Text = "";
            txtexpdate.Text = "";
            txtrecmm.Text = "";
            drppintact.SelectedValue = "";
            drprecmm.SelectedValue = "";
            drpstorage.SelectedValue = "";
            drptrantemp.SelectedValue = "";
        }
    }
}