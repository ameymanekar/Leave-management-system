<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>request</title>
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
		<h1>Request For Leave</h1>
	</div>
		<div class="container">
			<div class="agile-form">
    <from method="post" action="leaveapplyfrm.jsp">
<ul class="field-list">
    <form id="taxDetails">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" name="name2" placeholder="<%=(String)session.getAttribute("userid")%>" required>
								
							</div>
						</li>
                                                <li class="name">
<label class="form-label"> Department <span class="form-required"> * </span></label>
<div class="form-input">

   
    <select class="form-dropdown" name="province" onchange="setTax(document.Form, this.value);" required >
    <option value="">Select </option>
    <option value="BCA">BCA</option>
    <option value="BBA">BBA</option>
    <option value="BSC">BSC</option>
  
    </select>
        </div>
</li>
 <li> 
							<label class="form-label"> Designation <span class="form-required"> * </span></label>
							<div class="form-input">
							
							<input name="showtax" type="text" id="showtax" value="" required>
							</div>
						</li>

   
   
   
   
   
   
   <li>
							<label class="form-label"> Leave Type<span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="leavereasion" required>
                                                                    <option value="">select</option>
									<option value="Casual">Casual</option>
 
                                                                         <option value="vacation">vacation</option>
                                                                          <option value="sick">sick</option>
  
								</select>
							</div>
						</li>
<li>
							<label class="form-label">Reason<span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="text" placeholder="" name="reasion"  > 
								
							</div>
                                                </li>
                                                
						</li>
                                                <label class="form-label">DATE <span class="form-required"> * </span></label>
						<li>
							<label class="form-label">FROM<span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="date" placeholder="" name="DOBI" style="width: 98%; height: 30px;"  required> 
								
							</div>
                                                </li>
                                                <li>
							<label class="form-label"> TO<span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="date" placeholder="" name="DOBII" style="width: 98%; height: 30px;"  required> 
								
							</div>
                                                </li>
						
					</ul>




<div class="submit_btn">
						<input type="submit" formaction="leaveapplyfrm.jsp" class="pure-button pure-button-primary" value="Submit">
                                          
</div>
  
<script>
var taxCodes = {
    'BCA': 'Prof. A.P. Chendke ',
    'BBA': 'Prof. S. Kale ',
    'BSC': 'Prof. S.H.  Datey ',
    'BCOM': 'ssss',
    'MCOM': 'wwwww'
};
var form = document.getElementById('taxDetails');
form.elements.province.onchange = function () {
    var form = this.form;
    form.elements.showtax.value = taxCodes[this.value];
};
</script>
</form>
</form>
			</div>
		</div>
		
		
	</
</body>
</html>