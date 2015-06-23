// Registration JavaScript

function validateForm_Submitappform() {
	with (document.Submitappform) {
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
        var AppName = document.Submitappform.Name;
        if (AppName.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Name')));
        		AppName.value="";
        		AppName.focus();
        		return false;
        	}
        
        // DOB Validation
        var Bday = document.Submitappform.DOB;
        if (Bday.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('DOB')));
        		Bday.value="";
        		Bday.focus();
        		return false;
        	}
        
        // Gender Validation
        var Sex = document.Submitappform.Gender;
        if (Gender.options[Gender.selectedIndex].value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Gender')));
        		Sex.value="";
        		Sex.focus();
        		return false;
        	}
        
        // Nationality Validation
        var Citizenship = document.Submitappform.Nationality;
        if (Citizenship.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Nationality')));
        		Citizenship.value="";
        		Citizenship.focus();
        		return false;
        	}
        
        // Correspondence Address Validation
        var LocalAddress = document.Submitappform.CAddress;
        if (LocalAddress.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CAddress')));
        		LocalAddress.value="";
        		LocalAddress.focus();
        		return false;
        	}
        
        // Correspondence Address Pin Validation
        var LocalPin = document.Submitappform.CPin;
        if (LocalPin.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CPin')));
        		LocalPin.value="";
        		LocalPin.focus();
        		return false;
        	}
        
        // Correspondence Address City Validation
        var LocalCity = document.Submitappform.CCity;
        if (LocalCity.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CCity')));
        		LocalCity.value="";
        		LocalCity.focus();
        		return false;
        	}
        
        // Correspondence Address State Validation
        var LocalState = document.Submitappform.CState;
        if (LocalState.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CState')));
        		LocalState.value="";
        		LocalState.focus();
        		return false;
        	}
        
        // Telephone Validation
        var Phone = document.Submitappform.Telephone;
        if (Phone.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Telephone')));
        		Phone.value="";
        		Phone.focus();
        		return false;
        	}
        
        // Permanent Address Validation
        var PermanentAddress = document.Submitappform.PAddress;
        if (PermanentAddress.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PAddress')));
        		PermanentAddress.value="";
        		PermanentAddress.focus();
        		return false;
        	}
        
        // Permanent Address Pin Validation
        var PermanentPin = document.Submitappform.PPin;
        if (PermanentPin.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PPin')));
        		PermanentPin.value="";
        		PermanentPin.focus();
        		return false;
        	}
        
        // Permanent Address City Validation
        var PermanentCity = document.Submitappform.PCity;
        if (PermanentCity.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PCity')));
        		PermanentCity.value="";
        		PermanentCity.focus();
        		return false;
        	}
        
        // Permanent Address State Validation
        var PmntState = document.Submitappform.PermanentState;
        if (PmntState.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PState')));
        		PmntState.value="";
        		PmntState.focus();
        		return false;
        	}
        
        // Category Validation
        var Community = document.Submitappform.Category;
        if (Community.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Category')));
        		Community.value="";
        		Community.focus();
        		return false;
        	}
        
        // Referee1 Validation
        var Ref1 = document.Submitappform.Referee1;
        if (Ref1.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee1')));
        		Ref1.value="";
        		Ref1.focus();
        		return false;
        	}
      
        // Referee1 Email Validation
        var Ref1Email=document.Submitappform.Referee1Email;
        if (Ref1Email.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee1Email')));
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
        var Ref2=document.Submitappform.Referee2;
        if (Ref2.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee2')));
        		Ref2.value="";
        		Ref2.focus();
        		return false;
        	}
      
        // Referee2 Email Validation
        var Ref2Email=document.Submitappform.Referee2Email;
        if (Ref2Email.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee2Email')));
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
        var mail1 = document.Submitappform.Email;
        var mail2 = document.Submitappform.Referee1Email;
        var mail3 = document.Submitappform.Referee2Email;
        
        if (mail1.value == mail2.value){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SameMailID')));
    		mail2.value="";
    		mail2.focus();
    		return false;
    	}
   	
		if (mail1.value == mail3.value){
			alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SameMailID')));
			mail3.value="";
			mail3.focus();
		return false;
	}
	
	if (mail2.value == mail3.value){
		alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SameRefereeMailID')));
			mail3.value="";
			mail3.focus();
		return false;
	}
    
	// Area of Interest Validation
	var AreaofInterest = document.Submitappform.Interest;
    if (AreaofInterest.value == ""){
    	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PresentInterest')));
    		AreaofInterest.value="";
    		AreaofInterest.focus();
    		return false;
    }
    
 // Interest Validation
	var SubjectInterest = document.Submitappform.GQ_Subject;
    if (SubjectInterest.value == ""){
    	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SubjectInterest')));
    		SubjectInterest.value="";
    		SubjectInterest.focus();
    		return false;
    }
    
    ////////////////////Single Quotes Pop Ups//////////////////
    var apposreason = document.Submitappform.Reason;
    if (appostropheReason(apposreason.value) == false){
    		apposreason.value="";
    		apposreason.focus();
    		return false;
    	}
    
    var apposAppliedbefore2 = document.Submitappform.Appliedbefore2;
    if (appostropheAppliedbefore2(apposAppliedbefore2.value)==false){
    		apposAppliedbefore2.value="";
    		apposAppliedbefore2.focus();
    		return false;
    	}
    
    var apposSubj = document.Submitappform.GQ_Subject;
    if (appostropheSubject(apposSubj.value)==false){
    		apposSubj.value="";
    		apposSubj.focus();
    		return false;
    	}
    
    var apposProject = document.Submitappform.GQ_Project;
    if (appostropheProject(apposProject.value)==false){
    		apposProject.value="";
    		apposProject.focus();
    		return false;
    	}
    
    var apposAwards = document.Submitappform.GQ_Awards;
    if (appostropheAwards(apposAwards.value)==false){
    		apposAwards.value="";
    		apposAwards.focus();
    		return false;
    	}
    
    var apposResult = document.Submitappform.GQ_Result;
    if (appostropheResult(apposResult.value)==false){
    		apposResult.value="";
    		apposResult.focus();
    		return false;
    	}
    
////////////////////Word Limit Pop Ups//////////////////
    var restReason = document.Submitappform.Reason;
    if (charescReason(restReason.value)==false){
    		restReason.value="";
    		restReason.focus();
    		return false;
    	}
    
    var restAppliedbefore2 = document.Submitappform.Appliedbefore2;
    if (charescAppliedbefore2(restAppliedbefore2.value)==false){
    		restAppliedbefore2.value="";
    		restAppliedbefore2.focus();
    		return false;
    	}
    
    var restSubject = document.Submitappform.GQ_Subject;
    if (charescSubject(restSubject.value)==false){
    		restSubject.value="";
    		restSubject.focus();
    		return false;
    	}
    
    var restProject = document.Submitappform.GQ_Project;
    if (charescProject(restProject.value)==false){
    		restProject.value="";
    		restProject.focus();
    		return false;
    	}
    
    var restAwards = document.Submitappform.GQ_Awards;
    if (charescAwards(restAwards.value)==false){
    		restAwards.value="";
    		restAwards.focus();
    		return false;
    	}
    
    var restResult = document.Submitappform.GQ_Result;
    if (charescResult(restResult.value)==false){
    		restResult.value="";
    		restResult.focus();
    		return false;
    	}
    
  //Minimum/Maximum Percentage Check
    var mmxcheck = document.Submitappform.Edu_XthStd_Pc;
    if (tenthpc(mmxcheck.value)==false){
    		mmxcheck.value="";
    		mmxcheck.focus();
    		return false;
    	}
    
    var mmxiicheck = document.Submitappform.Edu_XIIthStd_Pc;
    if (twelvethpc(mmxiicheck.value)==false){
    		mmxiicheck.value="";
    		mmxiicheck.focus();
    		return false;
    	}
    
    var mmugcheck = document.Submitappform.Edu_UG_Pc;
    if (ugpc(mmugcheck.value)==false){
    		mmugcheck.value="";
    		mmugcheck.focus();
    		return false;
    	}
        
//Minimum/Maximum Year Check
var mmxyrcheck = document.Submitappform.Edu_XthStd_Year;
if (tenthyr(mmxyrcheck.value)==false){
		mmxyrcheck.value="";
		mmxyrcheck.focus();
		return false;
	}

var mmxiiyrcheck = document.Submitappform.Edu_XIIthStd_Year;
if (twelvethyr(mmxiiyrcheck.value)==false){
		mmxiiyrcheck.value="";
		mmxiiyrcheck.focus();
		return false;
	}

var mmugyrcheck = document.Submitappform.Edu_UG_Year;
if (ugyr(mmugyrcheck.value)==false){
		mmugyrcheck.value="";
		mmugyrcheck.focus();
		return false;
	}
    
        if (alertMsg != gt.gettext('EducationMessages')) {
        	alert(alertMsg);
        	return false;
        	} else {
        	return true;
        	}       
        }
    }

