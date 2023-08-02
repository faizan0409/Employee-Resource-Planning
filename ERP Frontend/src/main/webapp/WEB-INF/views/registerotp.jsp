<!DOCTYPE link PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page isELIgnored="false" %>
<html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
<style>
.card {
    width: 350px;
    padding: 10px;
    border-radius: 20px;
    background: #fff;
    border: none;
    height: 430px;
    position: relative
}
timer{
  background-color:#419D78;
  color:#EFD0CA;
  font-size:20px;
  text-align:center;
}
.container {
    height: 100vh
}

body {
    background: #eee
}

.text-success {
    color: #989696b8;
    font-size: 12px
}

.form-control {
    margin-right: 12px
}

.form-control:focus {
    color: #495057;
    background-color: #fff;
    border-color: #ff8880;
    outline: 0;
    box-shadow: none
}

.cursor {
    cursor: pointer
}

</style>

<script>
var mins = 2; 
var secs = mins * 60; 
        function countdown() { 
        	
            setTimeout('Decrement()', 60); 
        } 
  
        //Decrement function decrement the value. 
        function Decrement() { 
            if (document.getElementById) { 
                minutes = document.getElementById("minutes"); 
                seconds = document.getElementById("seconds"); 
  
                //if less than a minute remaining 
                //Display only seconds value. 
                if (seconds < 59) { 
                    seconds.value = secs; 
                } 
  
                //Display both minutes and seconds 
                //getminutes and getseconds is used to 
                //get minutes and seconds 
                else { 
                    minutes.value = getminutes(); 
                    seconds.value = getseconds(); 
                } 
                //when less than a minute remaining 
                //colour of the minutes and seconds 
                //changes to red 
                if (mins < 1) { 
                    minutes.style.color = "red"; 
                    seconds.style.color = "red"; 
                } 
                //if seconds becomes zero, 
                //then page alert time up 
                if (mins < 0) { 
                    alert('time up'); 
                    minutes.value = 0; 
                    seconds.value = 0; 
                } 
                //if seconds > 0 then seconds is decremented 
                else { 
                    secs--; 
                    setTimeout('Decrement()', 1000); 
                } 
            } 
        } 
  
        function getminutes() { 
           
            mins = Math.floor(secs / 60); 
            return mins; 
        } 
  
        function getseconds() { 
            //take minutes remaining (as seconds) away  
            //from total seconds remaining 
            return secs - Math.round(mins * 60); 
        } 
        $(function(){
            setTimeout(function(){
                $("#otp").hide();
                }, 5000);
              });
        
       
      </script> 
    <body onload="countdown();"> 
<form role="form" data-toggle="validator"  action="verifyotp">
<div class="d-flex justify-content-center align-items-center container">
    <div class="card py-5 px-3">
        <h5 class="m-0"><h3>OTP verification</h5><span class="text-success">Enter the code we just send on your Email and Mobile.</span>
       	<div  id="sleep" ><h3 align="center"style="color: red">${otpstatus}</h3></div>
       <input id="email" style="display:none" value="${emailId}" name="emailId">
       <input id="otp" style="display:none" value="${otp }" name="otp">
       <div>Email OTP</div>
        <div class="d-flex flex-row mt-2">
        <input type="text" required maxlength="1" class="form-control" autofocus="" name="otp1"><input type="text"  required maxlength="1"class="form-control" name="otp2"><input type="text" required maxlength="1" class="form-control" name="otp3"><input type="text"  required maxlength="1"class="form-control" name="otp4"></div>
       <!--  <div>Mobile OTP</div>
        <div class="d-flex flex-row mt-2">
        <input type="text"  required maxlength="1" class="form-control" autofocus=""><input type="text" required maxlength="1"class="form-control"><input type="text"  required maxlength="1" class="form-control"><input type="text" required maxlength="1"class="form-control"></div> -->
             
  		 <div> 
        Time Left &nbsp;&nbsp;
        <input id="minutes" type="text" style="width: 20px; 
             border: none; font-size: 16px;  
            font-weight: bold; color: black;"><font size="5" > : 
                        </font> 
        <input id="seconds" type="text" style="width: 25px; 
                        border: none; font-size: 16px; 
                        font-weight: bold; color: black;"> 
    </div> 

        
        <div class="text-center mt-3"><span class="d-block mobile-text">Don't receive the code?</span>
        <a href="registerotp"class="btn btn-link" style="color: red">Resend</a>  
           </div>

    	<div class="w3-show-inline-block">
  <div class="w3-bar">
    <button class="btn btn-info" id="submit"  type="submit" value="">Verify</button>
    
    <a href="registration" class="btn  btn-info">Cancel</a>
  </div>
  </div>
		 
    </div>
</div>
</form>
</body> 
  
</html> 
