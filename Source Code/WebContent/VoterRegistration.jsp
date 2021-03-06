<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="org.aseproject.model.Voter" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Voter Registration Page</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	
	<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"
	type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=2033851346839497";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>

<script>
	window.twttr = (function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0], t = window.twttr || {};
		if (d.getElementById(id))
			return t;
		js = d.createElement(s);
		js.id = id;
		js.src = "https://platform.twitter.com/widgets.js";
		fjs.parentNode.insertBefore(js, fjs);

		t._e = [];
		t.ready = function(f) {
			t._e.push(f);
		};

		return t;
	}(document, "script", "twitter-wjs"));
</script>

<script>
	window.___gcfg = {
		lang : 'en-US',
		parsetags : 'onload'
	};
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
	(function() {
		var cx = '017643444788069204610:4gvhea_mvga'; // Insert your own Custom Search Engine ID here
		var gcse = document.createElement('script');
		gcse.type = 'text/javascript';
		gcse.async = true;
		gcse.src = (document.location.protocol == 'https' ? 'https:' : 'http:')
				+ '//www.google.com/cse/cse.js?cx=' + cx;
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(gcse, s);
	})();
</script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
	
	
	<body>
	
		
		<div>
			
			<div id="header">
					<span id="title">Elect Your Leader</span>
			</div>	

			<div id="navigation" >
				<div id="left">
					<ul>
						<a href="Home.jsp"><li>Home</li></a>	
						<li>Register
							<ul class="dropdown">
								<li><a href="VoterRegistration.jsp">Voter Registration</a></li>
								<li><a href="CandidateRegistration.jsp">Candidate Registration</a></li>
							</ul>
						</li>
                        <div class="clear"></div>
					</ul>
				</div>	
				<div id="right">
					<ul>
                        <a href="Candidates.jsp"><li>Candidates</li></a>
						<li>Contact Us</li>	
						<li>Login
							<ul class="dropdown">
								<li><a href="VoterLogin.jsp">Voter Login</a></li>
								<li><a href="CandidateLogin.jsp">Candidate Login</a></li>
							</ul>
						</li>
						<div class="clear"></div>		
					</ul>
				</div>	
			</div>

			<div id="bodycontainer">
				<div id="registrationheader">
					<li id="registertitle">Voter Registration Page</li>
				</div>

				<div id="formdetails">
					<div id="registrationformheader">	
						<form method="post" action="voterRegistration.action" enctype="multipart/form-data" id="registrationform">

						        <div class="formunit">
							        <label for="firstName">First Name</label>
							        <input type="text" id="firstName" name="voter.firstName" required autofocus>
							        <div id="firstName-help"></div>
						        </div>

						        <div class="formunit">
							        <label for="lastName">Last Name</label>
							        <input type="text" id="lastName" name="voter.lastName" required>
							        <div id="lastname-help"></div>
						        </div>

						        <div class="formunit">
							        <label for="uid">Unique Id</label>
							        <input type="text" id="uid" name="voter.uid" required>
							        <div id="uid-help"></div>
						        </div>

						        <div class="formunit">
							        <label for="dob">Date of Birth</label>
							        <input type="date" id="dob" name="voter.dob"required>
							        <div id="dob-help"></div>
						        </div>
						        
						        <div class="formunit">
							        <label for="state">Contesting state</label>
							        <select id="state" name="voter.state" required>
  											<option value="State1">State1</option>
  											<option value="State2">State2</option>
  											<option value="State3">State3</option>
  											<option value="State4">State4</option>
  											<option value="State5">State5</option>
  											<option value="State6">State6</option>
  											<option value="State7">State7</option>
									</select>
							        <div id="state-help"></div>
						        </div>

						        <div class="formunit">
							        <label for="emailId">Email Id</label>
							        <input type="email" id="emailId" name="voter.emailId" required>
							        <div id="email-help"></div>
						        </div>

						        <div class="formunit">
							        <label for="password1">Password</label>
							        <input type="password" id="password1" name="voter.password1" required>
							        <div id="password1-help"><s:fielderror fieldName="password1"></s:fielderror></div>
						        </div>

						        <div class="formunit">
							        <label for="password2">Re-Enter Password</label>
							        <input type="password" id="password2" name="voter.password2" required>
							        <div id="password2-help"><s:fielderror fieldName="password2"></s:fielderror></div>
						        </div>
								
								<div class="booth" >
									<video id="video" width="150" height="100"></video>
									<a href="#" id="capture" class="booth-capture-button">Take Photo</a>
									<canvas id="canvas" width="150" height="100"></canvas>
									<img id="image" alt="photo of you">
								</div>
								
								 <div class="formunit">
							        <label for="profileImage">Your Image</label>
							        <input type="file" id="profileImage" name="voter.myFile" required>
						        </div>
								
						        <div class="formunit buttonunit">
						        	<input type="submit" id="submitbutton" value="Submit">
						        	<input type="reset" id="resetbutton" value="Reset">
						        </div>
						</form>	
			    	</div>

					<div class="clear"></div>

			</div>


			</div>
<div id="tooplate_footer_wrapper">
			<ul>
				<li><div id="bodycontainerbottom">

						<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quick Links</h3>
						<a href="Home.jsp">Home</a> 
						<a href="VoterRegistration.jsp">Voter Registration</a> 
						<a href="Candidate Registration.jsp">Candidate Registration</a>
						<a href="VoterLogin.jsp">Voter Login</a> 
						<a href="CandidateLogin.jsp">Candidate Login</a> 
						<a href="ContactUs.jsp">Contact Us</a>



					</div></li>
				<li><div id="bodycontainerbottom">

						<h3>Share</h3>
						<br>
						<div class="fb-like"
							data-href="https://developers.facebook.com/docs/plugins/"
							data-layout="button_count" data-action="like"
							data-show-faces="true" data-share="true"></div>

						</br> <a href="https://twitter.com/share" class="twitter-share-button"
							data-url="http://localhost:8080/umkc.edu.sparktwitteranalysis/about.html"
							data-text="Check out.....">Tweet</a> </br>
						<div>
							<g:plus action="share"></g:plus>
						</div>




						<!-- Place this tag where you want the widget to render. -->
						<div class="g-follow" data-annotation="bubble" data-height="20"
							data-href="//plus.google.com/u/0/100631431235598134170"
							data-rel="author"></div>
						<br> <br>


					</div></li>
				<li><div id="bodycontainerbottom">
						<br>
						<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;References</h3>
						<br> <a
							href="http://www.ibm.com/analytics/us/en/industry/banking/"
							target="_blank">IBM Analytics</a> <a
							href="http://www.ibmbigdatahub.com/blog/analytics-banking-services"
							target="_blank">IBM Bigdata Blog</a> <a
							href="http://www.ibmbigdatahub.com/blog/analytics-banking-services"
							target="_blank">IBM Bigdata Blog</a> <a
							href="http://www.ibmbigdatahub.com/blog/analytics-banking-services"
							target="_blank">IBM Bigdata Blog</a> <br>
					</div></li>
				<ul>
		</div>
				<div id="navigation">
			<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				&nbsp;&copy;Team9 ASE PROJECT</li>
		</div>

		</div>
		<script src="js/photo.js"></script>
	</body>
</html>