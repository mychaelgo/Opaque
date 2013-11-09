function posthover(id) {
	document.getElementById(id).style.backgroundColor = "#f1f1f1";
	document.getElementById("edit" + id).style.visibility = "visible";
}

function postout(id) {
	document.getElementById(id).style.backgroundColor = "#fff";
	document.getElementById("edit" + id).style.visibility = "hidden";
}

function changetypefollow(id, type) {
	if (type == "1") {
		document.getElementById(id).innerHTML = "Unfollow";
		document.getElementById(id).className = "btn btn-danger"
	} else if (type == "0") {
		document.getElementById(id).innerHTML = "Following";
		document.getElementById(id).className = "btn btn-info"
	}
}

function changetypefollow2(id, type) {
	if (type == "1") {
		document.getElementById(id).innerHTML = "Following";
		document.getElementById(id).className = "btn btn-info"
	} else if (type == "0") {
		document.getElementById(id).innerHTML = "Unfollow";
		document.getElementById(id).className = "btn btn-danger"
	}
}