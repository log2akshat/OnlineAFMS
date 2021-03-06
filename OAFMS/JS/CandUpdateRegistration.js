// Registration JavaScript

function validateForm_CandUpdateform() {
	with (document.CandUpdateform) {
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
        var AppName = document.CandUpdateform.Name;
        if (AppName.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Name')));
        		AppName.value="";
        		AppName.focus();
        		return false;
        	}
        
        // DOB Validation
        var Bday = document.CandUpdateform.DOB;
        if (Bday.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('DOB')));
        		Bday.value="";
        		Bday.focus();
        		return false;
        	}
        
        // Gender Validation
        var Sex = document.CandUpdateform.Gender;
        if (Gender.options[Gender.selectedIndex].value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Gender')));
        		Sex.value="";
        		Sex.focus();
        		return false;
        	}
        
        // Nationality Validation
        var Citizenship = document.CandUpdateform.Nationality;
        if (Citizenship.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Nationality')));
        		Citizenship.value="";
        		Citizenship.focus();
        		return false;
        	}
        
        // Correspondence Address Validation
        var LocalAddress = document.CandUpdateform.CAddress;
        if (LocalAddress.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CAddress')));
        		LocalAddress.value="";
        		LocalAddress.focus();
        		return false;
        	}
        
        // Correspondence Address Pin Validation
        var LocalPin = document.CandUpdateform.CPin;
        if (LocalPin.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CPin')));
        		LocalPin.value="";
        		LocalPin.focus();
        		return false;
        	}
        
        // Correspondence Address City Validation
        var LocalCity = document.CandUpdateform.CCity;
        if (LocalCity.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CCity')));
        		LocalCity.value="";
        		LocalCity.focus();
        		return false;
        	}
        
        // Correspondence Address State Validation
        var LocalState = document.CandUpdateform.CState;
        if (LocalState.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('CState')));
        		LocalState.value="";
        		LocalState.focus();
        		return false;
        	}
        
        // Telephone Validation
        var Phone = document.CandUpdateform.Telephone;
        if (Phone.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Telephone')));
        		Phone.value="";
        		Phone.focus();
        		return false;
        	}
        
        // Permanent Address Validation
        var PermanentAddress = document.CandUpdateform.PAddress;
        if (PermanentAddress.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PAddress')));
        		PermanentAddress.value="";
        		PermanentAddress.focus();
        		return false;
        	}
        
        // Permanent Address Pin Validation
        var PermanentPin = document.CandUpdateform.PPin;
        if (PermanentPin.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PPin')));
        		PermanentPin.value="";
        		PermanentPin.focus();
        		return false;
        	}
        
        // Permanent Address City Validation
        var PermanentCity = document.CandUpdateform.PCity;
        if (PermanentCity.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PCity')));
        		PermanentCity.value="";
        		PermanentCity.focus();
        		return false;
        	}
        
        // Permanent Address State Validation
        var PmntState = document.CandUpdateform.PermanentState;
        if (PmntState.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PState')));
        		PmntState.value="";
        		PmntState.focus();
        		return false;
        	}
        
        // Category Validation
        var Community = document.CandUpdateform.Category;
        if (Community.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Category')));
        		Community.value="";
        		Community.focus();
        		return false;
        	}
        
        // Referee1 Validation
        var Ref1 = document.CandUpdateform.Referee1;
        if (Ref1.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee1')));
        		Ref1.value="";
        		Ref1.focus();
        		return false;
        	}
      
        // Referee1 Email Validation
        var Guide1Email=document.CandUpdateform.Ref1Email;
        if (Guide1Email.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee1Email')));
        		Guide1Email.value="";
        		Guide1Email.focus();
        		return false;
        	}
        
        if (echeck(Guide1Email.value)==false){
        	Guide1Email.value="";
        	Guide1Email.focus();
            return false;
        }
        
        // Referee2 Validation
        var Ref2=document.CandUpdateform.Referee2;
        if (Ref2.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee2')));
        		Ref2.value="";
        		Ref2.focus();
        		return false;
        	}
      
        // Referee2 Email Validation
        var Guide2Email=document.CandUpdateform.Ref2Email;
        if (Guide2Email.value == ""){
        	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('Referee2Email')));
        		Guide2Email.value="";
        		Guide2Email.focus();
        		return false;
        	}
        
        if (echeck(Guide2Email.value)==false){
        	Guide2Email.value="";
        	Guide2Email.focus();
            return false;
        }
        
        // E-mail ID Validations
        var mail1 = document.CandUpdateform.Email;
        var mail2 = document.CandUpdateform.Ref1Email;
        var mail3 = document.CandUpdateform.Ref2Email;
        
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
	var AreaofInterest = document.CandUpdateform.Interest;
    if (AreaofInterest.value == ""){
    	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('PresentInterest')));
    		AreaofInterest.value="";
    		AreaofInterest.focus();
    		return false;
    }
    
 // Interest Validation
	var SubjectInterest = document.CandUpdateform.GQ_Subject;
    if (SubjectInterest.value == ""){
    	alert(gt.gettext('Error').concat("\n\n").concat(gt.gettext('SubjectInterest')));
    		SubjectInterest.value="";
    		SubjectInterest.focus();
    		return false;
    }
    
    ////////////////////Single Quotes Pop Ups//////////////////
    var apposreason = document.CandUpdateform.Reason;
    if (appostropheReason(apposreason.value) == false){
    		apposreason.value="";
    		apposreason.focus();
    		return false;
    	}
    
    var apposAppliedbefore2 = document.CandUpdateform.Appliedbefore2;
    if (appostropheAppliedbefore2(apposAppliedbefore2.value)==false){
    		apposAppliedbefore2.value="";
    		apposAppliedbefore2.focus();
    		return false;
    	}
    
    var apposSubj = document.CandUpdateform.GQ_Subject;
    if (appostropheSubject(apposSubj.value)==false){
    		apposSubj.value="";
    		apposSubj.focus();
    		return false;
    	}
    
    var apposProject = document.CandUpdateform.GQ_Project;
    if (appostropheProject(apposProject.value)==false){
    		apposProject.value="";
    		apposProject.focus();
    		return false;
    	}
    
    var apposAwards = document.CandUpdateform.GQ_Awards;
    if (appostropheAwards(apposAwards.value)==false){
    		apposAwards.value="";
    		apposAwards.focus();
    		return false;
    	}
    
    var apposResult = document.CandUpdateform.GQ_Result;
    if (appostropheResult(apposResult.value)==false){
    		apposResult.value="";
    		apposResult.focus();
    		return false;
    	}
    
