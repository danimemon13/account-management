<!-- jQuery -->
<script src="<?php echo base_url(); ?>vendor/jquery.min.js"></script>

<!-- Bootstrap -->
<script src="<?php echo base_url(); ?>vendor/popper.js"></script>
<script src="<?php echo base_url(); ?>vendor/bootstrap.min.js"></script>

<script src="<?php echo base_url(); ?>vendor/Chart.min.js"></script>
<script src="<?php echo base_url(); ?>vendor/moment.min.js"></script>
<script src="<?php echo base_url(); ?>vendor/dateformat.js"></script>
<script src="<?php echo base_url(); ?>vendor/bootstrap-datepicker.min.js"></script>

<script src="<?php echo base_url(); ?>js/color_variables.js"></script>
<script src="<?php echo base_url(); ?>js/app.js"></script>


<script src="<?php echo base_url(); ?>vendor/dom-factory.js"></script>
<!-- DOM Factory -->
<script src="<?php echo base_url(); ?>vendor/material-design-kit.js"></script>
<!-- MDK -->



<script>
    (function() {
        
        'use strict';

        // Self Initialize DOM Factory Components
        domFactory.handler.autoInit()

        // Connect button(s) to drawer(s)
        var sidebarToggle = Array.prototype.slice.call(document.querySelectorAll('[data-toggle="sidebar"]'))

        sidebarToggle.forEach(function(toggle) {
            toggle.addEventListener('click', function(e) {
                var selector = e.currentTarget.getAttribute('data-target') || '#default-drawer'
                var drawer = document.querySelector(selector)
                if (drawer) {
                    drawer.mdkDrawer.toggle()
                }
            })
        })
    
        //////////////////////////////////////////
        // BREAK OUT OF ENVATO LIVE DEMO IFRAME //
        //////////////////////////////////////////

        window.top.location.hostname !== window.location.hostname && (window.top.location = window.location)

    })();

</script>
<script src="<?php echo base_url(); ?>vendor/bootstrap-switch.min.js"></script>
<script src="<?php echo base_url(); ?>vendor/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url(); ?>js/datepicker.js"></script>
<script src="<?php echo base_url(); ?>vendor/fullcalendar.min.js"></script>
<script src="<?php echo base_url(); ?>js/calendars.js"></script>
<script src="<?php echo base_url(); ?>vendor/select2.full.min.js"></script>
