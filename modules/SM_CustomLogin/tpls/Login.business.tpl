{*
/******************************
 * Extension Name: White Label Login for SuiteCRM
 * Description: White Label your Suite CRM to create your own branded custom login page.
 * Version: 1.0
 *
 *This 3rd party module should retain the "Powered by Smackcoders" logo and link in an appropriate manner in its location.
 *
 *Portions created by Smackcoders, Inc.
 *All Rights Reserved.
 *Cont\ributor(s): Smackcoders **
 *Author URI: https://www.smackcoders.com
 */

/*********************************************************************************
 * White Label Login is a Tool for SuiteCRM to create branded login page
 * developed by Smackcoders. Copyright (C) 2019 Smackcoders.
 *
 * This module is a free software; you can redistribute it and/or
 * modify it under the terms of the GNU Affero General Public License version 3
 * as published by the Free Software Foundation with the addition of the
 * following permission added to Section 15 as permitted in Section 7(a): FOR
 * ANY PART OF THE COVERED WORK IN WHICH THE COPYRIGHT IS OWNED BY SMACKCODERS,
 * SMACKCODERS DISCLAIMS THE WARRANTY OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This module is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program; if not, see http://www.gnu.org/licenses or write
 * to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA.
 *
 * You can contact Smackcoders at email address projects@smackcoders.com.
 *
 * The interactive user interfaces in original and modified versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License
 * version 3, these Appropriate Legal Notices must retain the display of the
 * Smackcoders copyright notice. If the display of the logo is not reasonably
 * feasible for technical reasons, the Appropriate Legal
 * Notices must display the words
 * "Copyright Smackcoders. 2019. All rights reserved".
 ********************************************************************************/
*}
{literal}
<script>
function switchLanguage(lang){
        var loc=window.location+"";
}
function set_focus(){if(document.DetailView.user_name.value!=''){document.DetailView.username_password.focus();document.DetailView.username_password.select();}
else document.DetailView.user_name.focus();}
function switchLanguage(lang){var loc=window.location+"";}
function toggleDisplay(id){if(this.document.getElementById(id).style.display=='none'){document.getElementById('form').style.display='none'; document.getElementById('forgotPasswordDiv').style.display='contents';this.document.getElementById(id).style.display='inline'
if(this.document.getElementById(id+"link")!=undefined){this.document.getElementById(id+"link").style.display='none';}
document.getElementById(id+"_options").src='index.php?entryPoint=getImage&themeName='+SUGAR.themes.theme_name+'&imageName=basic_search.gif';document.getElementById(id+"_options").alt=LBL_HIDEOPTIONS;}else{ document.getElementById('form').style.display='inline';this.document.getElementById(id).style.display='none'
if(this.document.getElementById(id+"link")!=undefined){this.document.getElementById(id+"link").style.display='inline';}
document.getElementById(id+"_options").src='index.php?entryPoint=getImage&themeName='+SUGAR.themes.theme_name+'&imageName=advanced_search.gif';document.getElementById(id+"_options").alt=LBL_SHOWOPTIONS;}}
function generatepwd(){document.getElementById('generate_pwd_button').value='Please Wait';document.getElementById('generate_pwd_button').disabled=1;document.getElementById('wait_pwd_generation').innerHTML='<img src="themes/default/images/img_loading.gif" >';var callback;callback={success:function(o){document.getElementById('generate_pwd_button').value=LBL_LOGIN_SUBMIT;document.getElementById('generate_pwd_button').disabled=0;document.getElementById('wait_pwd_generation').innerHTML='';checkok=o.responseText;if(checkok.charAt(0)!='1')
document.getElementById('generate_success').innerHTML=checkok;if(checkok.charAt((checkok.length)-1)=='1')
document.getElementById('generate_success').innerHTML=LBL_REQUEST_SUBMIT;},failure:function(o){document.getElementById('generate_pwd_button').value=LBL_LOGIN_SUBMIT;document.getElementById('generate_pwd_button').disabled=0;document.getElementById('wait_pwd_generation').innerHTML='';alert(SUGAR.language.get('app_strings','LBL_AJAX_FAILURE'));}}
postData='&to_pdf=1&module=Home&action=index&entryPoint=GeneratePassword&user_name='+document.getElementById("fp_user_name").value+'&Users0emailAddress0='+document.getElementById("fp_user_mail").value+'&link=1';YAHOO.util.Connect.asyncRequest('POST','index.php',callback,postData);}
$(function(){if(SUGAR.isIECompatibilityMode()){$("#ie_compatibility_mode_warning").show();}
else if(!SUGAR.isSupportedBrowser()){$("#browser_warning").show();}});

