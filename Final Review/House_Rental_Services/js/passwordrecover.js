

var otp="";
function generateOtp(){
  for(var i=0;i<5;i++){
    otp=otp +Math.floor(Math.random()*10)+"";
  }

  var to=document.getElementById("email").value;

  var subject = "password changing HOUSE RENTAL SYSTEMS",
  body = " you tried to change the password foe the HOUSE RENTAL SYSTEMS,"+
  "the otp for password changing is "+otp +"<br><br><br>Thanks & Regards,<br>HOUSE RENTAL SYSTEMS.<br>";
  sendEmail(to,subject,body);
}

function validateotp(){
  var otp1 = document.prform.OTP;
  var otp2 = otp1.value;
  if(otp2==otp){
	
    alert("otp is correct");
    document.getElementById('password1').disabled=false;
    document.getElementById('password2').disabled=false;
	document.getElementById("submitbutton").disabled=false;
    alert("enter password");
    document.getElementById('password1').focus=();
	
  }
  else{
    alert("your otp  is wrong");
    document.getElementsByName("OTP").focus();
    return false;
  }
}


function valpass(){
  var p1 = document.prform.password1;
  var p2 = document.prform.password2;
  if(p1.value==p2.value){
    return true;
  }
  else{
    alert("enter the correct passwords");
    document.getElementById("password1").focus();
    return false;
  }
}
