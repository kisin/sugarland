$(document).ready(function() 
{
	$("form").submit(function(){
		var $email = $("#signup-email"),
			$usertype = $("#signup-type");

		if (!$email.val().length || !validateEmail($email.val()))
		{
			alert("אין טעם לנסות להירשם ללא כתובת דואר אלקטרוני תקינה");
			return false;
		}

		if (!$usertype.find("option:selected").val().length || !isNumber($usertype.find("option:selected").val()))
		{
			alert("אין צורך להתחכם, בחר/י את סוג המשתמש שאת/ה מעוניין בו");
			return false;
		}
	});

	function validateEmail(email) 
	{ 
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA	-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(email);
	} 

	function isNumber(n) 
	{
		return !isNaN(parseFloat(n)) && isFinite(n);
	}
});