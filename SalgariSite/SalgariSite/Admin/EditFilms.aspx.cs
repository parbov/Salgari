using SalgariSite.Models;
using SalgariSite.Helpers;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using Error_Handler_Control;

namespace SalgariSite.Admin
{
    public partial class EditFilms : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {
            if (grdFilms.Rows.Count == 0)
            {
                CreatePanelVisibility(true);
            }
        }

       public IQueryable<Film> SelectFilms()
        {
            var db = new ApplicationDbContext();
            return db.Films;
        }

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            CreatePanelVisibility(true);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtTitle.Text) && !string.IsNullOrEmpty(txtCover.Text))
            {
                var filmStatus = ActionType.Modified;

                var db = new ApplicationDbContext();
                var film = db.Films.Find(btnSave.CommandArgument.ToInt());

                if (film == null && btnSave.CommandName != "Delete")
                {
                    film = new Film();
                    db.Films.Add(film);
                    filmStatus = ActionType.Created;
                }

                if (btnSave.CommandName == "Delete")
                {
                    //db.Books.RemoveRange(category.Books);
                    db.Films.Remove(film);
                    filmStatus = ActionType.Deleted;
                }
                else
                {
                    film.Title = txtTitle.Text;
                    film.Cover = txtCover.Text;
                    film.Img1 = txtImg1.Text;
                    film.Img2 = txtImg2.Text;
                    film.Img3 = txtImg3.Text;
                    film.Description = txtDescription.Text;
                }

                db.SaveChanges();
                grdFilms.DataBind();
                if (grdFilms.PageIndex == grdFilms.PageCount)
                {
                    grdFilms.PageIndex = 0;
                }

                ErrorSuccessNotifier.AddSuccessMessage("Film " + filmStatus.ToString());
                CreatePanelVisibility(false);
            }
            else
            {
                ErrorSuccessNotifier.AddErrorMessage("Film Name or Cover is required!");
            }
            
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            CreatePanelVisibility(false);
        }

        private void CreatePanelVisibility(bool isVisible)
        {
            btnSave.Text = "Create";
            btnSave.CommandArgument = string.Empty;
            btnSave.CommandName = string.Empty;
            btnCancel.Text = "Cancel";
            lblFilmHeader.InnerText = "Create New Film";
            txtTitle.Text = string.Empty;
            txtTitle.Enabled = true;
            txtCover.Text = string.Empty;
            txtCover.Enabled = true;
            txtDescription.Text = string.Empty;
            txtDescription.Enabled = true;
            txtImg1.Text = string.Empty;
            txtImg1.Enabled = true;
            txtImg2.Text = string.Empty;
            txtImg2.Enabled = true;
            txtImg3.Text = string.Empty;
            txtImg3.Enabled = true;
            

            if (isVisible)
            {
                btnCreateNew.Visible = false;
                pnlFilm.Visible = true;
                
            }
            else
            {
                btnCreateNew.Visible = true;
                pnlFilm.Visible = false;
                
            }
        }


        protected void grdFilms_SelectedIndexChanged(object sender, EventArgs e)
        {
            CreatePanelVisibility(true);

            lblFilmHeader.InnerText = "Confirm Film Deletion?";
            txtTitle.Text = Server.HtmlDecode(grdFilms.SelectedRow.Cells[0].Text);
            txtTitle.Enabled = false;
            btnSave.Text = "Yes";
            btnSave.CommandArgument = grdFilms.SelectedValue.ToString();
            btnSave.CommandName = "Delete";
            btnCancel.Text = "No";
        }

        protected void grdFilms_RowEditing(object sender, GridViewEditEventArgs e)
        {
            e.Cancel = true;
            CreatePanelVisibility(true);
            lblFilmHeader.InnerText = "Edit Film";
            txtTitle.Text = Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[0].Text);
            txtCover.Text = Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[1].Text);
            /*if (Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[2].Text) != null) { 
            txtImg1.Text = Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[2].Text);
            }
            if (Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[3].Text) != null) { 
            txtImg2.Text = Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[3].Text);
            }
            if (Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[4].Text) != null) { 
            txtImg3.Text = Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[4].Text);
            }
            if (Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[5].Text) != null) { 
            txtDescription.Text = Server.HtmlDecode(grdFilms.Rows[e.NewEditIndex].Cells[5].Text);
            }*/
            btnSave.Text = "Save";
            btnSave.CommandArgument = grdFilms.DataKeys[e.NewEditIndex].Value.ToString();
        }
    }

   
    
    
}