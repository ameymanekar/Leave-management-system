


<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>Registration Page</title>
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- stylesheets -->
	<link rel="stylesheet" href="style.css" type="text/css" media="all">
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>HOD Registration</h1>
	</div>
		<div class="container">
			<div class="agile-form">
                            <script>
    function myFunction() {
        var pass1 = document.getElementById("pass").value;
        var pass2 = document.getElementById("rpass").value;
        if (pass1 != pass2) {
            alert("Passwords Do not match");
            document.getElementById("pass").style.borderColor = "#E34234";
            document.getElementById("rpass").style.borderColor = "#E34234";
        }
        else {
            alert("Passwords Match!!!");
            document.getElementById("regForm").submit();
        }
    }
</script>
<form action="hodadd.jsp" onsubmit="return myFunction()">
					<ul class="field-list">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" pattern="[A-Z a-z]+" name="name" placeholder="<%=(String)session.getAttribute("userid")%>" required>
								
							</div>
						</li>
						<li> 
							<label class="form-label"> E-Mail Address <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="email" name="email" placeholder="Mail@example.com" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> Phone Number <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" pattern="[1,2,3,4,5,6,7,8,9,0]{10}" name="contactno" placeholder="Phone Number" maxlength="10" required >
							</div>
						</li>
                                               
						<li>
							<label class="form-label"> Gender <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">Gender</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									</select>
							</div>
						</li>
						<li>
							<label class="form-label"> department<span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="department" required>
                                                                    <option value="">department</option>
									<option value="BCA">BCA</option>
 
   <option value="BSC">BSC</option>
   <option value="BBA">BBA</option>

								</select>
							</div>
						</li>
                                                <form class="pure-form">
                                                <li>
							<label class="form-label">password<span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="password" placeholder="password"  id="password"style="width: 98%; height: 30px;" name="pass"  required>
									
							</div>
						</li>
                                                
                                                  <li>
							<label class="form-label"> RE password <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="password" placeholder="re password" id="confirm_password" style="width: 98%; height: 30px;" name="rpass" required>  
								
							</div>
						</li>
						<li>
							<label class="form-label"> Date of Birth <span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="date" placeholder="" name="DOB" style="width: 98%; height: 30px;"  required> 
								
							</div>
						
						
					</ul>
                                    
					<div class="submit_btn">
						<input type="submit" class="pure-button pure-button-primary" value="Submit">
                                               </div>
                                   <script>
                var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
                </script>
</form>
				</form>
  
			</div>
		</div>
		
		
	</
</body>
</html>