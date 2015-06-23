// Assessment Form JavaScript

var checkBootstrpExecuted = "False";

function bootstrapAlertTwoMsg(errorReason, SecondMsg) {
var gt = new Gettext({ 'domain' : 'messages' });
BootstrapDialog.show({
        	type: BootstrapDialog.TYPE_DANGER,
            title: gt.gettext('Error'),
            message: ("\n").concat(gt.gettext(errorReason)).fontcolor("red").concat("\n\n").concat(gt.gettext(SecondMsg)).fontcolor("red").concat("\n\n"),
            buttons: [{
        		id: 'btn-ok',   
        		icon: 'glyphicon glyphicon-warning-sign',       
        		label: ' OK!',
        		cssClass: 'btn-danger', 
        		autospin: false,
        		action: function(dialogRef){    
            		dialogRef.close();
        		}
    		}]
        });
        checkBootstrpExecuted = "True";
       }   
       
function clearForms()
{
  var i;
  for (i = 0; (i < document.forms.length); i++) {
    document.forms[i].reset();
  }
}

function disableGraderepifnot(form)
{
if(document.getElementById('SubmitRefereeform_Grades').value != "Yes")
{
	((document.getElementById('SubmitRefereeform_Gradesifno').readOnly = false) &&
			(document.getElementById('SubmitRefereeform_Gradesifno').value = ""));
}
else
{
	((document.getElementById('SubmitRefereeform_Gradesifno').readOnly = true) &&
			(document.getElementById('SubmitRefereeform_Gradesifno').value = "Not applicable!"));
}
}

var characters1 = "500";
var characters2 = "1000";
var characters3 = "1500";
var characters4 = "100";

var characters4K = "4000";
var characters6K = "6000";
var characters9K = "9000";

//Knowing Characters Typing Restriction
function charrestrictionKnowing(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Knowing').value;
	var restrictKnowing = document.getElementById('SubmitRefereeform_restrictsKnowing').value;
	//var strCounter = strval.split(" ");
	            //var strCounterLength = strCounter.length - 1;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsKnowing').innerHTML = "Characters typed : " + strCounterLength;
	           
	//if (strCounter.length > 100) 
	if (strCounterLength > 6000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsKnowing').style.color = "red";
				strval = strval.substring(0,characters6K);
				document.getElementById('SubmitRefereeform_Knowing').value = strval;
				document.getElementById('SubmitRefereeform_Knowing').focus();
				bootstrapAlertTwoMsg("6KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsKnowing').innerHTML = "Characters typed : " + characters6K;
				document.getElementById('SubmitRefereeform_restrictsKnowing').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsKnowing').style.color = "green";
	 	}       
		        return true;
	        }
	

//Strength Characters Typing Restriction
function charrestrictionStrength(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Strength').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsStrength').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 9000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsStrength').style.color = "red";
				strval = strval.substring(0,characters9K);
				document.getElementById('SubmitRefereeform_Strength').value = strval;
				document.getElementById('SubmitRefereeform_Strength').focus();
				bootstrapAlertTwoMsg("9KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsStrength').innerHTML = "Characters typed : " + characters9K;
				document.getElementById('SubmitRefereeform_restrictsStrength').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsStrength').style.color = "green";
	 	}       
		        return true;
	        }
	        	        

//Weaknesses Characters Typing Restriction
function charrestrictionWeaknesses(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Weaknesses').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsWeaknesses').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 9000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsWeaknesses').style.color = "red";
				strval = strval.substring(0,characters9K);
				document.getElementById('SubmitRefereeform_Weaknesses').value = strval;
				document.getElementById('SubmitRefereeform_Weaknesses').focus();
				bootstrapAlertTwoMsg("9KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsWeaknesses').innerHTML = "Characters typed : " + characters9K;
				document.getElementById('SubmitRefereeform_restrictsWeaknesses').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsWeaknesses').style.color = "green";
	 	}       
		        return true;
	        }
	        
//Recommending Characters Typing Restriction
function charrestrictionRecommending(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Recommending').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsRecommending').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 4000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsRecommending').style.color = "red";
				strval = strval.substring(0,characters4K);
				document.getElementById('SubmitRefereeform_Recommending').value = strval;
				document.getElementById('SubmitRefereeform_Recommending').focus();
				bootstrapAlertTwoMsg("4KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsRecommending').innerHTML = "Characters typed : " + characters4K;
				document.getElementById('SubmitRefereeform_restrictsRecommending').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsRecommending').style.color = "green";
	 	}       
		        return true;
	        }
	        
	        
//Gradesifno Characters Typing Restriction
function charrestrictionGradesifno(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Gradesifno').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsGradesifno').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 9000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsGradesifno').style.color = "red";
				strval = strval.substring(0,characters9K);
				document.getElementById('SubmitRefereeform_Gradesifno').value = strval;
				document.getElementById('SubmitRefereeform_Gradesifno').focus();
				bootstrapAlertTwoMsg("9KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsGradesifno').innerHTML = "Characters typed : " + characters9K;
				document.getElementById('SubmitRefereeform_restrictsGradesifno').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsGradesifno').style.color = "green";
	 	}       
		        return true;
	        }
	        
//Interest Characters Typing Restriction
function charrestrictionInterest(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Interest').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsInterest').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 9000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsInterest').style.color = "red";
				strval = strval.substring(0,characters9K);
				document.getElementById('SubmitRefereeform_Interest').value = strval;
				document.getElementById('SubmitRefereeform_Interest').focus();
				bootstrapAlertTwoMsg("9KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsInterest').innerHTML = "Characters typed : " + characters9K;
				document.getElementById('SubmitRefereeform_restrictsInterest').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsInterest').style.color = "green";
	 	}       
		        return true;
	        }
	        
//Excc Characters Typing Restriction
function charrestrictionExcc(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Excc').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsExcc').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 9000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsExcc').style.color = "red";
				strval = strval.substring(0,characters9K);
				document.getElementById('SubmitRefereeform_Excc').value = strval;
				document.getElementById('SubmitRefereeform_Excc').focus();
				bootstrapAlertTwoMsg("9KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsExcc').innerHTML = "Characters typed : " + characters9K;
				document.getElementById('SubmitRefereeform_restrictsExcc').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsExcc').style.color = "green";
	 	}       
		        return true;
	        }
	        
//Summary Characters Typing Restriction
function charrestrictionSummary(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.getElementById('SubmitRefereeform_Summary').value;
	            var strCounterLength = strval.length;
	            document.getElementById('SubmitRefereeform_restrictsSummary').innerHTML = "Characters typed : " + strCounterLength;
	           
	if (strCounterLength > 6000) 
	            {
	            document.getElementById('SubmitRefereeform_restrictsSummary').style.color = "red";
				strval = strval.substring(0,characters6K);
				document.getElementById('SubmitRefereeform_Summary').value = strval;
				document.getElementById('SubmitRefereeform_Summary').focus();
				bootstrapAlertTwoMsg("6KCharactersLimit", "Trim")
				if (checkBootstrpExecuted == "True") {
				document.getElementById('SubmitRefereeform_restrictsSummary').innerHTML = "Characters typed : " + characters6K;
				document.getElementById('SubmitRefereeform_restrictsSummary').style.color = "green";
				}
				checkBootstrpExecuted == "False"
				return false;
	            }
	else
	 	{
	 		document.getElementById('SubmitRefereeform_restrictsSummary').style.color = "green";
	 	}       
		        return true;
	        }	        