<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileUploader.aspx.cs" Inherits="FileUploader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FileUploader IFrame</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" />        
    <link href="~/Content/MyFileUploader.css" rel="stylesheet" />

    <style type="text/css">
        .ajax__fileupload_dropzone {
            display:none;
        }
    </style>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script>
        $(function () {
            //$(".ajax__fileupload_dropzone").hide();
        });
    </script>
</head>
<body>
    <div class="container">
    <form id="form1" class="form-horizontal" runat="server">
    <div class="form-group">
        <label for="techpack" class="col-sm-2 control-label">Tech Pack</label>
        <div class="col-sm-5">    
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <ajaxToolkit:AjaxFileUpload 
                ID="AjaxFileUpload1" 
                OnUploadComplete="AjaxFileUpload1_UploadComplete" 
                MaximumNumberOfFiles="5"
                runat="server" ClearFileListAfterUpload="False" ThrobberID="MyThrobber" Width="100%" />

            <asp:Image
                id="MyThrobber"
                ImageUrl="~/Images/ajax-loader.gif"
                Style="display:none"
                runat="server" />
        </div>
        <div class="col-sm-5">             <a href="#"><img src="Images/attachment32.png" style="width:16px;" />filename1.pptx</a>
                <a href="#"><img src="Images/attachment32.png" style="width:16px;" />filename1000000000.pdf</a>
                <a href="#"><img src="Images/attachment32.png" style="width:16px;" />한글인 경우에도 문제없이 나타나는 가?.xls</a>
                <a href="#"><img src="Images/attachment32.png" style="width:16px;" />filename1.doc</a></div>
    </div>
    <div class="form-group">
        <label for="attachment" class="col-sm-2 control-label">Attachment</label>
        <div class="col-sm-5">    
        <ajaxToolkit:AjaxFileUpload 
            ID="AjaxFileUpload2" 
            OnUploadComplete="AjaxFileUpload2_UploadComplete" 
            MaximumNumberOfFiles="5"
            runat="server" ClearFileListAfterUpload="False" ThrobberID="MyThrobber" Width="100%" />

        <asp:Image
            id="Image1"
            ImageUrl="~/Images/ajax-loader.gif"
            Style="display:none"
            runat="server" />
        </div>
        <div class="col-sm-5">             <a href="#"><img src="Images/attachment32.png" style="width:16px;" />filename1.pptx</a>
            <a href="#"><img src="Images/attachment32.png" style="width:16px;" />filename1000000000.pdf</a>
            <a href="#"><img src="Images/attachment32.png" style="width:16px;" />한글인 경우에도 문제없이 나타나는 가?.xls</a>
            <a href="#"><img src="Images/attachment32.png" style="width:16px;" />filename1.doc</a>
        </div>
    </div>

    <div class="form-group">
        <label for="attachment" class="col-sm-2 control-label">Images</label>
        <div class="col-sm-5">    
            <ajaxToolkit:AjaxFileUpload 
                ID="AjaxFileUpload3" 
                OnUploadComplete="AjaxFileUpload3_UploadComplete" 
                MaximumNumberOfFiles="5"
                runat="server" ClearFileListAfterUpload="False" ThrobberID="MyThrobber" Width="100%" />

            <asp:Image
                id="Image2"
                ImageUrl="~/Images/ajax-loader.gif"
                Style="display:none"
                runat="server" />
        </div>
    </div>
    <div class="form-group">
        <span class="col-sm-2"></span>
        <img src="Images/sample%20femal%20shirt.gif" class="col-md-1 img-responsive preview-img"/>
        <img src="Images/sample%20femal%20shirt.gif" class="col-md-1 img-responsive preview-img"/>
        <img src="Images/sample%20femal%20shirt.gif" class="col-md-1 img-responsive preview-img"/>
        <img src="Images/sample%20femal%20shirt.gif" class="col-md-1 img-responsive preview-img"/>
        <img src="Images/sample%20femal%20shirt.gif" class="col-md-1 img-responsive preview-img"/>
    </div>
    
    </form>
        </div>
</body>
</html>