////////////////////Word Limit Pop Ups//////////////////
    var restReason = document.CandUpdateform.Reason;
    if (charescReason(restReason.value)==false){
    		restReason.value="";
    		restReason.focus();
    		return false;
    	}
    
    var restAppliedbefore2 = document.CandUpdateform.Appliedbefore2;
    if (charescAppliedbefore2(restAppliedbefore2.value)==false){
    		restAppliedbefore2.value="";
    		restAppliedbefore2.focus();
    		return false;
    	}
    
    var restSubject = document.CandUpdateform.GQ_Subject;
    if (charescSubject(restSubject.value)==false){
    		restSubject.value="";
    		restSubject.focus();
    		return false;
    	}
    
    var restProject = document.CandUpdateform.GQ_Project;
    if (charescProject(restProject.value)==false){
    		restProject.value="";
    		restProject.focus();
    		return false;
    	}
    
    var restAwards = document.CandUpdateform.GQ_Awards;
    if (charescAwards(restAwards.value)==false){
    		restAwards.value="";
    		restAwards.focus();
    		return false;
    	}
    
    var restResult = document.CandUpdateform.GQ_Result;
    if (charescResult(restResult.value)==false){
    		restResult.value="";
    		restResult.focus();
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
	var reason = document.CandUpdateform.Reason.value;
	if (reason.indexOf("'")!=-1){
	    alert((gt.gettext('Reason')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Appliedbefore2 = document.CandUpdateform.Appliedbefore2.value;
	if (Appliedbefore2.indexOf("'")!=-1){
	    alert((gt.gettext('Appliedbefore2')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Subject = document.CandUpdateform.GQ_Subject.value;
	if (Subject.indexOf("'")!=-1){
	    alert((gt.gettext('Subject')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Project = document.CandUpdateform.GQ_Project.value;
	if (Project.indexOf("'")!=-1){
	    alert((gt.gettext('Project')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Awards = document.CandUpdateform.GQ_Awards.value;
	if (Awards.indexOf("'")!=-1){
	    alert((gt.gettext('Awards')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

function appostropheResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var Result = document.CandUpdateform.GQ_Result.value;
	if (Result.indexOf("'")!=-1){
	    alert((gt.gettext('Result')).concat("\n\n").concat(gt.gettext('SingleQuoteError')).concat("\n\n").concat(gt.gettext('SingleQuoteErrorMsg')));
		return false;
			 }
	 		 return true;					
		}

///////////////////////////////////////////////////Submition Word Limit Restriction//////////////////////////////////////////

function charescReason(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.CandUpdateform.Reason.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 100) 
	            {
	    	document.CandUpdateform.Reason.focus();
	    	alert((gt.gettext('Reason')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }  

function charescAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.CandUpdateform.Appliedbefore2.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 100) 
	            {
	    	document.CandUpdateform.Appliedbefore2.focus();
	    	alert((gt.gettext('Appliedbefore2')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }  

function charescSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.CandUpdateform.GQ_Subject.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 500) 
	            {
	    	document.CandUpdateform.GQ_Subject.focus();
	    	alert((gt.gettext('Subject')).concat("\n\n").concat(gt.gettext('500WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        } 

function charescProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.CandUpdateform.GQ_Project.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.CandUpdateform.GQ_Project.focus();
	    	alert((gt.gettext('Project')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        } 

function charescAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.CandUpdateform.GQ_Awards.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.CandUpdateform.GQ_Awards.focus();
	    	alert((gt.gettext('Awards')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
	                return false;
	            }
		        return true;
	        }

function charescResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval= document.CandUpdateform.GQ_Result.value;
	var strCounter1 = strval.split(" ");
	var strCounterLength1 = strCounter1.length - 1;
	    if (strCounter1.length > 150) 
	            {
	    	document.CandUpdateform.GQ_Result.focus();
	    	alert((gt.gettext('Result')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('TrimClear')));
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
	if(document.CandUpdateform.copy.checked){
		document.CandUpdateform.PAddress.value = document.CandUpdateform.CAddress.value;
		document.CandUpdateform.PPin.value = document.CandUpdateform.CPin.value;
		document.CandUpdateform.PCity.value = document.CandUpdateform.CCity.value;
		document.CandUpdateform.PermanentState.value = document.CandUpdateform.CState.value;
}
	else
		{
		document.CandUpdateform.PAddress.value = "";
		document.CandUpdateform.PPin.value = "";
		document.CandUpdateform.PCity.value = "";		
		document.CandUpdateform.PermanentState.value = "";
		}
}

function pgyear(form)
	{
	if(document.CandUpdateform.Edu_PG.value != "NULL")
	{
		document.CandUpdateform.Edu_PG_Year.readOnly = false;
	}
	else{
		((document.CandUpdateform.Edu_PG_Year.readOnly = true) &&
				(document.CandUpdateform.Edu_PG_Year.value = "0000"));
	}
	}

function pgpc(form)
{
if(document.CandUpdateform.Edu_PG.value != "NULL")
{
	document.CandUpdateform.Edu_PG_Pc.readOnly = false;
}
else{
	((document.CandUpdateform.Edu_PG_Pc.readOnly = true) &&
			(document.CandUpdateform.Edu_PG_Pc.value = "00"));
}
}


function appbefore(form)
{
if(document.CandUpdateform.Appliedbefore1.value != "Yes")
{
	((document.CandUpdateform.Appliedbefore2.disabled = true) &&
			(document.CandUpdateform.Appliedbefore2.value = "Click Yes to give details..."));
}
else{
	((document.CandUpdateform.Appliedbefore2.disabled = false) && (document.CandUpdateform.Appliedbefore2.value = ""));
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
	var strval = document.CandUpdateform.Reason.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.CandUpdateform.restrictsReason.value = strCounterLength;

	if (strCounter.length > 100) 
	            {
				strval = strval.substring(0,characters2);
				document.CandUpdateform.Reason.value = strval;
				document.CandUpdateform.Reason.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
				return false;
	            }
		        return true;
	        }

//Appliedbefore2 Words Typing Restriction
function charrestrictionAppliedbefore2(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.CandUpdateform.Appliedbefore2.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.CandUpdateform.restrictsAppliedbefore2.value = strCounterLength;

	if (strCounter.length > 100) 
	            {
				strval = strval.substring(0,characters2);
				document.CandUpdateform.Appliedbefore2.value = strval;
				document.CandUpdateform.Appliedbefore2.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('100WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Subject Words Typing Restriction
function charrestrictionSubject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.CandUpdateform.GQ_Subject.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.CandUpdateform.restrictsSubject.value = strCounterLength;

	if (strCounter.length > 500) 
	            {
				strval = strval.substring(0,characters3);
				document.CandUpdateform.GQ_Subject.value = strval;
				document.CandUpdateform.GQ_Subject.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('500WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Project Words Typing Restriction
function charrestrictionProject(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.CandUpdateform.GQ_Project.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.CandUpdateform.restrictsProject.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.CandUpdateform.GQ_Project.value = strval;
				document.CandUpdateform.GQ_Project.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

// Awards Words Typing Restriction
function charrestrictionAwards(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.CandUpdateform.GQ_Awards.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.CandUpdateform.restrictsAwards.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.CandUpdateform.GQ_Awards.value = strval;
				document.CandUpdateform.GQ_Awards.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 

//Result Words Typing Restriction
function charrestrictionResult(){
	var gt = new Gettext({ 'domain' : 'messages' });
	var strval = document.CandUpdateform.GQ_Result.value;
	var strCounter = strval.split(" ");
	            var strCounterLength = strCounter.length - 1;
	            //document.CandUpdateform.restrictsResult.value = strCounterLength;

	if (strCounter.length > 150) 
	            {
				strval = strval.substring(0,characters2);
				document.CandUpdateform.GQ_Result.value = strval;
				document.CandUpdateform.GQ_Result.focus();
				alert((gt.gettext('Error')).concat("\n\n").concat(gt.gettext('150WordsLimit')).concat("\n\n").concat(gt.gettext('Trim')));
	                return false;
	            }
		        return true;
	        } 	