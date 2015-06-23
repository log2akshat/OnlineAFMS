// Registration JavaScript

function bootstrapAlert(errorReason) {
var gt = new Gettext({ 'domain' : 'messages' });
BootstrapDialog.show({
        	type: BootstrapDialog.TYPE_DANGER,
            title: gt.gettext('Error'),
            message: ("\n").concat(gt.gettext(errorReason)).fontcolor("red").concat("\n\n"),
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
       }
       
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
       }       
       
function bootstrapAlertThreeMsg(errorReason, SecondMsg, ThirdMsg) {
var gt = new Gettext({ 'domain' : 'messages' });
BootstrapDialog.show({
        	type: BootstrapDialog.TYPE_DANGER,
            title: gt.gettext('Error'),
            message: ("\n").concat(gt.gettext(errorReason)).fontcolor("red").concat("\n\n").concat(gt.gettext(SecondMsg)).fontcolor("red").concat("\n\n").concat(gt.gettext(ThirdMsg)).fontcolor("red").concat("\n\n"),
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
       }         

function validateForm_adminCandUpdateform() {
	with (document.adminCandUpdateform) {
		var gt = new Gettext({ 'domain' : 'messages' });
		var alertMsg = gt.gettext('EducationMessages');
        
       if (Edu_XthStd_Institute.value == "") alertMsg += "\n\n".concat(gt.gettext('XthInstitute'));
       
       if (Edu_XthStd_Board.value == "") alertMsg += "\n".concat(gt.gettext('XthBoard'));
       
       if (Edu_XthStd_Year.value == "") alertMsg += "\n".concat(gt.gettext('XthYear')); 
       
       if (Edu_XthStd_Pc.value == "") alertMsg += "\n".concat(gt.gettext('XthPc')); 
       
       if (Edu_XIIthStd_Institute.value == "") alertMsg += "\n".concat(gt.gettext('XIIthInstitute'));
       
       if (Edu_XIIthStd_Board.value == "") alertMsg += "\n".concat(gt.gettext('XIIthBoard'));
       
       if (Edu_XIIthStd_Year.value == "") alertMsg += "\n".concat(gt.gettext('XIIthYear')); 
       
       if (Edu_XIIthStd_Pc.value == "") alertMsg += "\n".concat(gt.gettext('XIIthPc')); 
       
       if (Edu_UG.options[Edu_UG.selectedIndex].value == "NULL") alertMsg += "\n".concat(gt.gettext('UGDegree'));
       
       if (Edu_UG_Institute.value == "") alertMsg += "\n".concat(gt.gettext('UGInstitute'));
       
       if (Edu_UG_Board.value == "") alertMsg += "\n".concat(gt.gettext('UGBoard'));
      
       if (Edu_UG_Year.value == "") alertMsg += "\n".concat(gt.gettext('UGYear')); 
       
       if (Edu_UG_Pc.value == "") alertMsg += "\n".concat(gt.gettext('UGPc')); 
       
         // Name Validation
        var AppName = document.adminCandUpdateform.Name;
        if (AppName.value == ""){
        	bootstrapAlert("Name")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Name')));
        		AppName.value="";
        		AppName.focus();
        		return false;
        	}
        
        // DOB Validation
        var Bday = document.adminCandUpdateform.DOB;
        if (Bday.value == ""){
        	bootstrapAlert("DOB")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('DOB')));
        		Bday.value="";
        		Bday.focus();
        		return false;
        	}
        
        // Gender Validation
        var Sex = document.adminCandUpdateform.Gender;
        if (Gender.options[Gender.selectedIndex].value == ""){
        	bootstrapAlert("Gender")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Gender')));
        		Sex.value="";
        		Sex.focus();
        		return false;
        	}
        
        // Nationality Validation
        var Citizenship = document.adminCandUpdateform.Nationality;
        if (Citizenship.value == ""){
        	bootstrapAlert("Nationality")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Nationality')));
        		Citizenship.value="";
        		Citizenship.focus();
        		return false;
        	}
        
        // Correspondence Address Validation
        var LocalAddress = document.adminCandUpdateform.CAddress;
        if (LocalAddress.value == ""){
        	bootstrapAlert("CAddress")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CAddress')));
        		LocalAddress.value="";
        		LocalAddress.focus();
        		return false;
        	}
        
        // Correspondence Address Pin Validation
        var LocalPin = document.adminCandUpdateform.CPin;
        if (LocalPin.value == ""){
        	bootstrapAlert("CPin")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CPin')));
        		LocalPin.value="";
        		LocalPin.focus();
        		return false;
        	}
        
        // Correspondence Address City Validation
        var LocalCity = document.adminCandUpdateform.CCity;
        if (LocalCity.value == ""){
        	bootstrapAlert("CCity")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CCity')));
        		LocalCity.value="";
        		LocalCity.focus();
        		return false;
        	}
        
        // Correspondence Address State Validation
        var LocalState = document.adminCandUpdateform.CState;
        if (LocalState.value == ""){
        	bootstrapAlert("CState")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CState')));
        		LocalState.value="";
        		LocalState.focus();
        		return false;
        	}
        
        // Telephone Validation
        var Phone = document.adminCandUpdateform.Telephone;
        if (Phone.value == ""){
        	bootstrapAlert("Telephone")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Telephone')));
        		Phone.value="";
        		Phone.focus();
        		return false;
        	}
        
        // Permanent Address Validation
        var PermanentAddress = document.adminCandUpdateform.PAddress;
        if (PermanentAddress.value == ""){
        	bootstrapAlert("PAddress")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PAddress')));
        		PermanentAddress.value="";
        		PermanentAddress.focus();
        		return false;
        	}
        
        // Permanent Address Pin Validation
        var PermanentPin = document.adminCandUpdateform.PPin;
        if (PermanentPin.value == ""){
        	bootstrapAlert("PPin")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PPin')));
        		PermanentPin.value="";
        		PermanentPin.focus();
        		return false;
        	}
        
        // Permanent Address City Validation
        var PermanentCity = document.adminCandUpdateform.PCity;
        if (PermanentCity.value == ""){
        	bootstrapAlert("PCity")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PCity')));
        		PermanentCity.value="";
        		PermanentCity.focus();
        		return false;
        	}
        
        // Permanent Address State Validation
        var PmntState = document.adminCandUpdateform.PermanentState;
        if (PmntState.value == ""){
        	bootstrapAlert("PState")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PState')));
        		PmntState.value="";
        		PmntState.focus();
        		return false;
        	}
        
        // Category Validation
        var Community = document.adminCandUpdateform.Category;
        if (Community.value == ""){
        	bootstrapAlert("Category")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Category')));
        		Community.value="";
        		Community.focus();
        		return false;
        	}
        
       // Referee1 Validation
        var Ref1 = document.adminCandUpdateform.Referee1;
        if (Ref1.value == ""){
        	bootstrapAlert("Referee1")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee1')));
        		Ref1.value="";
        		Ref1.focus();
        		return false;
        	}
      
        // Referee1 Email Validation
        var Ref1Email=document.adminCandUpdateform.Referee1Email;
        if (Ref1Email.value == ""){
        	bootstrapAlert("Referee1Email")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee1Email')));
        		Ref1Email.value="";
        		Ref1Email.focus();
        		return false;
        	}
        
        if (echeck(Ref1Email.value)==false){
        	Ref1Email.value="";
        	Ref1Email.focus();
            return false;
        }
        
        // Referee2 Validation
        var Ref2=document.adminCandUpdateform.Referee2;
        if (Ref2.value == ""){
        	bootstrapAlert("Referee2")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee2')));
        		Ref2.value="";
        		Ref2.focus();
        		return false;
        	}
      
        // Referee2 Email Validation
        var Ref2Email=document.adminCandUpdateform.Referee2Email;
        if (Ref2Email.value == ""){
        	bootstrapAlert("Referee2Email")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee2Email')));
        		Ref2Email.value="";
        		Ref2Email.focus();
        		return false;
        	}
        
        if (echeck(Ref2Email.value)==false){
        	Ref2Email.value="";
        	Ref2Email.focus();
            return false;
        }
        
       // E-mail ID Validations
        var mail1 = document.adminCandUpdateform.Email;
        var Ref1Email = document.adminCandUpdateform.Referee1Email;
        var Ref2Email = document.adminCandUpdateform.Referee2Email;
        
        if (mail1.value == Ref1Email.value){
        	bootstrapAlert("SameMailID")
        	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SameMailID')));
    		Ref1Email.value="";
    		Ref1Email.focus();
    		return false;
    	}
   	
		if (mail1.value == Ref2Email.value){
			bootstrapAlert("SameMailID")
			//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SameMailID')));
			Ref2Email.value="";
			Ref2Email.focus();
		return false;
	}
	
	if (Ref1Email.value == Ref2Email.value){
		bootstrapAlert("SameRefereeMailID")
		//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SameRefereeMailID')));
			Ref2Email.value="";
			Ref2Email.focus();
		return false;
	}
    
	// Area of Interest Validation
	var AreaofInterest = document.adminCandUpdateform.Interest;
    if (AreaofInterest.value == ""){
    	bootstrapAlert("PresentInterest")
    	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PresentInterest')));
    		AreaofInterest.value="";
    		AreaofInterest.focus();
    		return false;
    }
    
 // Interest Validation
	var SubjectInterest = document.adminCandUpdateform.GQ_Subject;
    if (SubjectInterest.value == ""){
    	bootstrapAlert("SubjectInterest")
    	//alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SubjectInterest')));
    		SubjectInterest.value="";
    		SubjectInterest.focus();
    		return false;
    }
    
    ////////////////////Single Quotes Pop Ups//////////////////
   var apposreason = document.adminCandUpdateform.Reason;
    if (appostropheReason(apposreason.value) == false){
    		apposreason.value="";
    		apposreason.focus();
    		return false;
    	}
    
    var apposAppliedbefore2 = document.adminCandUpdateform.Appliedbefore2;
    if (appostropheAppliedbefore2(apposAppliedbefore2.value)==false){
    		apposAppliedbefore2.value="";
    		apposAppliedbefore2.focus();
    		return false;
    	}
    
    var apposSubj = document.adminCandUpdateform.GQ_Subject;
    if (appostropheSubject(apposSubj.value)==false){
    		apposSubj.value="";
    		apposSubj.focus();
    		return false;
    	}
    
    var apposProject = document.adminCandUpdateform.GQ_Project;
    if (appostropheProject(apposProject.value)==false){
    		apposProject.value="";
    		apposProject.focus();
    		return false;
    	}
    
    var apposAwards = document.adminCandUpdateform.GQ_Awards;
    if (appostropheAwards(apposAwards.value)==false){
    		apposAwards.value="";
    		apposAwards.focus();
    		return false;
    	}
    
    var apposResult = document.adminCandUpdateform.GQ_Result;
    if (appostropheResult(apposResult.value)==false){
    		apposResult.value="";
    		apposResult.focus();
    		return false;
    	}
    
////////////////////Word Limit Pop Ups//////////////////
    var restReason = document.adminCandUpdateform.Reason;
    if (charescReason(restReason.value)==false){
    		restReason.value="";
    		restReason.focus();
    		return false;
    	}
    
    var restAppliedbefore2 = document.adminCandUpdateform.Appliedbefore2;
    if (charescAppliedbefore2(restAppliedbefore2.value)==false){
    		restAppliedbefore2.value="";
    		restAppliedbefore2.focus();
    		return false;
    	}
    
    var restSubject = document.adminCandUpdateform.GQ_Subject;
    if (charescSubject(restSubject.value)==false){
    		restSubject.value="";
    		restSubject.focus();
    		return false;
    	}
    
    var restProject = document.adminCandUpdateform.GQ_Project;
    if (charescProject(restProject.value)==false){
    		restProject.value="";
    		restProject.focus();
    		return false;
    	}
    
    var restAwards = document.adminCandUpdateform.GQ_Awards;
    if (charescAwards(restAwards.value)==false){
    		restAwards.value="";
    		restAwards.focus();
    		return false;
    	}
    
    var restResult = document.adminCandUpdateform.GQ_Result;
    if (charescResult(restResult.value)==false){
    		restResult.value="";
    		restResult.focus();
    		return false;
    	}
    	
        if (alertMsg != gt.gettext('EducationMessages')) {
        	bootstrapAlert(alertMsg)
        	//alert(alertMsg);
        	return false;
        	} else {
        	return true;
        	}        
        }
    }

/////////////////////////////////////////////////Single Quotes Copy Paste Check//////////////////////////////////////////////////////

function appostropheReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var reason = document.adminCandUpdateform.Reason.value;
	if (reason.indexOf("'")!=-1){
		bootstrapAlertThreeMsg("Reason", "SingleQuoteError", "SingleQuoteErrorMsg")
	    //alert((gt.gettext('Reason')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Appliedbefore2 = document.adminCandUpdateform.Appliedbefore2.value;
	if (Appliedbefore2.indexOf("'")!=-1){
		bootstrapAlertThreeMsg("Appliedbefore2", "SingleQuoteError", "SingleQuoteErrorMsg")
	    //alert((gt.gettext('Appliedbefore2')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Subject = document.adminCandUpdateform.GQ_Subject.value;
	if (Subject.indexOf("'")!=-1){
		bootstrapAlertThreeMsg("Subject", "SingleQuoteError", "SingleQuoteErrorMsg")
	    //alert((gt.gettext('Subject')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Project = document.adminCandUpdateform.GQ_Project.value;
	if (Project.indexOf("'")!=-1){
		bootstrapAlertThreeMsg("Project", "SingleQuoteError", "SingleQuoteErrorMsg")
	    //alert((gt.gettext('Project')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Awards = document.adminCandUpdateform.GQ_Awards.value;
	if (Awards.indexOf("'")!=-1){
		bootstrapAlertThreeMsg("Awards", "SingleQuoteError", "SingleQuoteErrorMsg")
	    //alert((gt.gettext('Awards')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Result = document.adminCandUpdateform.GQ_Result.value;
	if (Result.indexOf("'")!=-1){
		bootstrapAlertThreeMsg("Result", "SingleQuoteError", "SingleQuoteErrorMsg")
	    //alert((gt.gettext('Result')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}
		
///////////////////////////////////////////////////Submition Word Limit Restriction//////////////////////////////////////////

function charescReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.adminCandUpdateform.Reason.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 100) 
	            {
	    	document.adminCandUpdateform.Reason.focus();
	    	bootstrapAlertThreeMsg("Reason", "100WordsLimit", "TrimClear")
	    	//alert((gt.gettext('Reason')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }  

function charescAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.adminCandUpdateform.Appliedbefore2.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 100) 
	            {
	    	document.adminCandUpdateform.Appliedbefore2.focus();
	    	bootstrapAlertThreeMsg("Appliedbefore2", "100WordsLimit", "TrimClear")
	    	//alert((gt.gettext('Appliedbefore2')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }  

function charescSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.adminCandUpdateform.GQ_Subject.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 1000) 
	            {
	    	document.adminCandUpdateform.GQ_Subject.focus();
	    	bootstrapAlertThreeMsg("Subject", "1000WordsLimit", "TrimClear")
	    	//alert((gt.gettext('Subject')).concat("\n\n").concat(gt.gettext('1000WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        } 

function charescProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.adminCandUpdateform.GQ_Project.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 1000) 
	            {
	    	document.adminCandUpdateform.GQ_Project.focus();
	    	bootstrapAlertThreeMsg("Project", "1000WordsLimit", "TrimClear")
	    	//alert((gt.gettext('Project')).concat("\n\n").concat(gt.gettext('1000WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        } 

function charescAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.adminCandUpdateform.GQ_Awards.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.adminCandUpdateform.GQ_Awards.focus();
	    	bootstrapAlertThreeMsg("Awards", "150WordsLimit", "TrimClear")
	    	//alert((gt.gettext('Awards')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }

function charescResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.adminCandUpdateform.GQ_Result.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.adminCandUpdateform.GQ_Result.focus();
	    	bootstrapAlertThreeMsg("Result", "150WordsLimit", "TrimClear")
	    	//alert((gt.gettext('Result')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }
	        
///////////////////////////////////////////////////Other Typing Restrictions/////////////////////////////////////////////////

function numbersonly(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
 
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if ((("0123456789").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
    Error+= "\nPlease Enter Numerals Only!!";
   
   if (Error!= "") {
   		bootstrapAlert(Error)
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}

function phoneno(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
 
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if ((("0123456789+()- ").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
    Error+= "Sorry this caharacter is not allowed!! \n\nPlease Enter Numerals Only and the Symbols allowed are + - ()";
   
   if (Error!= "") { 
   		bootstrapAlert(Error)
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}

function floatnumbers(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
 
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if (((".0123456789").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
    Error+= "\nPlease Enter Numerals Only!!";
   
   if (Error!= "") {
   		bootstrapAlert(Error)
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}


function alphaonly(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if ((("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
    Error+="Please Enter Alphabatical Characters Only!!";
   
   if (Error!= "") {
   		bootstrapAlert(Error) 
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}

function charsonly(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if ((("abcdefghijklmnopqrstuvwxyz-1234567890.@_").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
   Error+="Invalid E-mail Address! Please re-enter!!";
   
   if (Error!= "") {
   		bootstrapAlert(Error)
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}

function alphanumonly(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if ((("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.[],+- ").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
   Error+="This Character is not allowed, Please Enter only Alphanumerical and .-+[,] Characters!!"
   
   if (Error!= "") {
   		bootstrapAlert(Error)
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}

function appos(e, decimal) {
var key;
var keychar;
Error="";
if (window.event) {
   key = window.event.keyCode;
}
else if (e) {
   key = e.which;
}
else {
   return true;
}
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) ||  (key==9) || (key==13) || (key==27) ) {
   return true;
}
else if ((("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\\~\"`!@#$%^&*()_-+={}[]|:;<>,.?/ ").indexOf(keychar) > -1)) {
   return true;
}
else if (decimal && (keychar == ".")) { 
  return true;
}
else
   Error+="Single quote are not allowed!";
   
   if (Error!= "") {
   		bootstrapAlert(Error)
        //alert("..::ERROR::..\n" + Error); 
        return false; 
		
     } 
       form.submit();
}

function echeck(str) {

		var at="@";
		var dot=".";
		var lat=str.indexOf(at);
		var lstr=str.length;
		var ldot=str.indexOf(dot);
		if (str.indexOf(at)==-1){
			bootstrapAlert("validMailID")
		   //alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		   return false;
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		 	bootstrapAlert("validMailID")
		    //alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		    return false;
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		 	bootstrapAlert("validMailID")
		    //alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!!");
		    return false;
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		 	bootstrapAlert("validMailID")
		    //alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		    return false;
		 }
		
		 if (str.indexOf(" ")!=-1){
		 	bootstrapAlert("validMailID")
		    //alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		    return false;
		 }

 		 return true;					
	}
	
//Script for copying the Corrospondance Address to Permanent Address

function sameasabove(form){
	if(document.adminCandUpdateform.copy.checked){
		document.adminCandUpdateform.PAddress.value = document.adminCandUpdateform.CAddress.value;
		document.adminCandUpdateform.PPin.value = document.adminCandUpdateform.CPin.value;
		document.adminCandUpdateform.PCity.value = document.adminCandUpdateform.CCity.value;
		document.adminCandUpdateform.PermanentState.value = document.adminCandUpdateform.CState.value;
}
	else
		{
		document.adminCandUpdateform.PAddress.value = "";
		document.adminCandUpdateform.PPin.value = "";
		document.adminCandUpdateform.PCity.value = "";		
		document.adminCandUpdateform.PermanentState.value = "";
		}
}

function pgyear(form)
	{
	if(document.adminCandUpdateform.Edu_PG.value != "NULL")
	{
		document.adminCandUpdateform.Edu_PG_Year.readOnly = false;
	}
	else{
		((document.adminCandUpdateform.Edu_PG_Year.readOnly = true) &&
				(document.adminCandUpdateform.Edu_PG_Year.value = "0000"));
	}
	}

function pgpc(form)
{
if(document.adminCandUpdateform.Edu_PG.value != "NULL")
{
	document.adminCandUpdateform.Edu_PG_Pc.readOnly = false;
}
else{
	((document.adminCandUpdateform.Edu_PG_Pc.readOnly = true) &&
			(document.adminCandUpdateform.Edu_PG_Pc.value = "00"));
}
}


function appbefore(form)
{
if(document.adminCandUpdateform.Appliedbefore1.value != "Yes")
{
	((document.adminCandUpdateform.Appliedbefore2.disabled = true) &&
			(document.adminCandUpdateform.Appliedbefore2.value = "Click Yes to give details..."));
}
else{
	((document.adminCandUpdateform.Appliedbefore2.disabled = false) && (document.adminCandUpdateform.Appliedbefore2.value = ""));
}
}

// Script for enabling and disabling the textbox
function enable_text(status)
{
status=!status;	
document.registrationform.OtherIndianState.disabled = status;
}

function clearForms()
{
  var i;
  for (i = 0; (i < document.forms.length); i++) {
    document.forms[i].reset();
  }
}

var characters1 = "500";
var characters2 = "1000";
var characters3 = "5000";
var characters4 = "7000";

//Reason Words Typing Restriction
function charrestrictionReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.adminCandUpdateform.Reason.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.adminCandUpdateform.restrictsReason.value = strCounterLength;

	if (strCounter.length > 100) 
	            {
				strval = strval.substring(0,characters2);
				document.adminCandUpdateform.Reason.value = strval;
				document.adminCandUpdateform.Reason.focus();
				bootstrapAlertTwoMsg("100WordsLimit", "Trim")
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
				return false;
	            }
		        return true;
	        }

//Appliedbefore2 Words Typing Restriction
function charrestrictionAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.adminCandUpdateform.Appliedbefore2.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.adminCandUpdateform.restrictsAppliedbefore2.value = strCounterLength;

	if (strCounter.length > 100) 
	            {
				strval = strval.substring(0,characters2);
				document.adminCandUpdateform.Appliedbefore2.value = strval;
				document.adminCandUpdateform.Appliedbefore2.focus();
				bootstrapAlertTwoMsg("100WordsLimit", "Trim")
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Subject Words Typing Restriction
function charrestrictionSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.adminCandUpdateform.GQ_Subject.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.adminCandUpdateform.restrictsSubject.value = strCounterLength;

	if (strCounter.length > 1000) 
	            {
				strval = strval.substring(0,characters3);
				document.adminCandUpdateform.GQ_Subject.value = strval;
				document.adminCandUpdateform.GQ_Subject.focus();
				bootstrapAlertTwoMsg("1000WordsLimit", "Trim")
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('1000WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Project Words Typing Restriction
function charrestrictionProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.adminCandUpdateform.GQ_Project.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.adminCandUpdateform.restrictsProject.value = strCounterLength;

	if (strCounter.length > 1000) 
	            {
				strval = strval.substring(0,characters3);
				document.adminCandUpdateform.GQ_Project.value = strval;
				document.adminCandUpdateform.GQ_Project.focus();
				bootstrapAlertTwoMsg("1000WordsLimit", "Trim")
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('1000WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

// Awards Words Typing Restriction
function charrestrictionAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.adminCandUpdateform.GQ_Awards.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.adminCandUpdateform.restrictsAwards.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.adminCandUpdateform.GQ_Awards.value = strval;
				document.adminCandUpdateform.GQ_Awards.focus();
				bootstrapAlertTwoMsg("150WordsLimit", "Trim")
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Result Words Typing Restriction
function charrestrictionResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.adminCandUpdateform.GQ_Result.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.adminCandUpdateform.restrictsResult.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.adminCandUpdateform.GQ_Result.value = strval;
				document.adminCandUpdateform.GQ_Result.focus();
				bootstrapAlertTwoMsg("150WordsLimit", "Trim")
				//alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        }  