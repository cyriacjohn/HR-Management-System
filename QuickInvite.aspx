<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuickInvite.aspx.cs" Inherits="QuickInvite.aspx.QuickInvite" %>

<!DOCTYPE html>

<html>
<head>
    <!-- CSS FILES -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" href="css/light_theme.css" type="text/css" />

    <!-- JS FILES -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/light_theme.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- MATERIAL ICONS -->
    <!--<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">-->
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">

    <!-- FONT AWESOME ICONS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
</head>
<body>
    <div class="side_menu">
        <div class="side_menu_top_bar">
            <span class="side_menu_top_bar_cap">Module Title</span>
            <a href="javascript:void(0)" class="close_side_menu"><i class="material-icons">close</i></a>
        </div>
        <div class="side_menu_inner">
            <div class="profile_intro">
                <div class="photo" style="background-image: url(Images/photo-02.jpg)">
                    <span class="profile_intro_status"></span>
                </div>
                <div class="profile_intro_name">
                    Roger A Davis
                </div>
                <div class="profile_det">
                    <span>Emptrust Solutions</span>
                </div>
                <a href="#" class="edit_profile">
                    <i class="material-icons">settings</i>
                </a>
            </div>
            <div class="quick_btn">
                <a href="#" class="btn_item material_ico_base settings_ico">Button Title</a>
            </div>
            <div class="page_link_group">
                <div class="page_link_group_title">
                    Quick Links
                </div>
                <div class="dropdown page_link_group_item">
                    <a href="javascript:void(0)" class="page_link_group_item_cap" data-toggle="dropdown" aria-expanded="false">
                        <i class="material-icons ico">supervisor_account</i>
                        Main Menu title
                    </a>
                    <ul class="dropdown-menu page_link_dropdown">
                        <li>
                            <a href="#">
                                <i class="material-icons ico">library_books</i>
                                Sub Menu 1
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">
                                <i class="material-icons ico">mail</i>
                                Sub Menu 2
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="material-icons ico">circle_notifications</i>
                                Sub Menu 3
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="footer_logo">
                <img src="Images/logo.svg">
            </div>
        </div>
    </div>
    <div class="light_theme_main_panel">
        <header>
            <div class="container-fluid-ad max_width_ad">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo">
                            <img src="Images/emptrust-header-logo.jpeg" />
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="header_search_box">
                            <i class="material-icons ico">keyboard</i>
                            <input type="text" placeholder="Search Applicants, Jobs, etc">
                            <button type="submit"><i class="material-icons">search</i></button>
                        </div>
                        <ul class="header_nav">
                            <li>
                                <a href="#" class="not_icon">
                                    <div class="user_panel">
                                        <div class="user_panel_photo" style="background-image: url(Images/photo-02.jpg)">
                                            <span class="user_panel_status"></span>
                                        </div>
                                        <div class="user_panel_details">
                                            <p class="user_panel_details_name">Roger A Davis</p>
                                            <p class="user_panel_details_org_name">Emptrust Solutions</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="material-icons ico">home</i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="material-icons ico">headset_mic</i>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="javascript:void(0)" data-toggle="dropdown">
                                    <span class="noti"></span>
                                    <i class="material-icons ico">question_answer</i>
                                </a>
                                <div class="dropdown-menu header_dropdown">
                                    <div class="header_dropdown_header">Inbox</div>
                                    <div class="header_dropdown_list">
                                        <div class="header_dropdown_list_item">
                                            <div class="photo" style="background-image: url(Images/photo-024.jpg)"></div>
                                            <div class="details">
                                                <a href="javascript:void(0)" class="name">Robert Mark Owen
                                                        <span class="date">2h</span>
                                                </a>
                                                <div class="message">Hello.. Did you check the new applicant?</div>
                                            </div>
                                        </div>
                                        <div class="header_dropdown_list_item">
                                            <div class="photo" style="background-image: url(Images/user-pic.png)"></div>
                                            <div class="details">
                                                <a href="javascript:void(0)" class="name">Lena Johnson
                                                        <span class="date">Mar 29</span>
                                                </a>
                                                <div class="message">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione</div>
                                            </div>
                                        </div>
                                        <div class="header_dropdown_list_item">
                                            <div class="photo" style="background-image: url(Images/photo-03.jpg)"></div>
                                            <div class="details">
                                                <a href="javascript:void(0)" class="name">Ann white
                                                        <span class="date">6h</span>
                                                </a>
                                                <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                            </div>
                                        </div>
                                        <div class="header_dropdown_list_item">
                                            <div class="photo" style="background-image: url(Images/photo-01.jpg)"></div>
                                            <div class="details">
                                                <a href="javascript:void(0)" class="name">Angelina Jefferson
                                                        <span class="date">Mar 29</span>
                                                </a>
                                                <div class="message">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione</div>
                                            </div>
                                        </div>
                                        <div class="header_dropdown_list_item">
                                            <div class="photo" style="background-image: url(Images/photo-03.jpg)"></div>
                                            <div class="details">
                                                <a href="javascript:void(0)" class="name">Ann white
                                                        <span class="date">6h</span>
                                                </a>
                                                <div class="message">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
                                            </div>
                                        </div>
                                        <div class="header_dropdown_list_item">
                                            <div class="photo" style="background-image: url(Images/photo-01.jpg)"></div>
                                            <div class="details">
                                                <a href="javascript:void(0)" class="name">Angelina Jefferson
                                                        <span class="date">Mar 29</span>
                                                </a>
                                                <div class="message">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione</div>
                                            </div>
                                        </div>
                                        <a href="#" class="load_more">Load More</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <span class="noti"></span>
                                    <i class="material-icons ico">notifications_none</i>
                                </a>
                            </li>
                            <li>
                            <li>
                                <a href="javascript:void(0)"><i class="material-icons ico">exit_to_app</i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="quick_links">
            <div class="container-fluid-ad max_width_ad">
                <div class="row">
                    <div class="col-md-10">
                        <ul class="quick_links_list">
                            <li><a href="javascript:void(0)" class="side_menu_trigger"><i class="material-icons ico">sort</i>Menu</a></li>
                            <li><a href="javascript:void(0)">
                                <img src="Images/home.svg" class="qLink_ico">Home</a></li>
                            <li><a href="javascript:void(0)">
                                <img src="Images/submit_query.svg" class="qLink_ico">Quick Invite</a></li>
                            <li><a href="javascript:void(0)">
                                <img src="Images/case_status.svg" class="qLink_ico">View Status</a></li>
                            <li><a href="javascript:void(0)">
                                <img src="Images/dashboard.svg" class="qLink_ico">Dashboard</a></li>
                            <li><a href="javascript:void(0)">
                                <img src="Images/report.svg" class="qLink_ico">Reports</a></li>
                            <li><a href="javascript:void(0)">
                                <img src="Images/folder.svg" class="qLink_ico">Resources</a></li>
                        </ul>
                    </div>
                    <div class="col-md-2">
                        <div class="module_navigation">
                            <select>
                                <option>Talent Manager</option>
                                <option>I-9 Forms</option>
                                <option>E-Verify</option>
                                <option selected="">EMP-Onboard</option>
                                <option>HR Central</option>
                                <option>System Settings</option>
                                <option>User Administration</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_content">
            <div class="container-fluid-ad max_width_ad">
                <div class="row">
                    <div class="col-md-12">
                        <div class="toolbar_panel">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="toolbar_panel_btn_group">
                                        <a href="javascript:void(0)" class="toolbar_panel_btn material_ico_base back_ico cancel_btn">CANCEL</a>
                                        <div class="page_head pull-left">
                                            <i class="material-icons page_head_icon">library_books</i>
                                            Quick Invite
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="toolbar_panel_btn_group right">

                                        <a href="#" class="toolbar_panel_btn hightlighted material_ico_base search_ico side_panel_trigger" data-tar="#search-employees">SEARCH EMPLOYEE
                                        </a>
                                        <ul class="dropdown-menu general_dropdown right_pos">
                                            <li><a href="#">Menu Item 1</a></li>
                                            <li><a href="#">Menu Item 2</a></li>
                                            <li><a href="#">Menu Item 3</a></li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <form id="form1" runat="server">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box_panel general_box_shadow min_height">
                                <!-- Place your layout here -->

                                <div class="general_form_box with_bg with_gradient mar_btm_20">
                                    <div class="general_form_box_title">New Hire Basic Details</div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <div class="switch_control">
                                                    <label class="general_form_box_label">Is Rehire</label>
                                                    <input id="switch_id" type="checkbox" hidden="" checked="" />
                                                    <label for="switch_id" class="switch_box"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Prefix</label>
                                                <div class="select_container">
                                                    <select class="general_form_box_select_box">
                                                        <option>Option 1</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Employee ID</label>
                                                <input type="text" class="general_form_box_input_field">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">First Name</label>
                                                <input type="text" class="general_form_box_input_field">
                                            </div>
                                        </div>

                                        <div class="row mar-adjust">
                                            <div class="col-md-3">
                                                <div class="general_form_box_element_set padding-error">
                                                    <label class="general_form_box_label">Middle Name</label>
                                                    <input type="text" class="general_form_box_input_field">
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="general_form_box_element_set">
                                                    <label class="general_form_box_label">Last Name</label>
                                                    <input type="text" class="general_form_box_input_field">
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="general_form_box_element_set">
                                                    <label class="general_form_box_label">Suffix</label>
                                                    <div class="select_container">

                                                        <select class="general_form_box_select_box">
                                                            <option>Option 1</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-3">
                                                <div class="general_form_box_element_set">
                                                    <label class="general_form_box_label">Work Location</label>
                                                    <div class="select_container">
                                                        <select class="general_form_box_select_box">
                                                            <option>--select a work location--</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mar-adjust">
                                                <div class="col-md-3">
                                                    <div class="general_form_box_element_set">
                                                        <label class="general_form_box_label">Last Name</label>
                                                        <input type="text" class="general_form_box_input_field">
                                                    </div>

                                                </div>

                                                <div class="col-md-3">
                                                    <div class="general_form_box_element_set">
                                                        <label class="general_form_box_label">Job Title</label>
                                                        <div class="select_container">
                                                            <select class="general_form_box_select_box">
                                                                <option>Option 1</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="switch_control">
                                                        <label class="general_form_box_label">Use SMS Text</label>
                                                        <input id="switch_id1" type="checkbox" hidden="" checked="" />
                                                        <label for="switch_id1" class="switch_box"></label>
                                                    </div>
                                                </div>

                                                <div class="col-md-3">
                                                    <div class="general_form_box_element_set">
                                                        <label class="general_form_box_label">Phone Number</label>
                                                        <input type="text" class="general_form_box_input_field">
                                                    </div>

                                                </div>




                                            </div>
                                        </div>
                                    </div>


                                </div>



                                <div class="general_form_box with_bg with_gradient mar_btm_20">
                                    <div class="general_form_box_title">Wage Details</div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Wage Rate</label>
                                                <input type="text" class="general_form_box_input_field" />

                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Currency</label>
                                                <div class="select_container">
                                                    <select class="general_form_box_select_box">
                                                        <option>Option</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Pay Period</label>
                                                <div class="select_container">
                                                    <select class="general_form_box_select_box">
                                                        <option>Option</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Pay Frequency</label>
                                                <div class="select_container">
                                                    <select class="general_form_box_select_box">
                                                        <option>Options</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>



                                    </div>

                                    <div class="general_form_box_title separator ">Allowance</div>
                                    <div class="row ">
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Pay Rate OT</label>
                                                <input type="text" class="general_form_box_input_field" />

                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Mobilization Allowance</label>
                                                <input type="text" class="general_form_box_input_field" />

                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Per Diem Amount</label>
                                              <input type="text" class="general_form_box_input_field" />

                                            </div>
                                        </div>

                                    </div>



                                    <div class="general_form_box_with_bg with_gradient mar_btm_20">
                                        <div class="row mar-adjust">
                                            <div class="grid_box_grid_table bordered vAlign_middle no_min_height">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th>Deductions
                                                            </th>
                                                            <th style="width: 150px">Total
                                                            </th>
                                                            <th style="width: 150px">Per Pay Period
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>LOP</td>
                                                            <td>
                                                                <input type="text" />
                                                            </td>
                                                            <td>
                                                                <input type="text" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>PF</td>
                                                            <td>
                                                                <input type="text" />
                                                            </td>
                                                            <td>
                                                                <input type="text" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Welfare</td>
                                                            <td>
                                                                <input type="text" />
                                                            </td>
                                                            <td>
                                                                <input type="text" />

                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Total Wage</td>
                                                            <td>
                                                                <input type="text" />
                                                            </td>
                                                            <td></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="general_form_box with_bg with_gradient mar_btm_20">
                                    <div class="general_form_box_title">Benefit & PTO Details</div>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Medical and Dental Waiting Period (Days)</label>
                                                <input type="text" class="general_form_box_input_field">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">Insurance Maximum</label>
                                                <input type="text" class="general_form_box_input_field">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">PTO Accrual Rate Per Month (Days)</label>
                                                <input type="text" class="general_form_box_input_field">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="general_form_box_element_set">
                                                <label class="general_form_box_label">PTO Total For First Year (Days)</label>
                                                <input type="text" class="general_form_box_input_field">
                                            </div>
                                        </div>

                                    </div>





                                </div>

                                <div class="general_form_box with_bg with_gradient mar_btm_20">
                                    <div class="general_form_box_title">Custom Variables in Offer Letter</div>
                                    <div class="row">
                                        <div class="col-xs-12  ">
                                            <div class="general_form_box_element_set">

                                                <textarea class="general_form_box_textarea_field"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="general_form_box mar_btm_20">
                                    <div class="row">
                                        <div class="col-md-12 text-center">
                                            <div class="general_form_box_btn_group center">
                                                <button class="general_form_box_btn submit">Save and Continue</button>
                                                <button class="general_form_box_btn preview">Invite</button>
                                                <button class="general_form_box_btn lite">Clear</button>
                                                <button class="general_form_box_btn cancel">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
            </div>
            </form>
        </div>
    </div>

    <footer>
        <div class="container-fluid-ad max_width_ad">
            <div class="row">
                <div class="col-md-4">
                    <div class="copyright_text">
                        © EMPTRUST Solutions 2008 - 2019 All Rights Reserved
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="footer_logo">
                        <img src="Images/emp%20logo_transparent.png" width="130">
                    </div>
                </div>
                <div class="col-md-4">
                    <ul class="footer_links">
                        <li><a href="#">Report a problem</a></li>
                        <li><a href="#">Customer Support</a></li>
                        <li><a href="#">Send a Feedback</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
</body>
</html>

