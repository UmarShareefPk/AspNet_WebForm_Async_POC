<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" EnableSessionState="True" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AspNetWebFormAsyncPOC.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
  
    <script src="Scripts/jquery-3.4.1.min.js"></script>
               
        <script>
            $(document).ready(function () {
                //alert("Hi");
                //fetch("https://localhost:44332/Contact.aspx/getNameAfter2Sec")//.then(m => m.json())
                //    .then(m => {
                //        console.log(m);
                //        alert(m);
                //    });

                $("#sendRequestBtn").click(function () {

                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "../Contact.aspx/GetNameAfter2Sec",
                        // url: '<%=Microsoft.AspNet.FriendlyUrls.FriendlyUrl.Resolve("/Contact.aspx/GetNameAfter2Sec")%>',
                        // data: JSON.stringify({ name: "Umar" }),
                        dataType: "json",

                        success: function (data) {
                            console.log("success: ", data);
                        },
                        error: function (xhr, status, error) {
                            //debugger;
                            console.log(xhr, "ll ", status, "data: ", JSON.stringify({ name: "Umar" }));
                        }
                    });

                });

                
            });

            
        </script>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   

    <main aria-labelledby="title">
        <input type="button" id="sendRequestBtn" value="Send Ajax" />
        <h2 id="title"><%: Title %>.</h2>
        <h3>Your contact page.</h3>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>

  
</asp:Content>
