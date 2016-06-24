var formId; 	// reference to the main form
var winId;		// reference to the popup window
var formToSubmit;
var mustSubmitForm = false;


function selectWindowAndSubmit(action, form, target) {
	selectWindow(action, form, target);
	mustSubmitForm = true;
	formToSubmit = action.form;
}

function selectWindow(action, form, target, ids) {
	formId=action.form.id;
	hform=document.forms[form];
	hform.action=target + ( (ids) ? "?ids=" + ids : "");
    var win3 = centerWindow(400, 600 );
	winId = window.open(hform.action, hform.target);
}

function userTextWindow(element, form, action, glprofile) {
	formId=element.form.id;
	hform=document.forms[form];
	elementId=element.id.substring(element.id.indexOf('_')+1);
	hform.action=action + "?DSProperty=" +elementId+ "&GLProfile=" + glprofile;
    var win3 = centerWindow(400, 600);
	winId = window.open(hform.action, hform.target);
}

// This function is called from the popup window 
// when a user clicks on a row from the list.
// The selected row values are copied to a set of text fields in the main form.
function update(to) {
	var xmlDoc;
    if (window.ActiveXObject) { 
        xmlDoc = new ActiveXObject("MSXML2.DOMDocument"); 
        xmlDoc.loadXML(to); 
    } else if(document.implementation) { 
        var parser = new DOMParser(); 
        xmlDoc = parser.parseFromString(to,"text/xml");     
    }     
	var items = xmlDoc.getElementsByTagName("item")[0];
	// loop through <item> elements, and update each lookup element
    for (var i = 0; i < items.childNodes.length; i++) {
    	try {
    	    var child = items.childNodes[i];
    		var nodeName = child.getAttribute('name');
    		var node = document.getElementById(nodeName);
    		if ( node ) {
				node.value = child.getAttribute('value');
				// MyFaces disabledOnClientSide
				node.onchange();
            }
    	} catch(e) {
    	   alert( e );
        }
    }
	winId.close();
	if (mustSubmitForm) {
		formToSubmit.submit();
	}
}

function reportWindow(element, form, action, id) {
	reportKey=element.id;
	hform=document.forms[form];
	var url = action + "?reportKey=" +reportKey;
	if ( id ) {
		url += "&id=" + id; 
	}
	hform.action = url;
    var win3 = centerWindow(600, 250);
	winId = window.open(hform.action, hform.target);
	hform.submit();// Forces actionListener to be executed.
}

function fileUploadWindow( form, listener, action, returnPage, bundle) {
	hform=document.forms[form];
	var fullAction = action + "?listener=" + listener + "&returnPage=" + returnPage;
	if ( bundle ) {
		fullAction += "&bundle=" + bundle;
	}
	hform.action = fullAction;
	var win3 = centerWindow(450, 120);
	winId = window.open(hform.action, hform.target);
	hform.submit();// Forces actionListener to be executed.
}

function downloadWindow( form, controller, action) {
	hform=document.forms[form];
	var fullAction = action + "?controllerName=" + controller;
	hform.action = fullAction;
	var win3 = centerWindow(450, 120);
	winId = window.open(hform.action, hform.target);
	hform.submit();// Forces actionListener to be executed.
}

function centerWindow(popW, popH, target) {
	if (!target || target == "") {
		target = "list";
	}
	var w = 480, h = 340;
	if (document.all) {
	   /* the following is only available after onLoad */
	   w = document.body.clientWidth;
	   h = document.body.clientHeight;
	} else 
		if (document.layers) {
			w = window.innerWidth;
			h = window.innerHeight;
		}
	var leftPos = (w-popW)/2, topPos = (h-popH)/2;
	features='width=' + popW + 
			 ',height='+popH+
			 ',top='+topPos+
			 ',left='+leftPos+
			 ',toolbar=0,location=0,directories=0,status=1,menubar=0,scrollbars=0,resizable=1';
	return window.open('',target,features);
}

/*this function set the body height and the scroll to a fixed number*/
function aonResizeBody(){
	if (document.body) {
		y = document.body.clientHeight;
	}else if (document.documentElement && document.documentElement.clientHeight) {
		y = document.documentElement.clientHeight;		
	}
	if (self.innerHeight) {
		//FF
		y = self.innerHeight;
	}
	
	var headerHeight=0;
	var toolbarHeight=0;
	var subtitleHeight=0;
	var headerRegion=document.getElementById("aon-content-region-header");	
	var toolbar=document.getElementById("aon-content-toolbar");
	var subtitle=document.getElementById("aon-content-subtitle");
	var errors=document.getElementById("aon-errors");
	var windowPopUpHeader=document.getElementById("aon-window-popup-header");
	var windowPopUpFooter=document.getElementById("aon-window-popup-footer");
	var windowPopUpTitle=document.getElementById("aon-window-popup-title");
	
	var headerHeight=0;
	var toolbarHeight=0;
	var subtitleHeight=0;
	var errorsHeight=0;
	var windowPopUpHeaderHeight=0;
	var windowPopUpFooterHeight=0;
	var windowPopUpTitleHeight=0;
	
	if(headerRegion!=null){
		var headerHeight=headerRegion.offsetHeight;	
				
	}
	if(toolbar!=null){
		var toolbarHeight=toolbar.offsetHeight;	
			
	}
	if(subtitle!=null){
		var subtitleHeight=subtitle.offsetHeight;
			
	}
	if(errors!=null){
		var errorsHeight=errors.offsetHeight;	
		
	}
	if(windowPopUpHeader!=null){
		var windowPopUpHeaderHeight=windowPopUpHeader.offsetHeight;			
	}
	if(windowPopUpFooter!=null){
		var windowPopUpFooterHeight=windowPopUpFooter.offsetHeight;			
	}
	if(windowPopUpTitle!=null){
		var windowPopUpTitleHeight=windowPopUpTitle.offsetHeight;			
	}
	var remain_height=0;
	
	remain_height = headerHeight + toolbarHeight + subtitleHeight + errorsHeight;
	remain_height+=windowPopUpHeaderHeight+ windowPopUpFooterHeight + windowPopUpTitleHeight;


	
	if((y-remain_height)>0){
		document.getElementById("aon-scroll-area").style.height= (y-remain_height) + "px";
	}
	else{
		document.getElementById("aon-scroll-area").style.height="0px";
	}
	
	return false;
}