</script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900');
    body {
    font-family: 'Roboto', sans-serif;
    font-size:16px;
    }
    .container{
    width:100%;
    height:100%;
    background-size:cover;
    padding:0px;
    background-position:center right;
    }
    .background-img{
    background:url("modules/SM_CustomLogin/templates/business/background.jpeg") no-repeat left center;
    background-size: cover;
    width: 60%;
    height: 100%;
    position: absolute;
    }
    .error{
     color:red;
     background-color:white;
    } 

    .bckgrd{
    width:40%;
    height:100vh;
    background:#fafafa;
    float:right !important;
    }
    .form-content{
    display: flex;
    align-items: center;
    }
    .help{
    text-decoration:none;
    margin-left:10px;
    color:#9f9e9e;
    }
    .help:hover{
    text-decoration:underline;
    color:#fff;
    }
    .back{
    text-decoration:none;
    margin-left:10px;
    color:#9f9e9e;
    }
    .back:hover{
    text-decoration:underline;
    color:#fff;
    }
    .p0{
    padding: 0px !important;
    }
    .mt-15{
    margin-top:15px !important;
    }
    .mt-30{
    margin-top:30px !important;
    }
    .mtb-50{
    margin:50px 0px;
    }
    .mt-50{
    margin-top:50px;
    }
    .mt-150{
    margin-top:150px;
    }
    .white-color{
    color:white;
    }
    .purple-color{
    color:#ab2ec8;
    }
    .gray-color{
    color:gray;
    }
    .text-center{
    text-align:center;
    }
    .form-image{
    width:40%;
    height:100%;
    background:url("layouts/v7/modules/Users/images4/Radar.jpg");
    background-size:cover;
    text-align:center;
    }
    .form-content{
    width:100%;
    height:100%;
    float:right;
    color:#aaa;
    }
    .mtb{
    margin:30px 100px !important;
    }
    .input-group{
    width: 80% !important;
    /*margin: auto;*/
    display: inline-block !important;
    margin-bottom: 15px;
    }
    .input-group .login{
    width: 100% !important;
    font-family: 'Roboto', sans-serif;
    border:1px solid #e8e8e8 !important;
    color: #303030;
    border-radius: 4px !important;
    padding:10px 10px !important;
    font-size:16px !important;
    background:#fff !important;
    }
    .input-group .login:focus{
    border-color: #0389ff !important;
    box-shadow: 0px 0px 8px 1px rgba(3, 137, 255, 0.1) !important;
    outline: none !important;
    }
    :required:invalid{
    box-shadow:none;
    }
    .btn-login{
    border:1px solid transparent !important;
    border-radius: 3px !important;
    padding:5px 65px !important;
    height: auto !important;
    font-size:16px !important;
    background:#0389ff !important;
    color:white;
    min-width: auto !important;
    }
    .btn-login:hover{
    cursor:pointer;
    background:linear-gradient(36deg, #0dd3ff, #0389ff) !important;
    border: 1px solid transparent !important;
    border-color: transparent !important;
    color:#fff !important;
    transition: all 0.5s;
    }
    .left-align{
    float:left;
    }
    .right-align{
    float:right;
    }
    .forgotpasslink a{
    color: red;
    }
    #page{
    padding:0% !important;
    margin:0% !important;
    }
    .ico{
    /*margin: 20px auto 20px;*/
    text-align: center;
    width: 200px;
    margin-bottom: 25px;
    }
    .ico img{
    width: 100%;
    height: auto;
    }
    .heading{
    font-weight: 400;
    font-size: 30px;
    margin-bottom: 15px;
    color: #666;
    }
    .input-group label{
    margin-bottom: 0px;
    font-weight: 500;
    }
    @media screen and (max-width:620px){
    .form-image{
    display:none;
    }
    .background-bg{
    width: 100% !important;
    }
    .input-group{
    width: 100% !important;
    }
    .bckgrd{
    width:100% !important;
    }
    .background-img{
    display: none !important;
    }
    .form-content{
    width:100% !important;
    height: auto !important;
    overflow:hidden;
    }
    .mtb{
    margin:20px 30px !important;
    }
    .mtb-50{
    margin:20px 0px;
    }
    .mt-50{
    margin-top:50px;
    }
    .login{
    width:100%;
    }

    }
    .powered-by{
            display: inline-block;
            position: fixed;
            bottom: 20px;
            right: 180px;
            font-size: 12px;
     }
      .container {
    width:400px;
    padding:0px;
    z-index:1000;
    opacity:1 !important;
    }
