﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//*******************************
//* Name: Eduardo Go Matsushita *
//* Student Id: 300904663       *
//*******************************

public partial class Books : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Cookies["Theme"] != null)
        {
            this.Theme = Session["Theme"] as String;
        }
    }

//*******************************
//* Name: Eduardo Go Matsushita *
//* Student Id: 300904663       *
//*******************************

    protected void Page_Load(object sender, EventArgs e)
    {
        //BookRepository bookList = Session["bookList"] as BookRepository;
        if (grid.Rows.Count < 1)
        {
            list.Text = "<h3 class=\"h3-title\">There is no book in the collection!</h3>";
        }
        else
        {
            list.Text = "<h3 class=\"h3-title\">Look at the most amazing collection...</h3>";
        }       
    }

    protected void grid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int number;
        // Cannot redirect if a user change gridview page
        if (!Int32.TryParse((String)e.CommandArgument, out number))
        {
            Response.Redirect("~/bookDetails.aspx?det=" + e.CommandArgument);
        }
    }
}

//*******************************
//* Name: Eduardo Go Matsushita *
//* Student Id: 300904663       *
//*******************************