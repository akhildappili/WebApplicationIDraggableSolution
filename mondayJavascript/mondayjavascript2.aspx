<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mondayjavascript2.aspx.cs" Inherits="mondayJavascript.mondayjavascript2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type = "text/javascript">
         function validate() {
         var text;
            if( document.myForm.name.value == "" ) {
              text = "Name cannot be empty";
               document.getElementById("demo").innerHTML = text;
               document.myForm.name.focus() ;
               return false;
            }
            if( document.myForm.email.value == "" ) {
              text = "E-mail cannot be empty";
               document.getElementById("demo").innerHTML = text;
               document.myForm.email.focus() ;
               return false;
            }
       var emailID = document.myForm.email.value;
       atposn = emailID.indexOf("@");
       dotposn = emailID.lastIndexOf(".");
       if (atposn < 1 || ( dotposn - atposn < 2 )) {
       text = "Please enter valid email ID";
       document.getElementById("demo").innerHTML = text;
       document.myForm.email.focus() ;
       return false;
     }
            if( document.myForm.phone.value == "" || isNaN( document.myForm.phone.value ) ||
               document.myForm.phone.value.length != 10 ) {
               text = "Please enter a valid 10-digit phone number";
               document.getElementById("demo").innerHTML = text;
               document.myForm.phone.focus() ;
               return false;
            }
            if( document.myForm.subject.value == "0" ) {
               text = "Please provide your area of expertise";
               document.getElementById("demo").innerHTML = text;
               return false;
            }
            return( true );
         }
     </script>
</head>
<body>
  
        <form action = "" name = "myForm" onsubmit = "return(validate());" runat="server">
        <h1 align="center">USER REGISTRATION</H1>
         <table align="center" cellspacing = "3" cellpadding = "3" border = "3">
            <tr>
               <td align = "right">Name</td>
               <td><input type = "text" name = "name" /></td>
            </tr>
            <tr>
               <td align = "right">E-mail</td>
               <td><input type = "text" name = "email" /></td>
            </tr>
            <tr>
               <td align = "right">Phone Number</td>
               <td><input type = "text" name = "phone" /></td>
            </tr>
            <tr>
               <td align = "right">Subject</td>
               <td>
                  <select name = "subject">
                     <option value = "0" selected>Select</option>
                     <option value = "1">HTML</option>
                     <option value = "2">JavaScript</option>
                     <option value = "3">CSS</option>
                     <option value = "4">JSP</option>
                  </select>
               </td>
            </tr>
         </table>
         <p id="demo" style="color:red; text-align:center"></p>
   <div style="text-align:center"><input type = "submit" value = "Submit" /></div>
      </form>
   
</body>
</html>
