function selectRow( element ) {
	changeRowStyle( element, "aon-table-row-hover" );
}

function unselectRow( element ) {
	changeRowStyle( element, "none" );
}

function changeRowStyle( element, className ) {
	var parent = element;
	while ( parent ){
		if ( parent.tagName == "TR" ) {
			parent.className=className;
			break;
		}
		parent = parent.parentNode;
	}
}

rowEnabled = true;

function enableRowSubmit( prop) {
	rowEnabled = prop;
}

function sendRow( e ){
	if ( rowEnabled ) {
		element = e.firstChild;
		link = getTblLink( element );
		if ( link ) {
			link.onclick();
		}
	}
}

function getTblLink( e ){
	while ( e ){
		if ( e.tagName == "A" && e.className=="aon-table-row-selected") {
			return e;
		} else {
			child = e.firstChild;
			if (child) {
				r = getTblLink( child );
				if (r) {
					return r
				}
			}
			e = e.nextSibling;
		}
	}
	return null;
}

function focusTableRow() {
	try {
		var mylist = document.forms[0];
		var listitems = mylist.getElementsByTagName("table");
		for (i=0; i < listitems.length; i++) {
			if (listitems[i].getAttribute("id").length > 0) {
				var inputEl = listitems[i].getElementsByTagName("input");
				if (inputEl.length > 1)
					inputEl[0].focus();
			}
		}
	} catch(e) {}
}
window.onload=focusTableRow;
