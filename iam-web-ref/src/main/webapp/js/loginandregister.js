function SigninValidation(form) {
	var sEpmty="";
	var Requi ="Required Fields :";
	var sMessage = sEpmty;
	
    if (document.forms.loginForm.email.value == sEpmty) {
    	sMessage = sMessage + "- Email" + '\n';
        document.forms.loginForm.email.focus();
    }
    if (document.forms.loginForm.inputPassword.value == sEpmty) {
    	sMessage = sMessage + "- Password" + '\n';
        document.forms.loginForm.pwd.focus();
    }
    if (sMessage != sEpmty) {
		sMessage = Requi + '\n' + sMessage;
		alert(sMessage);
		return false;
	} else{
		return true;
	}
}


function RegistrationValidation(form) {
	
	var sEpmty="";
	var Requi ="Required Fields :"
	var sMessage = sEpmty;
	
	
	if (document.forms.loginForm.name.value == sEpmty) {
		sMessage = sMessage + "- UserName" + '\n';
	    document.forms.loginForm.name.focus();
	}

	if (document.forms.loginForm.email.value == sEpmty) {
		sMessage = sMessage + "- Email" + '\n';
		document.forms.loginForm.email.focus();
	}
	
	
	if (document.forms.loginForm.inputPassword.value == sEpmty) {
		sMessage = sMessage + "- Password" + '\n';
		document.forms.loginForm.pwd.focus();
	}
	
	
	if (document.forms.loginForm.inputPassword.value != document.forms.loginForm.inputPassword.value){
		 sMessage = sMessage + "- confirm passwprd" + '\n';
	     document.forms.loginForm.pwd.focus();
	}
	 
	if (document.forms.loginForm.Country.value == sEpmty) {
		 sMessage = sMessage + "- Country" + '\n';   
	     document.forms.loginForm.country.focus();
	 }
	if (document.forms.loginForm.Street.value == sEpmty) {
		 	sMessage = sMessage + "- Street" + '\n';    
		 	document.forms.loginForm.street.focus();
	    }
	if (document.forms.loginForm.City.value == sEpmty) {
	    	sMessage = sMessage + "- City" + '\n'; 
	        document.forms.loginForm.city.focus();
	    }
	if (document.forms.loginForm.Zipcode.value == sEpmty) {
	    	 sMessage = sMessage + "- Zipcode" + '\n'; 
	        document.forms.loginForm.Zipcode.focus();
	   }

	
	if (sMessage != sEpmty) {
		sMessage = Requi + '\n' + sMessage;
		alert(sMessage);
		return false;
	} else{
		return true;
	}

}