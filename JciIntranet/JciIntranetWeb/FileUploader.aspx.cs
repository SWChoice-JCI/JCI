using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileUploader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void AjaxFileUpload1_OnUploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    //{

    //}
    protected void AjaxFileUpload1_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        string filePath = "~/upload/TechPack/" + e.FileName;

        AjaxFileUpload1.SaveAs(MapPath(filePath));

    }
    protected void AjaxFileUpload2_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        string filePath = "~/upload/doc/" + e.FileName;

        AjaxFileUpload1.SaveAs(MapPath(filePath));
    }
    protected void AjaxFileUpload3_UploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        string filePath = "~/upload/img/" + e.FileName;

        AjaxFileUpload1.SaveAs(MapPath(filePath));
    }
}