<div class="d-flex flex-column position-relative h-100">
<nav class="navbar navbar-expand-md navbar-light"> 
    <a class="navbar-brand" href="../dashboard/"> 
    <img src="../imgs/logo/logo.png"/> 
    <!-- SVG Logo --> 
     </a>
    <button class="navbar-toggler navbar-toggler-right d-md-none d-lg-none" type="button" data-toggle="sidebar"> <span class="navbar-toggler-icon"></span> </button>
    <div class="collapse navbar-collapse" id="mainNavbar">
      <ul class="navbar-nav ml-auto ">
        <li class="nav-item  align-self-center">
          <div class="nav-link">
          <div class="navbar--stats">
            <div class="navbar--stats--icon"> <i class="material-icons align-middle">email</i> </div>
            <div class="navbar--stats--text align-self-center"> <a href="#">124</a> </div>
          </div>
        </li>
        <li class="nav-item dropdown notifications align-self-center" id="navbarNotifications"> 
        <a href="#" class="nav-link dropdown-toggle nav-link-active" data-toggle="dropdown" aria-expanded="false"> 
        <i class="material-icons align-middle">notifications_active</i> </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="notificationsDropdown" id="notificationsDropdown">
            <ul class="nav nav-tabs-notifications d-flex px-0" id="notifications-ul" role="tablist">
              <li class="nav-item"> <a class="nav-link active" id="notifications-tab" data-toggle="tab" href="#notifications" role="tab" aria-controls="notifications" aria-selected="true">Notifications</a> </li>
              <li class="nav-item"> <a class="nav-link" id="alerts-tab" data-toggle="tab" href="#alerts" role="tab" aria-controls="alerts" aria-selected="false">Alerts</a> </li>
              <li class="nav-item"> <a class="nav-link" id="messages-tab" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Messages</a> </li>
            </ul>
            <div class="tab-content" id="notifications-tabs">
              <div class="tab-pane fade show active" id="notifications" role="tabpanel" aria-labelledby="notifications-tab">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">
                    <div class="w-100"><a href="#">john</a> received a new quote</div>
                    <div class="w-100 text-muted">4 secs ago</div>
                  </li>
                  <li class="list-group-item">
                    <div class="w-100"><a href="#">karen</a> received a new quote</div>
                    <div class="w-100 text-muted">25 mins ago</div>
                  </li>
                  <li class="list-group-item">
                    <div class="w-100"><a href="#">jim</a> received a new quote</div>
                    <div class="w-100 text-muted">7 hrs ago</div>
                  </li>
                  <li class="list-group-item text-right"> <a href="#"> <span class="align-middle">View All</span> <i class="material-icons md-18 align-middle">arrow_forward</i> </a> </li>
                </ul>
              </div>
              <div class="tab-pane fade" id="alerts" role="tabpanel" aria-labelledby="alerts-tab">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">
                    <div class="media align-items-center"> <i class="material-icons align-middle mr-2 text-warning"> info_outline </i>
                      <div class="media-body">
                        <div class="w-100"><a href="profile.html">john</a> received a new <a href="#">quote</a></div>
                        <div class="w-100 text-muted">4 secs ago</div>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item">
                    <div class="media align-items-center"> <i class="material-icons align-middle mr-2 text-success"> check_circle </i>
                      <div class="media-body">
                        <div class="w-100"><a href="profile.html">karen</a> completed a <a href="#">task</a></div>
                        <div class="w-100 text-muted">25 mins ago</div>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item">
                    <div class="media align-items-center"> <i class="material-icons align-middle mr-2 text-danger"> warning </i>
                      <div class="media-body">
                        <div class="w-100"><a href="profile.html">jim</a> removed a <a href="#">task</a></div>
                        <div class="w-100 text-muted">7 hrs ago</div>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item text-right"> <a href="#"> <span class="align-middle">View All</span> <i class="material-icons md-18 align-middle">arrow_forward</i> </a> </li>
                </ul>
              </div>
              <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">
                    <div class="media align-items-center"> <a href="profile.html"> <img src="" class="img-fluid rounded-circle mr-2" width="35" alt=""> </a>
                      <div class="media-body">
                        <div class="w-100">I started that project we talked...</div>
                        <div class="w-100 text-muted">4 secs ago</div>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item">
                    <div class="media align-items-center"> <a href="profile.html"> <img src="" class="img-fluid rounded-circle mr-2" width="35" alt=""> </a>
                      <div class="media-body">
                        <div class="w-100">Can we arrange a meeting?...</div>
                        <div class="w-100 text-muted">25 mins ago</div>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item">
                    <div class="media align-items-center"> <a href="profile.html"> <img src="" class="img-fluid rounded-circle mr-2" width="35" alt=""> </a>
                      <div class="media-body">
                        <div class="w-100">We need to fix some bugs...</div>
                        <div class="w-100 text-muted">7 hrs ago</div>
                      </div>
                    </div>
                  </li>
                  <li class="list-group-item text-right"> <a href="#"> <span class="align-middle">View All</span> <i class="material-icons md-18 align-middle">arrow_forward</i> </a> </li>
                </ul>
              </div>
            </div>
          </div>
        </li>
        <li class="nav-item dropdown emails align-self-center"> <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <i class="material-icons align-middle">email</i> </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="emailsDropdown" id="emailsDropdown">
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <div class="media align-items-center"> <a href="profile.html"> <img src="../imgs/users/dani-memon.jpg" class="img-fluid rounded-circle mr-2" width="35" alt=""> </a>
                  <div class="media-body">
                    <div class="w-100">New project</div>
                    <div class="w-100 text-muted">I started that project we talked...</div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="media align-items-center"> <a href="profile.html"> <img src="../imgs/users/dani-memon.jpg" class="img-fluid rounded-circle mr-2" width="35" alt=""> </a>
                  <div class="media-body">
                    <div class="w-100">ASAP meeting</div>
                    <div class="w-100 text-muted">Can we arrange a meeting?...</div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="media align-items-center"> <a href="profile.html"> <img src="../imgs/users/dani-memon.jpg" class="img-fluid rounded-circle mr-2" width="35" alt=""> </a>
                  <div class="media-body">
                    <div class="w-100">Need help</div>
                    <div class="w-100 text-muted">We need to fix some bugs...</div>
                  </div>
                </div>
              </li>
              <li class="list-group-item text-right"> <a href="#"> <span class="align-middle">View All</span> <i class="material-icons md-18 align-middle">arrow_forward</i> </a> </li>
            </ul>
          </div>
        </li>
        <li class="nav-item dropdown nav-dropdown"> <a href="#" class="nav-link dropdown-toggle dropdown-clear-caret" data-toggle="dropdown" aria-expanded="false"> Dashboard <img src="../imgs/users/dani-memon.jpg" class="img-fluid rounded-circle ml-1" width="35" alt=""> </a>
          <div class="dropdown-menu dropdown-menu-right dropdown-menu-account">
            <div class="account-info"> <img src="../imgs/users/dani-memon.jpg" class="img-fluid rounded-circle mr-2" width="45" alt="">
              <div class="lh-12"> <a href="profile.html"><strong>Dani Memon</strong></a>
                <div class="text-light">Full Stack Developer</div>
              </div>
            </div>
            <ul class="list-unstyled account-menu">
              <li><a href="../account/" class="dropdown-item "><i class="material-icons md-18 align-middle mr-1">account_circle</i> <span class="align-middle">Profile</span></a></li>
              <hr class="my-1">
              <li> <a href="#" class="dropdown-item"> <i class="material-icons md-18 align-middle mr-1">build</i> <span class="align-middle">Development Support</span> </a> </li>
              <hr class="my-1">
              <li><a href="../logout.php" class="dropdown-item"><i class="material-icons md-18 align-middle mr-1">exit_to_app</i> <span class="align-middle">Logout</span></a></li>
            </ul>
          </div>
        </li>
      </ul>
    </div>
  </nav>