<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Self.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title> HELLLLLO TREND</title>
  <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
  
        <style>
                             
                            footer{
                                background-color:#f2f2f2;
                                padding:25px;
                            }
                            .carousel-inner img{
                                width:100%;
                                min-height:200px;
                            }
                            @media(max-width:600px){
                                .carousel-caption{
                                    display:none;
                                }


                            }
                             </style>
                            </head>
                            <body>
                                <form id="form2" runat="server">
                                     <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">VP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.aspx">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">about</a>
      </li>
          <li class="nav-item">
        <a class="nav-link" href="#">contact</a>
      </li>
          <li class="nav-item">
        <a class="nav-link" href="costumes.aspx">costumes</a>
      </li>
          <li class="nav-item">
        <a class="nav-link" href="#">Suggestions</a>
      </li>
         
     
        </ul>
        <ul class="nav justify-content-end">
  
    
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="Signup.aspx">Signup</a>
 

      </li>
         
          </ul>
      </div>
                                         </nav>
                                  
                               
                         <div class="container">
                             <div class="col-sm-3"></div>
                             <div class="col-sm-6">
                                 <div class="panel panel-primary">
                                     <div class="panel-heading">Login</div>
                                     <div class="panel-body">
                                         <div class="row">
                                             <div class="col-sm-12">
                                                 <div class="form-group">
                                                 <label>UserID:</label>
                                                 <asp:TextBox ID="txtuserid" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                                



                                                   <div class="form-group">  
                                                 <label> Password:</label>
                                                 <asp:TextBox ID="txtpass" CssClass="form-control"  runat="server"></asp:TextBox>
                                                         </div>

                                                 <div class="form-group">
                                                     <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" />
                                                     <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" />
                                                     
                                                 </div>


                                                 </div>
                                                 </div>
                                                 </div>
                                     <div class="panel-footer">
                                         
                             </div>

                                     </div>
                                 </div>
                        
                             <div class="col-sm-3">

                             </div>
                             
                             </div>


             
         <footer class="collapse-fluid text-center jumbotron">
                                        <p>
                                            copyright@2022 www.vpfashion.in
                                        </p>
                                    </footer>
            
                                   

    </form>
</body>
</html>