</style>
{/literal}
{strip}
<div id="page">
    <div class="containers">
        <div class="background-img"></div>
        <div class="bckgrd">
            <div class="form-content">
            <div class="container">
             <div class="ico">
                            {$LOGIN_IMAGE}
                        </div>
                <div id="loginDiv">
                    <div class="">
                        <div class="heading">
                            Login
                        </div>
                    </div>
                    <form class="form-signin" role="form" action="index.php" method="post" name="DetailView" id="form"
                        onsubmit="return document.getElementById('cant_login').value == ''" autocomplete="off">
                        <span class="error" id="browser_warning" style="display:none">
                        {sugar_translate label="WARN_BROWSER_VERSION_WARNING"}
                        </span>
                        <span class="error" id="ie_compatibility_mode_warning" style="display:none">
                        {sugar_translate label="WARN_BROWSER_IE_COMPATIBILITY_MODE_WARNING"}
                        </span>
                        {if $LOGIN_ERROR !=''}
                        <span class="error" style="font-size:14px">{$LOGIN_ERROR}</span>
                        {if $WAITING_ERROR !=''}
                        <span class="error">{$WAITING_ERROR}</span>
                        {/if}
                        {else}
                        <span id='post_error' class="error" style="display:none"></span>  
                        {/if}
		 	<br>
                        <input type="hidden" name="module" value="Users">
                        <input type="hidden" name="action" value="Authenticate">
                        <input type="hidden" name="return_module" value="Users">
                        <input type="hidden" name="return_action" value="Login">
                        <input type="hidden" id="cant_login" name="cant_login" value="">
                        {foreach from=$LOGIN_VARS key=key item=var}
                        <input type="hidden" name="{$key}" value="{$var}">
                        {/foreach}
			<div>
                            <label for="select_language">Select Language</label>
                            <select name="login_language" id="selectLanguage" autocomplete="off" onchange="switchLanguage(this.value)" style="height:40px" class="control-group input-group">
                            {foreach from=$SELECT_LANGUAGE key=head item=ans}
                                <option value="{$head}">{$ans}</option>
                            {/foreach}
                            </select>                       
                        </div>
			 <br>

                        <div class="control-group input-group">
                            <label for="user_name">USERNAME</label>
                            <input type="text" class="login" required id="user_name" name="user_name" value='' autocomplete="off">
                            <span class="bar"></span>
                        </div>
                        <div class="control-group input-group">
                            <label for="username_password">PASSWORD</label>
                            <input type="password" class="login" id="username_password" name="username_password" value='' autocomplete="off">
                            <span class="bar"></span>
                        </div>
			 <div class="p0 forgotpasslink" id="forgotpasslink" style="cursor: pointer;color:red;"
                                onclick='toggleDisplay("forgot_password_dialog");'>
                                <div class="controls" id="forgotPassword">
                                   <a href='javascript:void(0)'>forgot password?</a>
                                </div>
                                </div>

                        <div class="control-group input-group mt-30">
                            <input id="bigbutton" class="btn-login" type="submit" class="btn-login" value="Login" />
                        </div>
                    </form>
                </div>
                <div class="powered-by">Powered by <a href="https://www.smackcoders.com/?utm_source=whitelabellogin&utm_medium=suitemodule&utm_campaign=freemodule">Smackcoders</a></div>
                <div id="forgotPasswordDiv"  style="display:none;">
                    <form class="form-signin passform" role="form" action="index.php" method="post" name="DetailView" id="form" name="fp_form" id="fp_form" autocomplete="off" >
                        <div id="forgot_password_dialog">
                            <input type="hidden" name="entryPoint" value="GeneratePassword">
                            <div id="generate_success" class='error' style="display:inline;"></div>
                            <br>
                            <div class="control-group input-group">
                                <label for="fp_user_name">User name</label>
                                <input type="text" class="login" size='26' id="fp_user_name" name="fp_user_name"
                                    value='' placeholder="Username" autocomplete="off">
                                <span class="bar"></span>
                            </div>
                            <br>
                            <div class="control-group input-group">
                                <label for="fp_user_mail">Email</label>
                                <input type="text" class="login" size='26' id="fp_user_mail" name="fp_user_mail" value='' placeholder="Email" autocomplete="off">
                                <span class="bar"></span>
                            </div>
			    <div class="p0 forgotpasslink" id="forgotpasslink" style="cursor: pointer;"
                                    onclick='toggleDisplay("forgot_password_dialog");'>
                                    <div class="controls" id="forgotPassword">
                                        <a href='javascript:void(0)'>Back to Login</a>
                                    </div>
                                </div>
                            <div id='wait_pwd_generation'></div>
                            <div class="input-group">
                                <input title="Email Temp Password" class="btn-login" type="button" style="display:inline" onclick="validateAndSubmit(); return document.getElementById('cant_login').value == ''" id="generate_pwd_button" name="fp_login" value="Submit" autocomplete="off">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
             </div>
        </div>
    </div>
</div>
{/strip}