/////////////////////////////////////////////////Single Quotes Copy Paste Check//////////////////////////////////////////////////////

function appostropheReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var reason = document.Submitappform.Reason.value;
	if (reason.indexOf("'")!=-1){
	    alert((gt.gettext('Reason')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Appliedbefore2 = document.Submitappform.Appliedbefore2.value;
	if (Appliedbefore2.indexOf("'")!=-1){
	    alert((gt.gettext('Appliedbefore2')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Subject = document.Submitappform.GQ_Subject.value;
	if (Subject.indexOf("'")!=-1){
	    alert((gt.gettext('Subject')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Project = document.Submitappform.GQ_Project.value;
	if (Project.indexOf("'")!=-1){
	    alert((gt.gettext('Project')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Awards = document.Submitappform.GQ_Awards.value;
	if (Awards.indexOf("'")!=-1){
	    alert((gt.gettext('Awards')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Result = document.Submitappform.GQ_Result.value;
	if (Result.indexOf("'")!=-1){
	    alert((gt.gettext('Result')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

///////////////////////////////////////////////////Submition Word Limit Restriction//////////////////////////////////////////

function charescReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.Submitappform.Reason.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 100) 
	            {
	    	document.Submitappform.Reason.focus();
	    	alert((gt.gettext('Reason')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }  

function charescAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.Submitappform.Appliedbefore2.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 100) 
	            {
	    	document.Submitappform.Appliedbefore2.focus();
	    	alert((gt.gettext('Appliedbefore2')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }  

function charescSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.Submitappform.GQ_Subject.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 500) 
	            {
	    	document.Submitappform.GQ_Subject.focus();
	    	alert((gt.gettext('Subject')).concat("\n\n").concat(gt.gettext('500WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        } 

function charescProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.Submitappform.GQ_Project.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.Submitappform.GQ_Project.focus();
	    	alert((gt.gettext('Project')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        } 

function charescAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.Submitappform.GQ_Awards.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.Submitappform.GQ_Awards.focus();
	    	alert((gt.gettext('Awards')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }

function charescResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.Submitappform.GQ_Result.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.Submitappform.GQ_Result.focus();
	    	alert((gt.gettext('Result')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }

//Minimum/Maximum Percentage Validations
function tenthpc(){
var gt = new Gettext({ 'domain' : 'messages' });
var xthpc = document.Submitappform;
 xpc = xthpc.Edu_XthStd_Pc.value;
 if (xpc>29 && xpc<=100) {
     return true;
 }else{
	 alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('XthPercentage')));
     return false;
}
}

function twelvethpc(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var xiithpc = document.Submitappform;
	 xiipc = xiithpc.Edu_XIIthStd_Pc.value;
	 if (xiipc>29 && xiipc<=100) {
	     return true;
	 }else{
		 alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('XIIthPercentage')));
	     return false;
	}
	}

function ugpc(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var upc = document.Submitappform;
	 gradpc = upc.Edu_UG_Pc.value;
	 if (gradpc>29 && gradpc<=100) {
	     return true;
	 }else{
		 alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('UGPercentage')));
	     return false;
	}
	}

//Minimum/Maximum Year Validations
function tenthyr(){
var gt = new Gettext({ 'domain' : 'messages' });
var xthyr = document.Submitappform;
 xyr = xthyr.Edu_XthStd_Year.value;
 if (xyr>1950 && xyr<=2090) {
     return true;
 }else{
	 alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('XthYearError')));
     return false;
}
}

function twelvethyr(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var xiithyr = document.Submitappform;
	 xiiyr = xiithyr.Edu_XIIthStd_Year.value;
	 if (xiiyr>1950 && xiiyr<=2090) {
	     return true;
	 }else{
		 alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('XIIthYearError')));
	     return false;
	}
	}

function ugyr(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var uyr = document.Submitappform;
	 gradyr = uyr.Edu_UG_Year.value;
	 if (gradyr>1950 && gradyr<=2090) {
	     return true;
	 }else{
		 alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('UGYearError')));
	     return false;
	}
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
        alert("..::ERROR::..\n" + Error); 
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
    Error+= "\nSorry this caharacter is not allowed!! \n\nPlease Enter Numerals Only and the Symbols allowed are + - ()";
   
   if (Error!= "") { 
        alert("..::ERROR::..\n" + Error); 
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
        alert("..::ERROR::..\n" + Error); 
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
    Error+="\nPlease Enter Alphabatical Characters Only!!";
   
   if (Error!= "") { 
        alert("..::ERROR::..\n" + Error); 
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
   Error+="\nInvalid E-mail Address! Please re-enter!!";
   
   if (Error!= "") { 
        alert("..::ERROR::..\n" + Error); 
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
   Error+="\nThis Character is not allowed, Please Enter only Alphanumerical and .-+[,] Characters!!"
   
   if (Error!= "") { 
        alert("..::ERROR::..\n" + Error); 
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
   Error+="\n Single quote are not allowed!";
   
   if (Error!= "") { 
        alert("..::ERROR::..\n" + Error); 
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
		   alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		   return false;
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		    return false;
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!!");
		    return false;
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		    return false;
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("..::ERROR::..\n\nPlease Enter a valid E-mail ID!!");
		    return false;
		 }

 		 return true;					
	}
	
//Script for copying the Corrospondance Address to Permanent Address

function sameasabove(form){
	if(document.Submitappform.copy.checked){
		document.Submitappform.PAddress.value = document.Submitappform.CAddress.value;
		document.Submitappform.PPin.value = document.Submitappform.CPin.value;
		document.Submitappform.PCity.value = document.Submitappform.CCity.value;
		document.Submitappform.PermanentState.value = document.Submitappform.CState.value;
}
	else
		{
		document.Submitappform.PAddress.value = "";
		document.Submitappform.PPin.value = "";
		document.Submitappform.PCity.value = "";		
		document.Submitappform.PermanentState.value = "";
		}
}

function pgyear(form)
	{
	if(document.Submitappform.Edu_PG.value != "NULL")
	{
		document.Submitappform.Edu_PG_Year.readOnly = false;
	}
	else{
		((document.Submitappform.Edu_PG_Year.readOnly = true) &&
				(document.Submitappform.Edu_PG_Year.value = "0000"));
	}
	}

function pgpc(form)
{
if(document.Submitappform.Edu_PG.value != "NULL")
{
	document.Submitappform.Edu_PG_Pc.readOnly = false;
}
else{
	((document.Submitappform.Edu_PG_Pc.readOnly = true) &&
			(document.Submitappform.Edu_PG_Pc.value = "00"));
}
}


function appbefore(form)
{
if(document.Submitappform.Appliedbefore1.value != "Yes")
{
	((document.Submitappform.Appliedbefore2.disabled = true) &&
			(document.Submitappform.Appliedbefore2.value = "Click Yes to give details..."));
}
else{
	((document.Submitappform.Appliedbefore2.disabled = false) && (document.Submitappform.Appliedbefore2.value = ""));
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

//Reason Words Typing Restriction
function charrestrictionReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.Submitappform.Reason.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            document.Submitappform.restrictsReason.value = strCounterLength;

	if (strCounter.length > 100) 
	            {
				strval = strval.substring(0,characters2);
				document.Submitappform.Reason.value = strval;
				document.Submitappform.Reason.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
				return false;
	            }
		        return true;
	        }

//Appliedbefore2 Words Typing Restriction
function charrestrictionAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.Submitappform.Appliedbefore2.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            document.Submitappform.restrictsAppliedbefore2.value = strCounterLength;

	if (strCounter.length > 100) 
	            {
				strval = strval.substring(0,characters2);
				document.Submitappform.Appliedbefore2.value = strval;
				document.Submitappform.Appliedbefore2.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Subject Words Typing Restriction
function charrestrictionSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.Submitappform.GQ_Subject.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            document.Submitappform.restrictsSubject.value = strCounterLength;

	if (strCounter.length > 500) 
	            {
				strval = strval.substring(0,characters3);
				document.Submitappform.GQ_Subject.value = strval;
				document.Submitappform.GQ_Subject.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('500WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Project Words Typing Restriction
function charrestrictionProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.Submitappform.GQ_Project.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            document.Submitappform.restrictsProject.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.Submitappform.GQ_Project.value = strval;
				document.Submitappform.GQ_Project.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

// Awards Words Typing Restriction
function charrestrictionAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.Submitappform.GQ_Awards.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            document.Submitappform.restrictsAwards.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.Submitappform.GQ_Awards.value = strval;
				document.Submitappform.GQ_Awards.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Result Words Typing Restriction
function charrestrictionResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.Submitappform.GQ_Result.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            document.Submitappform.restrictsResult.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.Submitappform.GQ_Result.value = strval;
				document.Submitappform.GQ_Result.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 	