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
 *Contributor(s): Smackcoders **
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
function toggleDisplay(id){if(this.document.getElementById(id).style.display=='none'){ document.getElementById('form').style.display='none'; document.getElementById('forgotPasswordDiv').style.display='contents';this.document.getElementById(id).style.display='inline'
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
    @import url('https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900');
    #page{
    padding-top:0%;
    }
    body{
    font-family: 'Montserrat', sans-serif;
    font-weight:300 !important;
    font-size:16px;
    }
    .p0{
    padding: 0px !important;
    }
    .ico{
    margin: 20px auto 20px;
    text-align: center;
    width: 200px;
    }
    .ico img{
    width: 100%;
    height: auto;
    }
    .error{
     color:red;
     background-color:rgba(255, 255, 255, 0.3);
     border : none;
    } 

    .login-form{
    width:100%;
    background:url("modules/SM_CustomLogin/templates/bebbles/background.jpeg") no-repeat center center;
    background-size:cover;
    height:100%;
    color:white;
    position:absolute !important;
    }
    .bck-grd{
    width:100%;
    height:100%;
    background-size:cover;
    background:rgba(0,0,0,0.1);
    position:absolute;
    align-items: center;
    } 
    .text-center{
    text-align: center;
    }
    .container {
    width:400px;
    padding:0px;
    z-index:1000;
    opacity:1 !important;
    }
    .input-group{
    width: 100%;
    margin-bottom: 15px;
    }
    .input-group label{
    font-weight: 500;
    }
    .login {
    padding: 10px 15px !important;
    border: none !important;
    border-radius: 0px !important;
    color:#303030;
    font-family: 'Montserrat', sans-serif;
    }
    .login:focus {
    outline: none !important;
    background: #fff !important;
    }
    .done{
    font-family: 'Montserrat', sans-serif;
    background: #418e48 !important;
    color: white !important;
    padding: 7px 25px !important;
    border: 2px solid #418e48 !important;
    font-size: 16px !important;
    margin-top: 15px !important;
    font-weight: 700 !important;
    height: auto !important;
    width: 100%;
    }
    .done:hover{
    background-color: #45a74e !important;
    border-color: #45a74e !important;
    cursor:pointer;
    }
    .mt-30{
    margin-top:30px;
    }
    .help .help:focus{ 
    font-size:16px;
    color:white;
    text-decoration:none;
    }
    .help:hover{
    color:#bcbaba;
    }
    .signin {
    position: relative;
    width:100%;
    margin-bottom: 30px;
    }
    .signin input {
    font-family: 'Montserrat', sans-serif;
    font-weight:400 !important;
    border: none;
    border-bottom: 1px solid #bcbaba;
    padding:10px;
    display: block;
    width:100%;
    background: #bcbaba !important;
    overflow:hidden;
    font-size:16px !important;
    color:#fff;
    }
    .signin input:focus {
    outline: none;
    }
    .signin input:focus ~ label, .signin input:valid ~ label {
    top: -10px;
    font-size: 14px;
    color:#bcbaba;
    }
    .signin label {
    font-family: 'Montserrat', sans-serif;
    font-weight:400 !important;
    position: absolute;
    color: #fff;
    top: 12px;
    left: 0;
    -webkit-transition: 0.2s ease all;
    transition: 0.2s ease all;
    }
    .bar {
    position: relative;
    display: block;
    width: 100%;
    }
    .bar:before {
    content: "";
    position: absolute;
    left: 50%;
    right: 50%;
    bottom: 0;
    background:#fff;
    height: 2px;
    -webkit-transition: left 0.5s ease-out, right 0.5s ease-out;
    transition: left 0.5s ease-out, right 0.5s ease-out;
    }
    input:focus ~ .bar:before {
    left: 0;
    right: 0;
    }
    :required:invalid{
    box-shadow:none;
    }
    .align-left{
    float:left;
    }
    .background-bg{
    height: 100%;
    width: 40%;
    position: absolute;
    right: 0;
    background: rgba(255, 255, 255, 0.3);
    display: flex;
    align-items: center;
    justify-content: center;
    }
    @media screen and (max-width: 620px){
    .container{
    width:100%;
    overflow:hidden;
    margin-right: auto;
    padding: 30px;
    }
    .background-bg{
    width: 100%;
    height: auto;
    }
    }
    .powered-by{
        display: inline-block;
        position: fixed;
        bottom: 20px;
        right: 180px;
        font-size: 12px;
     }
     .powered-by a{
        
     }
</style>
{/literal}
<script type='text/javascript'>
</script>
{strip}
<div id="page">
    <div class="login-form">
        <div class="bck-grd">
            <div class="background-bg">
                <div class="container">
                    <div class="ico">
                        {$LOGIN_IMAGE}
                    </div>
                    <div class=""  id="loginDiv">
                        <form class="form-signin" role="form" action="index.php" method="post" name="DetailView" id="form"
                            onsubmit="return document.getElementById('cant_login').value == ''" autocomplete="off">
                            <span class="error" id="browser_warning" style="display:none">
                            {sugar_translate label="WARN_BROWSER_VERSION_WARNING"}
                            </span>
                            <span class="error" id="ie_compatibility_mode_warning" style="display:none">
                            {sugar_translate label="WARN_BROWSER_IE_COMPATIBILITY_MODE_WARNING"}
                            </span>
                            {if $LOGIN_ERROR !=''}
                            <span class="error" style="font-size:15px">{$LOGIN_ERROR}</span>
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
                            <br>
			    <div>
                                <label for="select_language">Select Language</label>
                                <select name="login_language"  id="selectLanguage" autocomplete="off" onchange="switchLanguage(this.value)" class="control-group input-group" style="height:40px">
			      {foreach from=$SELECT_LANGUAGE key=head item=ans}
                                     <option value="{$head}">{$ans}</option>
			     {/foreach}
                            </select>
                            </div>
			    <br>
                            <div class="control-group input-group">
                                <label for="user_name">USERNAME</label>
                                <input type="text" class="login" required id="user_name" name="user_name" value='' autocomplete="off">
                            </div>
                            <div class="control-group input-group">
                                <label for="username_password">PASSWORD</label>
                                <input type="password" class="login" id="username_password" name="username_password" value='' autocomplete="off">
                            </div>
                            <div class="p0 forgotpasslink" id="forgotpasslink" style="cursor: pointer;"
                                onclick='toggleDisplay("forgot_password_dialog");'>
                                <div class="controls" id="forgotPassword">
                                   <a href='javascript:void(0)'>forgot password?</a>
                                </div>
                                </div> 
                            <div class="control-group">
                                <input id="bigbutton" class="done" type="submit" class="btn-login" value="Login" />
                            </div>
                        </form>
                        <div class="powered-by">Powered by <a href="https://www.smackcoders.com/?utm_source=whitelabellogin&utm_medium=suitemodule&utm_campaign=freemodule">Smackcoders</a></div>
			</div>
		    <div class="login"   id="forgotPasswordDiv" style="display:none;">
                        <form class="form-signin passform" role="form" action="index.php" method="post" name="DetailView" id="form" name="fp_form" id="fp_form" autocomplete="off">
                            <div id="forgot_password_dialog" style="display:none">
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
                                <br>
                                <div class="p0 forgotpasslink" id="forgotpasslink" style="cursor: pointer;"
                                    onclick='toggleDisplay("forgot_password_dialog");'>
                                    <div class="controls" id="forgotPassword">
                                        <a href='javascript:void(0)'>Back to Login</a>
                                    </div>
                                </div>
                                <div id='wait_pwd_generation'></div>
                                <input title="Email Temp Password" class="done" type="button" style="display:inline" onclick="validateAndSubmit(); return document.getElementById('cant_login').value == ''" id="generate_pwd_button" name="fp_login" value="Submit" autocomplete="off">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>
</div>
{/strip}
