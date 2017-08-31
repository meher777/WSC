
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>new design</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .pd{
            padding: 19px;
        }
        .pdd{
            padding-bottom: 15px;
        }
    </style>
</head>
<body>
<script>
function myfunc(img,text){
	document.getElementById("i").innerHTML = img;
	document.getElementById("t").innerHTML = text;
	
}

</script>
    <div class="row">
        <div class="col-md-12" style="background-color:skyblue;">
            <div class="col-md-3" style="padding: 15px;">
                <button type="button" class="btn btn-primary">Back</button>


            </div>
            <div class="col-md-9">
                <h2 style="color:white;">MARATHON SKILLS 2015</h2>
            </div>
           


        </div>
    </div>
    <div class="row">
<div class="col-md-12">
    <h1 style="text-align:center;">How long is a marathon?</h1>

</div>
    </div>
    <div class="container">
        <div class="row">
            <div clss="col-md-12">

                <div class="col-md-6">
                    <h1 style="text-align:center;">Select item name</h1>
                    <div class="col-md-offset-2 col-md-9">
                        <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" id="i" alt="Chania">
                    </div>
                  
                    <h3 style="text-align:center;margin-top:10px;" id = "t">information about the speed of the selected item and how long it would take to complete the marathon</h3>
                </div>
               
                <div class="col-md-6">
                    <div class="row" style="padding-top: 64px;">
                        <div class="col-md-offset-2 col-md-8">

                            <div class="panel with-nav-tabs panel-default">
                                <div class="panel-heading">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#tab1default" data-toggle="tab">Speed</a></li>
                                        <li><a href="#tab2default" data-toggle="tab">Distance</a></li>

                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="tab-content">
                                        <div class="tab-pane fade in active" id="tab1default">
                                            <div class="row">
                                                <div class="col-md-9 pdd">
                                                    <div class="col-md-6">
                                                        <img class="img-responsive" src="img/airbus-a380.jpg" alt="Chania" onclick = "myfunc(this.src, document.getElementById('airbustext'));">
                                                    </div>
                                                    <div class="col-md-6 pd">
                                                        <p>Air Bus</p>
                                                        <span id = "airbustext" style="display:none;">A bus is 73m length so 73m would fit into marathon length. 
                                                    </span>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 pdd">
                                                    <div class="col-md-6">
                                                        <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                    </div>
                                                    <div class="col-md-6 pd">
                                                        <p>Item 1 name</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 pdd">
                                                    <div class="col-md-6">
                                                        <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                    </div>
                                                    <div class="col-md-6 pd">
                                                        <p>Item 1 name</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 pdd">
                                                    <div class="col-md-6">
                                                        <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                    </div>
                                                    <div class="col-md-6 pd">
                                                        <p>Item 1 name</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 pdd">
                                                    <div class="col-md-6">
                                                        <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                    </div>
                                                    <div class="col-md-6 pd">
                                                        <p>Item 1 name</p>
                                                    </div>
                                                </div>
                                                <div class="col-md-9 pdd">
                                                    <div class="col-md-6 pdd">
                                                        <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                    </div>
                                                    <div class="col-md-6 pd">
                                                        <p>Item 1 name</p>
                                                    </div>
                                                </div>
                                               
                                              
                                               

                                            </div>

                                        </div>
                                        <div class="tab-pane fade" id="tab2default">
                                            <div class="col-md-10 pdd">
                                                <div class="col-md-6">
                                                    <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                </div>
                                                <div class="col-md-6 pd">
                                                    <p>Item 1 name</p>
                                                </div>
                                            </div>

                                            <div class="col-md-10 pdd">
                                                <div class="col-md-6">
                                                    <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                </div>
                                                <div class="col-md-6 pd">
                                                    <p>Item 1 name</p>
                                                </div>
                                            </div>

                                            <div class="col-md-10 pdd">
                                                <div class="col-md-6">
                                                    <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                </div>
                                                <div class="col-md-6 pd">
                                                    <p>Item 1 name</p>
                                                </div>
                                            </div>
                                            <div class="col-md-10 pdd">
                                                <div class="col-md-6">
                                                    <img class="img-responsive" src="https://semantic-ui.com/images/wireframe/image.png" alt="Chania">
                                                </div>
                                                <div class="col-md-6 pd">
                                                    <p>Item 1 name</p>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>


                        </div>
                        
                        </div>
                        
                    </div>

                </div>


            </div>


        </div>
   
    <div id="footer">
        <div class="col-md-12 col-xs-12" style="background-color: black;">
            <div class="container">
                <p class="text-muted credit" style="text-align: center;">18 days 8 hours and 17 minutes until the race starts!</p>
            </div>
        </div>

    </div>

</body>
</html>
