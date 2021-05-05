<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="draggable.aspx.cs" Inherits="WebApplicationIDraggable.draggable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.5.1.min.js"></script>
    
    <style>
#mydiv {
  position: absolute;
  z-index: 9;
  background-color: #f1f1f1;
  text-align: center;
  border: 1px solid #d3d3d3;
}

#mydivheader {
  padding: 10px;
  cursor: move;
  z-index: 10;
  background-color: #2196F3;
  color: #fff;
}
</style>
    

</head>
<body>
    <form id="form1" runat="server">
        
        <%--<div id="mydiv">
            <div id="mydivheader">Click here to move</div>
            <p>Move</p>
             <p>this</p>
                <p>DIV</p>
        </div>--%>

        <div class="links">
              <a class="openpop" href="http://getbootstrap.com/">Link 1</a>
               <a class="openpop" href="https://www.youtube.com/">Link 2</a>
                 <a class="openpop" href="http://www.w3schools.com">Link 3</a>
            </div>
        <div id="mydiv">
            <div id="mydivheader">drag to move</div>
            <div class="popup">
            <iframe src="">
            <p>Your browser does not support iframes.</p>
             </iframe>
        <a href="#" class="close">X</a>
        </div>
        </div>

        <script>
            $(document).ready(function () {
                $(".popup").hide();
                $(".openpop").click(function (e) {
                    e.preventDefault();
                    $("iframe").attr("src", $(this).attr('href'));
                    $(".links").fadeOut('slow');
                    $(".popup").fadeIn('slow');
                });

                $(".close").click(function () {
                    $(this).parent().fadeOut("slow");
                    $(".links").fadeIn("slow");
                });
            });
        </script>
        <script src="Scripts/draggable.js"></script>


    </form>

    
</body>
</html>
