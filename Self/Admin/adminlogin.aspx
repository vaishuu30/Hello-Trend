<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Self.Admin.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
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
                                   
        
                               
                      <%--  <li class="nav-item">
                                  <a class="nav-link" href="#">About</a>
                                </li>
                        <li class="nav-item">
                                  <a class="nav-link" href="#">contact</a>
                                </li>
                        <li class="nav-item">
                                  <a class="nav-link" href="#">costumes</a>
                                </li>
                        <li class="nav-item">
                                  <a class="nav-link" href="#">suggestion</a>
                                </li>
                         <li class="nav-item">
                                  <a class="nav-link" href="Signup.aspx">Signup</a>
                                </li>--%>

                        
                         <div class="container">
                             <div class="col-sm-3"></div>
                             <div class="col-sm-6">
                                 <div class="panel panel-danger">
                                     <div class="panel-heading">Admin Login</div>
                                     <div class="panel-body">
                                         <div class="row">
                                             <div class="col-sm-12">
                                                 <div class="form-group">
                                                 <label>UserName:</label>
                                                 <asp:TextBox ID="txtuserid" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                                



                                                   <div class="form-group">  
                                                 <label> Password:</label>
                                                 <asp:TextBox ID="txtpass" CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                                                         </div>

                                                 <div class="form-group">
                                                     <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
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

