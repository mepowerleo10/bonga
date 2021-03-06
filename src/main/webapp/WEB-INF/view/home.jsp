<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">

    <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/custom-bootstrap/custom.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fontawesome-5.9.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/node_modules/lightbox2/dist/css/lightbox.min.css">
    <link href="${pageContext.request.contextPath}/assets/css/improved.css" rel="stylesheet">

    <style>
        .list-group-item:first-child {
            border-top-right-radius: 0;
            border-top-left-radius: 0;
        }

        .list-group-item:last-child {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
    </style>

</head>

<body>
    <div id="app-growl"></div>
    <nav class="navbar navbar-expand-lg fixed-top bg-primary app-navbar mx-auto d-xl-inline-flex">
        <div class="d-flex justify-content-between w-100 mx-5">
            <a href="../" class="logo-header d-none d-md-none d-lg-none d-xl-inline-flex">
                <img src="../assets/svg/icon.svg" alt="bonga_icon" height="42" width="42" />
            </a>
            <form class="form-inline my-auto my-lg-0 d-none d-md-none d-lg-none d-xl-inline-flex">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                    autocomplete="off">
                <button class="btn btn-outline-light form-control my-2 my-sm-0 input-group-prepend" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </form>
            <div class="row ml-auto d-flex justify-content-end" id="navbarSupportedContent">
                <ul class="nav navbar-nav">
                    <li class="nav-item active">
                        <a href="../" class="nav-link position-relative d-flex justify-content-between">
                            <i class="fas fa-home my-auto"></i>
                            <span class="nav-item-badge bg-danger"></span>
                            <span class="d-none  d-xl-block">Home</span>

                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="messages/" class="nav-link position-relative d-flex justify-content-between">
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
                        <a href="#" class="icon-link"><i class="fas fa-bell"></i></a>
                    </li>
                    <li class="nav-item ml-2 d-none d-lg-block d-xl-block">
                        <div class="dropdown my-menu">
                            <button class="btn btn-outline-primary rounded-circle p-0 dropdown-toggle"
                                aria-haspopup="true" data-toggle="dropdown">
                                <img id="nav-user-avatar" src="" alt="" class="avatar-me m-0 bg-placeholder">
                            </button>
                            <div class="dropdown-menu mt-3" aria-labelledby="dropdownMenu2">
                                <a class="dropdown-item" href="profile/">
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
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/logout">
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

    <div class="mx-auto mb-3 main-content w-100">
        <div class="mx-auto w-100 row">
            <div class="col-3 pr-3 d-none d-md-none d-lg-none d-xl-block">
                <div class="card mb-4 w-100 rounded-0">
                    <div class="bg-div bg-placeholder"
                        style="background-image: url('../assets/img/placeholder-grey.jsp.png');"></div>
                    <div class="position-relative">
                        <a href="" class="pl-3 w-50"><img id="side-card-avatar" src="" alt=""
                                class="home-avatar bg-placeholder"></a>
                        <strong class="home-username ml-2 w-50"><a href="" class="text-reset row">
                                <span id="me-fullname" class="col-12 text-truncate" data-toggle="tooltip"
                                    data-placement="top" title="">${user.firstName} ${user.lastName}</span>
                                <br>
                                <span id="me-usertag" class="link-tag col-12 text-truncate" data-toggle="tooltip"
                                    data-placement="top" title="">${user.username}</span>
                            </a></strong>
                        <p id="me-status" class="text-center mb-4 px-4">
                        </p>
                        <ul class="list-unstyled mx-auto w-75 text-center row">
                            <li class="d-inline col">
                                <a href="" class="link-tag normal-link">
                                    Followers
                                    <strong id="me-followers">2k</strong>
                                </a>
                            </li>
                            <li class="d-inline border-left col">
                                <a href="" class="link-tag normal-link">
                                    Following
                                    <strong id="me-following">2k</strong>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card mb-4 w-100 p-3 rounded-0">
                    <strong>Trending</strong>
                    <ul class="list-group" id="trending">
                        <li class="list-group-item border-0 p-1"><a href="#tag-1"
                                class="link-tag normal-link">#tag-1</a></li>
                        <li class="list-group-item border-0 p-1"><a href="#tag-2"
                                class="link-tag normal-link">#tag-2</a></li>
                        <li class="list-group-item border-0 p-1"><a href="#tag-3"
                                class="link-tag normal-link">#tag-3</a></li>
                        <li class="list-group-item border-0 p-1"><a href="#tag-4"
                                class="link-tag normal-link">#tag-4</a></li>
                        <li class="list-group-item border-0 p-1"><a href="#tag-5"
                                class="link-tag normal-link">#tag-5</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-6 col-md-12  px-3">
                <ul class="list-group mb-4 mx-auto" id="posts-list">
                    <li class="list-group-item p-2" id="new-post">
                        <div class="w-100 mx-auto row p-0">
                            <a class="col-11" href="create-postModal" data-toggle="modal"
                                data-target="#create-postModal">
                                <textarea name="" id="" rows="1" class="form-control w-100"
                                    placeholder="Create a new post..."></textarea>
                            </a>
                            <a href="add-imageModal" class="col-1 border-left link-tag my-auto position-relative"
                                data-toggle="modal" data-target="#add-imageModal" id="picture-upload">
                                <input type="file" name="picture-upload-file" id="picture-upload-file">
                                <i class="my-auto fas fa-camera fa-lg"></i>
                            </a>
                        </div>
                        <!-- New post Modal -->
                        <div class="modal fade" id="create-postModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content rounded-0">
                                    <div class="modal-header p-3">
                                        <span class="">New post</span>
                                        <button type="button" class="close primary-hover-btn" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-3 position-relative">
                                        <textarea name="new-post-txt" id="new-post-txt"
                                            rows="8" class="border-0 font-weight-normal w-100" placeholder="What's on your mind..."></textarea>
                                        <!-- <div class="row create-post-avatar pl-3">
                                            <img src="../" alt="">
                                        </div> -->
                                    </div>
                                    <div class="modal-footer">
                                        <button id="create-post-btn" type="button"
                                            class="btn btn-primary btn-sm disabled">Save
                                            changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Add picture Modal -->
                        <div class="modal fade" id="add-imageModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        ...
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li id="post-card" class="list-group-item">
                        <div class="media w-100 mx-auto my-auto">
                            <a href="#" style="height: 49px; width: 49px;">
                                <img class="mr-3 rounded-circle bg-placeholder" id="post-card-img"
                                    src="../assets/img/placeholder-grey.jsp.png" alt="Generic placeholder image"
                                    height="49" width="49">
                            </a>
                            <div class="media-body">
                                <div class="mt-0 row">
                                    <div class="flex-column col-10">
                                        <div class="mb-0">
                                            <a href="#" class="mb-0">
                                                <h5 class="text-dark mb-0 bg-placeholder bg-animate" id="post-fullname">
                                                    &nbsp;
                                                    <span class="link-tag" id="post-usertag"
                                                        style="font-weight: normal"></span>
                                                </h5>
                                            </a>
                                        </div>
                                        <div class="mt-0">
                                            <span>
                                                <span id="post-timestamp">&nbsp;</span>
                                                <i id="post-visibility" class="fas fa-globe-africa"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-2 d-flex flex-row-reverse dropleft post-menu">
                                        <a href="#" class="link-tag" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
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
                                    <p class="bg-placeholder" id="post-textbody">
                                        &nbsp;
                                    </p>
                                    <div class="post-media-grid">
                                        <div class="mx-0 my-0 post-media w-100">
                                            <a id="post-image" href="assets/img/instagram_2.jpg" data-title="Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                                            scelerisque ante sollicitudin. Cras purus odio,
                                            vestibulum in vulputate at, tempus viverra turpis. Fusce
                                            condimentum nunc ac nisi vulputate fringilla. Donec
                                            lacinia congue felis in faucibus." data-lightbox="image-1">
                                                <img src="../assets/img/placeholder-grey.jsp.png" alt="">
                                            </a>

                                        </div>
                                    </div>
                                    <div class="action-buttons-row row mt-2">
                                        <div class="col">
                                            <a href="#" class="text-secondary comment-btn">
                                                <i class="far fa-comment-alt"></i>
                                                <span class="" id="comment-count"></span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="share-btn text-secondary">
                                                <i class="fas fa-share-alt"></i>
                                                <span id="share-count"></span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a href="#" class="like-btn text-secondary">
                                                <i class="far fa-thumbs-up"></i>
                                                <span id="like-count"></span>
                                            </a>
                                        </div>
                                        <div class="col dropleft post-menu">
                                            <a href="#" class="save-btn text-secondary" data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false">
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
            <div class="col-3 px-3 d-none d-md-none d-lg-none d-xl-block">
                <ul class="media-list media-list-users list-group w-100 mx-auto mb-4">
                    <li class="list-group-item p-2">
                        <strong>Suggested</strong>
                    </li>
                    <li class="list-group-item p-2">
                        <div class="media w-100">
                            <a href="">
                                <img class="media-object rounded-circle mr-3 bg-placeholder" src="">
                            </a>
                            <div class="media-body align-self-center">
                                <div class="row">
                                    <div class="col-8 d-flex">
                                        <a href="" class="text-dark">
                                            <strong class="bg-placeholder">&nbsp;</strong>
                                            <span class="link-tag bg-placeholder">&nbsp;</span>
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
                                        <i class="fas fa-map-marker-alt text-secondary bg-placeholder"></i>
                                        <a href="" class="link-tag normal-link bg-placeholder">&nbsp;</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class=" border-top">
                    <div class="">
                        &copy; 2019 bonga! &middot;
                        <a href="#" class="link-tag normal-link m-2">About</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Help</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Terms</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Privacy</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Cookies</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Ads </a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Info</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Brand</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Blog</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Status</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Apps</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Jobs</a> &middot;
                        <a href="#" class="link-tag normal-link m-2">Advertise</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/assets/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
    <!-- <script src="assets/js/chart.js"></script> -->
    <script src="${pageContext.request.contextPath}/assets/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/node_modules/autosize/dist/autosize.min.js"></script>
    <script src="${pageContext.request.contextPath}/node_modules/lightbox2/dist/js/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>

</html>