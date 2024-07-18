<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <%@include file="components/common_css_js.jsp" %>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Custom CSS -->
        <style>
            /* Adjust alignment of input group */
            .input-group-text {
                display: flex;
                align-items: center;
                background-color: #009688;
            }
            
            /* Color the icon */
            .input-group-text .fa {
                color: white;
            }
        </style>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="row mt-5">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body px-5 py-5">
                        <h3 class="text-center mb-5">Sign up here</h3>
                        <form action="/action_page.php">
                            <!-- Name -->
                            <div class="mb-3 input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-user fa-lg fa-fw"></i>
                                    </span>
                                </div>
                                <input type="text" class="form-control" id="name" placeholder="Enter your name">
                            </div> 
                            
                            <!-- Email -->
                            <div class="mb-3 input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-envelope fa-lg fa-fw"></i>
                                    </span>
                                </div>
                                <input type="email" class="form-control" id="email" placeholder="Enter your Email">
                            </div> 
                            
                            <!-- Password -->
                            <div class="mb-3 input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-key fa-lg fa-fw"></i>
                                    </span>
                                </div>
                                <input type="password" class="form-control" id="password" placeholder="Enter your Password">
                            </div> 
                            
                            <!-- Phone Number -->
                            <div class="mb-3 input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-phone fa-lg fa-fw"></i>
                                    </span>
                                </div>
                                <input type="number" class="form-control" id="phone" placeholder="Enter your Phone Number">
                            </div> 
                            
                            <!-- Address -->
                            <div class="mb-3">
                                <textarea style="height:200px;" class="form-control" placeholder="Enter your Address"></textarea>
                            </div> 
                            
                            <!-- Buttons -->
                            <div class="container text-center">
                                <button class="btn btn-outline-success">Register</button>
                                <button class="btn btn-outline-warning">Reset</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap JS -->
        <scr
