<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Self.Home" %>

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
                             .carousel-item {
                             height: 100vh;
                             min-height: 300px;
                             background: no-repeat center center scroll;
                             background-size: cover;
                            }
                              .carousel-caption {
                               bottom: 270px;
                              }

                            .carousel-caption h5 {
                             font-size: 45px;
                             text-transform: uppercase;
                             letter-spacing: 2px;
                            margin-top: 25px;
                            }

                            .carousel-caption p {
                              width: 75%;
                              margin: auto;
                              font-size: 18px;
                              line-height: 1.9;
                              }

                           
                            
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
                        
             <form id="form1" runat="server">                                              
           <nav class="navbar navbar-expand-lg navbar navbar-light bg-light">
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
    <a class="nav-link active" aria-current="page" href="Login.aspx">Login</a>
      </li>
    
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="Signup.aspx">Signup</a>
 

      </li>
         
          </ul>
      </div>
               </nav>

                           

                           
        
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                          <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                              <img class="d-block w-100" src="https://i.insider.com/602be9f62edd0f001a8d5df9?width=700" alt="First slide"/>
                              <div class="carousel-caption d-none d-md-block">
                                <h5>
                       Feel trendy Feel authentic</h5>
                        <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                        </div>
                        </div>
                        <div class="carousel-item">
                              <img class="d-block w-100" src="https://i0.wp.com/newmensstyles.com/wp-content/uploads/2020/11/Casual-dress-for-men.jpg?fit=1170%2C542&ssl=1" alt="Second slide"/>
                              <div class="carousel-caption d-none d-md-block">
                                <h5>
                        Perfectly imperfect</h5>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                    </div>
                    </div>
                    <div class="carousel-item">
                          <img class="d-block w-100" src="https://www.beyoung.in/blog/wp-content/uploads/2020/02/header-min-4.jpg" alt="Third slide"/>
                          <div class="carousel-caption d-none d-md-block">
                            <h5>
                   Be your own label</h5>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime, nulla, tempore. Deserunt excepturi quas vero.</p>
                    </div>
                    </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                            

                        <div class="container text-center">
                            <h3> TRENDS </h3>
                            <br />

                       <div class="row">
                             <div class="col-sm-3">
                                 <img src="trend1.jpg" class="img-responsive" style="width:100%" alt="Image" />
                                 
                           </div>
                             <div class="col-sm-3">
                                  <img src="trend1.jpg" class="img-responsive" style="width:100%" alt="Image" />
                              

                           </div>
                             <div class="col-sm-3">
                                  <img src="trend1.jpg" class="img-responsive" style="width:100%" alt="Image" />
                                 

                           </div>
                             <div class="col-sm-3">
                                  <img src="trend1.jpg" class="img-responsive" style="width:100%" alt="Image" />
                              
                                 </div>

                           </div>
                           
                       </div>
                  
                                    
                            <hr />
                                    <br />
                          
                                    <footer class="collapse-fluid text-center jumbotron">
                                        <p>
                                            copyright@2022 www.vpfashion.in
                                        </p>
                                    </footer>
        </form>
</body>
</html>
