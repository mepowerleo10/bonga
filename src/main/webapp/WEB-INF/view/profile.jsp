<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Profile page &middot; bonga!</title>

    <link rel="stylesheet" href="../../../custom-bootstrap/custom.css">
    <link rel="stylesheet" href="../../../assets/fontawesome-5.9.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/improved.css">
    <link rel="stylesheet" href="../../../node_modules/lightbox2/dist/css/lightbox.min.css">
    <style>
        body {
            padding-top: 46px;
        }
    </style>
</head>

<body>

    <div id="app-growl"></div>
    <nav class="navbar navbar-expand-lg fixed-top bg-primary app-navbar mx-auto">
        <div class="d-flex justify-content-between w-100 mx-5">
            <a href="../" class="logo-header">
                <img src="../../../assets/svg/icon.svg" alt="bonga_icon" height="42" width="42" />
            </a>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" autocomplete="off">
                <button class="btn btn-outline-light form-control my-2 my-sm-0 input-group-prepend" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </form>
            <div class="row ml-auto d-flex justify-content-end" id="navbarSupportedContent">
                <ul class="nav navbar-nav">
                    <li class="nav-item">
                        <a href="../" class="nav-link position-relative d-flex justify-content-between">
                            <i class="fas fa-home my-auto"></i>
                            <span class="nav-item-badge bg-danger"></span>
                            <span class="d-none  d-xl-block">Home</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../messages/" class="nav-link position-relative d-flex justify-content-between">
                            <i class="fas fa-comments my-auto"></i>
                            <span class="d-none d-xl-block">Conversations</span>
                            <!-- <strong>(2)</strong> -->
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link position-relative d-flex justify-content-between">
                            <i class="fas fa-users my-auto"></i>
                            <span class="d-none d-xl-block">Circles</span>
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li class="nav-item pt-1 mr-1">
                        <a href="../notifications/" class="icon-link"><i class="fas fa-bell"></i></a>
                    </li>
                    <li class="nav-item ml-2 d-none d-lg-block d-xl-block">
                        <div class="dropdown my-menu">
                            <button class="btn btn-outline-primary rounded-circle p-0 dropdown-toggle" aria-haspopup="true" data-toggle="dropdown">
                                <img src="../assets/img/avatar-user.png" alt="" class="avatar-me m-0">
                            </button>
                            <div class="dropdown-menu mt-3" aria-labelledby="dropdownMenu2">
                                <a class="dropdown-item" href="../profile/">
                                    <i class="fas fa-user"></i>
                                    <span class="split"></span>
                                    <span>Profile</span>
                                </a>
                                <hr class="my-2 mx-2">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cog"></i>
                                    <span class="split"></span>
                                    <span>Settings</span>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-sign-out-alt"></i>
                                    <span class="split"></span>
                                    <span>Sign Out</span>
                                </a>
                            </div>
                        </div>

                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Message board -->

    <div class="profile-header d-table pt-5 w-100 text-center" style="background-image: url(../assets/img/iceland.jpg);">
        <div class="container-fluid">
            <div class="container-inner text-white w-25 mx-auto">
                <img class="rounded-circle media-object" src="../assets/img/avatar-user.png" height="110" width="110">
                <h3 class="profile-header-user mt-3">
                    Dave Gamache &middot;
                    <span class="link-tag">@gamache</span>
                </h3>
                <p class="profile-header-bio">
                    I wish i was a little bit taller, wish i was a baller, wish i had a girl… also.

                </p>
            </div>
        </div>
        <nav class="profile-header-nav align-bottom" id="profile-header-nav">
            <ul class="nav justify-content-center" id="profile-pills-tab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="pills-media-tab" data-toggle="pill" href="#pills-media" role="tab" aria-controls="pills-media" aria-selected="true">
                        <i class="fas fa-photo-video"></i> Media
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-people-tab" data-toggle="pill" href="#pills-people" role="tab" aria-controls="pills-people" aria-selected="false">
                        <i class="fas fa-users"></i> People
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="pills-posts-tab" data-toggle="pill" href="#pills-posts" role="tab" aria-controls="pills-posts" aria-selected="false">
                        <i class="far fa-paper-plane"></i> Posts
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#edit-profile-modal" class="link-tag nav-link" data-toggle="modal" data-target="#edit-profile-modal" role="button" tabindex="-1">
                        <i class="fas fa-user-edit"></i> Edit Profile
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- The user profile edit modal -->
    <div id="edit-profile-modal" class="modal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">
                        <div class="fas fa-user-edit"></div> Edit Profile
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body p-0">
                    <div class="profile-header d-table pt-5 w-100 text-center" style="background-image: url(../assets/img/iceland.jpg); " id="bg-pic-preview">
                        <div class="container-fluid">
                            <div class="container-inner text-white w-25 mx-auto">
                                <div class="rounded-circle profile-pic-edit">
                                    <img class="rounded-circle media-object" id="profile-pic-preview" src="../assets/img/avatar-user.png" height="110" width="110">
                                    <i class="fas fa-camera"></i>
                                    <input type="file" name="profile-pic" id="profile-pic-upload">
                                </div>
                            </div>
                            <div class="container-inner text-white w-50 mt-5 mx-auto d-flex justify-content-around row">
                                <div class="bg-pic-edit">
                                    <a href="#bg-pic-upload">
                                        <i class="fas fa-camera"></i>
                                        <input type="file" name="bg-pic" id="bg-pic-upload">
                                    </a>
                                </div>
                                <div class="bg-pic-delete">
                                    <a href="#" class="">
                                        <i class="fas fa-trash-alt"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="p-3 edit-details">
                        <form>
                            <div class="row">
                                <div class="pl-3 w-100">
                                    <small>Name</small>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="First name">
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="Last name">
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="pl-3 w-100">
                                    <small>Username</small>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" placeholder="Username">
                                </div>
                            </div>
                            <div class="row pt-3">
                                <div class="pl-3 w-100"><small>Status</small></div>
                                <div class="col">
                                    <textarea class="form-control" placeholder="Status" rows="3"></textarea>
                                </div>
                            </div>
                            <div class="row pt-3 w-75">
                                <div class="ml-3 mr-2"><small>Birth Date</small></div>
                                <div class="col row">
                                    <select class="form-control col">
                                        <option value="1">01</option>
                                        <option value="2">02</option>
                                        <option value="3">03</option>
                                        <option value="4">04</option>
                                        <option value="5">05</option>
                                        <option value="6">06</option>
                                        <option value="7">07</option>
                                        <option value="8">08</option>
                                        <option value="9">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                    <select class="form-control col">
                                        <option value="Jan">January</option>
                                        <option value="Feb">February</option>
                                        <option value="Mar">March</option>
                                        <option value="Apr">April</option>
                                        <option value="May">May</option>
                                        <option value="Jun">June</option>
                                        <option value="Jul">July</option>
                                        <option value="Aug">August</option>
                                        <option value="Sep">September</option>
                                        <option value="Oct">October</option>
                                        <option value="Nov">November</option>
                                        <option value="Dec">December</option>
                                    </select>
                                    <select class="form-control col">
                                        <option value="1920">1920</option>
                                        <option value="1921">1921</option>
                                        <option value="1922">1922</option>
                                        <option value="1923">1923</option>
                                        <option value="1924">1924</option>
                                        <option value="1925">1925</option>
                                        <option value="1926">1926</option>
                                        <option value="1927">1927</option>
                                        <option value="1928">1928</option>
                                        <option value="1929">1929</option>
                                        <option value="1930">1930</option>
                                        <option value="1931">1931</option>
                                        <option value="1932">1932</option>
                                        <option value="1933">1933</option>
                                        <option value="1934">1934</option>
                                        <option value="1935">1935</option>
                                        <option value="1936">1936</option>
                                        <option value="1937">1937</option>
                                        <option value="1938">1938</option>
                                        <option value="1939">1939</option>
                                        <option value="1940">1940</option>
                                        <option value="1941">1941</option>
                                        <option value="1942">1942</option>
                                        <option value="1943">1943</option>
                                        <option value="1944">1944</option>
                                        <option value="1945">1945</option>
                                        <option value="1946">1946</option>
                                        <option value="1947">1947</option>
                                        <option value="1948">1948</option>
                                        <option value="1949">1949</option>
                                        <option value="1950">1950</option>
                                        <option value="1951">1951</option>
                                        <option value="1952">1952</option>
                                        <option value="1953">1953</option>
                                        <option value="1954">1954</option>
                                        <option value="1955">1955</option>
                                        <option value="1956">1956</option>
                                        <option value="1957">1957</option>
                                        <option value="1958">1958</option>
                                        <option value="1959">1959</option>
                                        <option value="1960">1960</option>
                                        <option value="1961">1961</option>
                                        <option value="1962">1962</option>
                                        <option value="1963">1963</option>
                                        <option value="1964">1964</option>
                                        <option value="1965">1965</option>
                                        <option value="1966">1966</option>
                                        <option value="1967">1967</option>
                                        <option value="1968">1968</option>
                                        <option value="1969">1969</option>
                                        <option value="1970">1970</option>
                                        <option value="1971">1971</option>
                                        <option value="1972">1972</option>
                                        <option value="1973">1973</option>
                                        <option value="1974">1974</option>
                                        <option value="1975">1975</option>
                                        <option value="1976">1976</option>
                                        <option value="1977">1977</option>
                                        <option value="1978">1978</option>
                                        <option value="1979">1979</option>
                                        <option value="1980">1980</option>
                                        <option value="1981">1981</option>
                                        <option value="1982">1982</option>
                                        <option value="1983">1983</option>
                                        <option value="1984">1984</option>
                                        <option value="1985">1985</option>
                                        <option value="1986">1986</option>
                                        <option value="1987">1987</option>
                                        <option value="1988">1988</option>
                                        <option value="1989">1989</option>
                                        <option value="1990">1990</option>
                                        <option value="1991">1991</option>
                                        <option value="1992">1992</option>
                                        <option value="1993">1993</option>
                                        <option value="1994">1994</option>
                                        <option value="1995">1995</option>
                                        <option value="1996">1996</option>
                                        <option value="1997">1997</option>
                                        <option value="1998">1998</option>
                                        <option value="1999">1999</option>
                                        <option value="2000">2000</option>
                                        <option value="2001">2001</option>
                                        <option value="2002">2002</option>
                                        <option value="2003">2003</option>
                                        <option value="2004">2004</option>
                                        <option value="2005">2005</option>
                                        <option value="2006">2006</option>
                                        <option value="2007">2007</option>
                                        <option value="2008">2008</option>
                                        <option value="2009">2009</option>
                                        <option value="2010">2010</option>
                                        <option value="2011">2011</option>
                                        <option value="2012">2012</option>
                                        <option value="2013">2013</option>
                                        <option value="2014">2014</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <div class="profile-content mx-auto mt-3">
        <div class="tab-content text-dark mx-auto" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-media" role="tabpanel" aria-labelledby="pills-media-tab">
                <div class="img-grid">
                    <div class="row w-100">
                        <div class="media-img">
                            <a href="../assets/img/125496-DSC00874_1920.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/125496-DSC00874_1920.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/126360-p6110227-pulvar1920.jpg" data-title="image quotation from post" data-lightbox="posted-images">
                                <img src="../assets/img/126360-p6110227-pulvar1920.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/avatar-user.png" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/avatar-user.png" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/avatar-other-1.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/avatar-other-1.jpg" alt=""></a>
                        </div>
                    </div>
                    <div class="row w-100">
                        <div class="media-img">
                            <a href="../assets/img/iceland.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/iceland.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/instagram_2.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/instagram_2.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/icon.svg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/icon.svg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/Screenshot from 2019-08-09 13-12-47.png" data-title="image quotation from post" data-lightbox="posted-images">
                                <img src="../assets/img/Screenshot from 2019-08-09 13-12-47.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="row w-100">
                        <div class="media-img">
                            <a href="../assets/img/new_icon.svg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/new_icon.svg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/instagram_2.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/instagram_2.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/avatar-other-1.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/avatar-other-1.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/Screenshot from 2019-08-09 13-12-47.png" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/Screenshot from 2019-08-09 13-12-47.png" alt=""></a>
                        </div>
                    </div>
                    <div class="row w-100">
                        <div class="media-img">
                            <a href="../assets/img/iceland.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/iceland.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/instagram_2.jpg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/instagram_2.jpg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/icon.svg" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/icon.svg" alt=""></a>
                        </div>
                        <div class="media-img">
                            <a href="../assets/img/Screenshot from 2019-08-09 13-12-47.png" data-title="image quotation from post" data-lightbox="posted-images"><img src="../assets/img/Screenshot from 2019-08-09 13-12-47.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-people" role="tabpanel" aria-labelledby="pills-people-tab">
                <div class="row w-50 mx-auto m-2">
                    <div class="col w-75 mx-auto mb-5">
                        <ul class="nav nav-tabs people-nav" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="followers-tab" data-toggle="tab" href="#followers" role="tab" aria-controls="followers" aria-selected="true">
                                    Followers
                                    <span class="font-weight-bold">(14k)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="following-tab" data-toggle="tab" href="#following" role="tab" aria-controls="following" aria-selected="false">
                                    Following
                                    <span class="font-weight-bold">(24k)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="liked-tab" data-toggle="tab" href="#liked" role="tab" aria-controls="liked" aria-selected="false">
                                    Saved
                                    <span class="font-weight-bold">(15)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="circles-tab" data-toggle="tab" href="#circles" role="tab" aria-controls="circles" aria-selected="false">
                                    Circles
                                    <span class="font-weight-bold">(20)</span>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <!-- Followers List -->
                            <div class="tab-pane fade show active" id="followers" role="tabpanel" aria-labelledby="followers-tab">
                                <ul class="media-list media-list-users list-group w-100 mx-auto">
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-outline-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Follow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- Following list -->
                            <div class="tab-pane fade" id="following" role="tabpanel" aria-labelledby="following-tab">
                                <ul class="media-list media-list-users list-group w-100 mx-auto">
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Unfollow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Unfollow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="media w-100">
                                            <a href="">
                                                <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                            </a>
                                            <div class="media-body align-self-center">
                                                <div class="row">
                                                    <div class="col-8 d-flex">
                                                        <a href="" class="text-dark">
                                                            <strong>Jacob Thornton</strong>
                                                            <span class="link-tag">@fat</span>
                                                        </a>
                                                    </div>
                                                    <div class="col-4">
                                                        <button class="btn btn-primary btn-sm float-right">
                                                            <span class="icon icon-add-user"></span> Unfollow
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <i class="fas fa-map-marker-alt text-secondary"></i>
                                                        <a href="" class="link-tag normal-link">Dodoma, Tanzania</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- Saved posts list -->
                            <div class="tab-pane fade" id="liked" role="tabpanel" aria-labelledby="liked-tab">
                                <ul class="list-group mb-4 saved-posts">
                                    <li class="list-group-item">
                                        <div class="media w-100 mx-auto my-auto">
                                            <a href="#">
                                                <img class="mr-3 rounded-circle" src="../assets/img/avatar-user.png" alt="Generic placeholder image" height="49" width="49">
                                            </a>
                                            <div class="media-body">
                                                <div class="mt-0 row">
                                                    <div class="flex-column col">
                                                        <div class="mb-0">
                                                            <a href="#" class="mb-0">
                                                                <h5 class="text-dark mb-0">
                                                                    Hector Camacho
                                                                    <span class="link-tag" style="font-weight: normal">@camacho</span>
                                                                </h5>
                                                            </a>
                                                        </div>

                                                        <div class="mt-0">
                                                            <span>
                                                                16h &middot; <i class="fas fa-globe-africa"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col d-flex flex-row-reverse dropleft post-menu">
                                                        <a href="#" class="link-tag" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                            <i class="fas fa-bars"></i>
                                                        </a>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fas fa-user-slash mr-1"></i>
                                                                <span>Unfollow</span>
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fas fa-volume-mute ml-1 mr-1"></i>
                                                                <span>Mute</span>
                                                            </a>
                                                            <a href="#" class="dropdown-item">
                                                                <i class="fas fa-ban ml-1 mr-1"></i>
                                                                <span>Block</span>
                                                            </a>
                                                            <a href="#" class="dropdown-item">
                                                                <i class="fas fa-flag ml-1 mr-1"></i>
                                                                <span>Report</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mt-0 ml-0 mr-0 text-dark">
                                                    <p>
                                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                                    </p>
                                                    <div class="post-media-grid">
                                                        <div class="mx-0 my-0 post-media w-100">
                                                            <img src="../assets/img/instagram_2.jpg " alt="">
                                                        </div>
                                                    </div>
                                                    <div class="action-buttons-row row mt-2">
                                                        <div class="col">
                                                            <a href="#" class="text-secondary comment-btn">
                                                                <i class="far fa-comment-alt"></i>
                                                                <span class="">15</span>
                                                            </a>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#" class="share-btn text-secondary">
                                                                <i class="fas fa-share-alt"></i>
                                                                <span>21</span>
                                                            </a>
                                                        </div>
                                                        <div class="col">
                                                            <a href="#" class="like-btn text-secondary">
                                                                <i class="far fa-heart"></i>
                                                                <span>5</span>
                                                            </a>
                                                        </div>
                                                        <div class="col dropleft post-menu">
                                                            <a href="#" class="save-btn text-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fas fa-bookmark"></i>
                                                            </a>
                                                            <div class="dropdown-menu m-0 p-0">
                                                                <a class="dropdown-item m-0 p-0 pl-1" href="#">
                                                                    <i class="fas fa-bookmark"></i>
                                                                    <span>Remove</span>
                                                                </a>
                                                                <a class="dropdown-item m-0 p-0 pl-1" href="#">
                                                                    <i class="fas fa-link"></i>
                                                                    <span>Copy Link</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- Circles list -->
                            <div class="tab-pane fade" id="circles" role="tabpanel" aria-labelledby="circles-tab">
                                <ul class="list-group w-100 mx-auto">
                                    <li class="list-group-item">
                                        <div class="row pl-3">
                                            <div class="col-8">
                                                <a href="#" class="normal-link text-dark mt-2 float-left">
                                                    <strong>CIVE SE Class of 2017</strong>
                                                </a>
                                            </div>
                                            <div class="col-4">
                                                <a href="#" class="danger-hover-btn text-secondary hover-btn float-right">
                                                    <i class="fas fa-minus-circle" data-toggle="tooltip" data-placement="top" title="Leave Circle"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <ul class="media-list media-list-users list-group w-100 mx-auto border-top">
                                            <li class="list-group-item">
                                                <div class="media w-100">
                                                    <a href="">
                                                        <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                                    </a>
                                                    <div class="media-body align-self-center">
                                                        <div class="row">
                                                            <div class="col-8 d-flex">
                                                                <a href="" class="text-dark">
                                                                    <strong>Jacob Thornton</strong>
                                                                    <span class="link-tag">@fat</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-4">
                                                                <button class="btn btn-primary btn-sm float-right">
                                                                    <span class="icon icon-add-user"></span> Unfollow
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <i class="fas fa-map-marker-alt text-secondary"></i>
                                                                <a href="" class="link-tag normal-link">Dodoma,
                                                                    Tanzania</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media w-100">
                                                    <a href="">
                                                        <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                                    </a>
                                                    <div class="media-body align-self-center">
                                                        <div class="row">
                                                            <div class="col-8 d-flex">
                                                                <a href="" class="text-dark">
                                                                    <strong>Jacob Thornton</strong>
                                                                    <span class="link-tag">@fat</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-4">
                                                                <button class="btn btn-primary btn-sm float-right">
                                                                    <span class="icon icon-add-user"></span> Unfollow
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <i class="fas fa-map-marker-alt text-secondary"></i>
                                                                <a href="" class="link-tag normal-link">Dodoma,
                                                                    Tanzania</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media w-100">
                                                    <a href="">
                                                        <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                                    </a>
                                                    <div class="media-body align-self-center">
                                                        <div class="row">
                                                            <div class="col-8 d-flex">
                                                                <a href="" class="text-dark">
                                                                    <strong>Jacob Thornton</strong>
                                                                    <span class="link-tag">@fat</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-4">
                                                                <button class="btn btn-primary btn-sm float-right">
                                                                    <span class="icon icon-add-user"></span> Unfollow
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <i class="fas fa-map-marker-alt text-secondary"></i>
                                                                <a href="" class="link-tag normal-link">Dodoma,
                                                                    Tanzania</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="row pl-3">
                                            <div class="col-8">
                                                <a href="#" class="normal-link text-dark mt-2 float-left">
                                                    <strong>Milambo High School Class of 2017</strong>
                                                </a>
                                            </div>
                                            <div class="col-4">
                                                <a href="#" class="danger-hover-btn text-secondary hover-btn float-right">
                                                    <i class="fas fa-minus-circle" data-toggle="tooltip" data-placement="top" title="Leave Circle"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <ul class="media-list media-list-users list-group w-100 mx-auto border-top">
                                            <li class="list-group-item">
                                                <div class="media w-100">
                                                    <a href="">
                                                        <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                                    </a>
                                                    <div class="media-body align-self-center">
                                                        <div class="row">
                                                            <div class="col-8 d-flex">
                                                                <a href="" class="text-dark">
                                                                    <strong>Jacob Thornton</strong>
                                                                    <span class="link-tag">@fat</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-4">
                                                                <button class="btn btn-primary btn-sm float-right">
                                                                    <span class="icon icon-add-user"></span> Unfollow
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <i class="fas fa-map-marker-alt text-secondary"></i>
                                                                <a href="" class="link-tag normal-link">Dodoma,
                                                                    Tanzania</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media w-100">
                                                    <a href="">
                                                        <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                                    </a>
                                                    <div class="media-body align-self-center">
                                                        <div class="row">
                                                            <div class="col-8 d-flex">
                                                                <a href="" class="text-dark">
                                                                    <strong>Jacob Thornton</strong>
                                                                    <span class="link-tag">@fat</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-4">
                                                                <button class="btn btn-primary btn-sm float-right">
                                                                    <span class="icon icon-add-user"></span> Unfollow
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <i class="fas fa-map-marker-alt text-secondary"></i>
                                                                <a href="" class="link-tag normal-link">Dodoma,
                                                                    Tanzania</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media w-100">
                                                    <a href="">
                                                        <img class="media-object rounded-circle mr-3" src="../assets/img/avatar-user.png">
                                                    </a>
                                                    <div class="media-body align-self-center">
                                                        <div class="row">
                                                            <div class="col-8 d-flex">
                                                                <a href="" class="text-dark">
                                                                    <strong>Jacob Thornton</strong>
                                                                    <span class="link-tag">@fat</span>
                                                                </a>
                                                            </div>
                                                            <div class="col-4">
                                                                <button class="btn btn-primary btn-sm float-right">
                                                                    <span class="icon icon-add-user"></span> Unfollow
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <i class="fas fa-map-marker-alt text-secondary"></i>
                                                                <a href="" class="link-tag normal-link">Dodoma,
                                                                    Tanzania</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-posts" role="tabpanel" aria-labelledby="pills-posts-tab">
                <ul class="list-group mb-4 w-75 mx-auto">
                    <li class="list-group-item">
                        <div class="media w-100 mx-auto my-auto">
                            <a href="#">
                                <img class="mr-3 rounded-circle" src="../assets/img/avatar-user.png" alt="Generic placeholder image" height="49" width="49">
                            </a>
                            <div class="media-body">
                                <div class="mt-0 row">
                                    <div class="flex-column col">
                                        <div class="mb-0">
                                            <a href="#" class="mb-0">
                                                <h5 class="text-dark mb-0">
                                                    Hector Camacho
                                                    <span class="link-tag" style="font-weight: normal">@camacho</span>
                                                </h5>
                                            </a>
                                        </div>

                                        <div class="mt-0">
                                            <span>
                                                16h &middot; <i class="fas fa-globe-africa"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col d-flex flex-row-reverse dropleft post-menu">
                                        <a href="#" class="link-tag" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-bars"></i>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">
                                                <i class="fas fa-user-slash mr-1"></i>
                                                <span>Unfollow</span>
                                            </a>
                                            <a class="dropdown-item" href="#">
                                                <i class="fas fa-volume-mute ml-1 mr-1"></i>
                                                <span>Mute</span>
                                            </a>
                                            <a href="#" class="dropdown-item">
                                                <i class="fas fa-ban ml-1 mr-1"></i>
                                                <span>Block</span>
                                            </a>
                                            <a href="#" class="dropdown-item">
                                                <i class="fas fa-flag ml-1 mr-1"></i>
                                                <span>Report</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="mt-0 ml-0 mr-0 text-dark">
                                    <p>
                                        Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                    </p>
                                    <div class="post-media-grid">
                                        <div class="mx-0 my-0 post-media w-100">
                                            <img src="../assets/img/instagram_2.jpg " alt="">
                                        </div>
                                    </div>
                                    <div class="action-buttons-row row mt-2">
                                        <div class="col">
                                            <a href="#" class="text-secondary comment-btn">
                                                <i class="far fa-comment-alt"></i>
                                                <span class="">15</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="share-btn text-secondary">
                                                <i class="fas fa-share-alt"></i>
                                                <span>21</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="like-btn text-secondary">
                                                <i class="far fa-thumbs-up"></i>
                                                <span>5</span>
                                            </a>
                                        </div>
                                        <div class="col dropleft post-menu">
                                            <a href="#" class="save-btn text-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="far fa-bookmark"></i>
                                            </a>
                                            <div class="dropdown-menu m-0 p-0">
                                                <a class="dropdown-item m-0 p-0 pl-1" href="#">
                                                    <i class="far fa-bookmark"></i>
                                                    <span>Save</span>
                                                </a>
                                                <a class="dropdown-item m-0 p-0 pl-1" href="#">
                                                    <i class="fas fa-link"></i>
                                                    <span>Copy Link</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>



    <script src="../../../assets/js/jquery-3.3.1.min.js"></script>
    <script src="../../../assets/js/popper.min.js"></script>
    <!-- <script src="assets/js/chart.js"></script> -->
    <script src="../../../assets/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
    <script src="../../../node_modules/lightbox2/dist/js/lightbox.min.js"></script>
    <script src="../assets/js/application.js"></script>
</body>

</html>