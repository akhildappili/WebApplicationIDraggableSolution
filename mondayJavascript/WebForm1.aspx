<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="mondayJavascript.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>pick a day</title>
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <link href="css/triangle.css" rel="stylesheet" />
    <script src="pikaday.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton Id="imagebutton1" runat="server" imageUrl="images/greenbutton.jpg" 
                onmouseover="this.src='images/redbutton.jpg ' "
                onmouseout=" this.src='images/greenbutton.jpg'  "/>
        </div>
        
            Name:<asp:TextBox ID="TextBox1" onfocus="myfunction(this)"  runat="server"></asp:TextBox>
        
            NameCount:<asp:TextBox ID="TextBox2"  onkeyup="countCharacters()" runat="server"></asp:TextBox>
            Label:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <h1>onclick</h1>

        <h2 onclick="changeText(this)"> random words</h2>
        <h2>credit card number</h2>
        <asp:TextBox ID="txt1" runat="server" Width="50px" MaxLength="4"
                onkeyup="moveCursor(this,'txt2')"></asp:TextBox>
<asp:TextBox ID="txt2" runat="server" Width="50px" MaxLength="4"
                onkeyup="moveCursor(this,'txt3')"></asp:TextBox>
<asp:TextBox ID="txt3" runat="server" Width="50px" MaxLength="4"
                onkeyup="moveCursor(this,'txt4')"></asp:TextBox>
<asp:TextBox ID="txt4" runat="server" Width="50px" MaxLength="4">
                </asp:TextBox>


        Pick the date<asp:TextBox ID="datepicker" runat="server"></asp:TextBox>

        
        <script type="text/javascript">
            document.getElementById("TextBox1").focus();
            function countCharacters() {
                document.getElementById("Label1").innerHTML = document.getElementById("TextBox2").value.length + "characters";
            }
            function changeText(id) {
                id.innerHTML = "china is culprit";

            }
            function myfunction(x) {
                x.style.background= "#804567"

            }
            function moveCursor(fromtextbox, totextbox) {
                var length = fromtextbox.value.length;
                var maxlength = fromtextbox.getAttribute("MaxLength");
                if (length == maxlength)
                {
                    document.getElementById(totextbox).focus();
                }
            }

            //var picker = new Pikaday(
            //    {
            //        field: document.getElementById('TextBox1'),
            //        firstDay: 1,
            //        minDate: new Date('2000-01-01'),
            //        maxDate: new Date('2020-12-31'),
            //        yearRange: [2000, 2020],
            //        numberOfMonths: 3,
            //        theme: 'dark-theme'
            //    });

            var picker = new Pikaday({
                field: document.getElementById('datepicker'),
                format: 'D/M/YYYY',
                toString(date, format) {
                    // you should do formatting based on the passed format,
                    // but we will just return 'D/M/YYYY' for simplicity
                    const day = date.getDate();
                    const month = date.getMonth() + 1;
                    const year = date.getFullYear();
                    return `${day}/${month}/${year}`;
                },
                parse(dateString, format) {
                    // dateString is the result of `toString` method
                    const parts = dateString.split('/');
                    const day = parseInt(parts[0], 10);
                    const month = parseInt(parts[1], 10) - 1;
                    const year = parseInt(parts[2], 10);
                    return new Date(year, month, day);
                }
            });


        </script>

    </form>
</body>
</html>
