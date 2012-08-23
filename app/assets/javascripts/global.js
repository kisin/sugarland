$(document).ready(function() 
{
	$("form").submit(function(){
		var $email = $("#signup-email"),
			$usertype = $("#signup-type"),
			$this = $(this);

		if ($this.data("enable"))
		{
			return false;
		}

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

		//start working on form
		$email.addClass("disabled");
		$usertype.addClass("disabled");
		$this
			.data("enable", "1")
			.append('<img class="loader" src="http://mysugar-landing-assets.s3.amazonaws.com/images/loader.gif" alt="אנא המתן" />');

		return true;
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