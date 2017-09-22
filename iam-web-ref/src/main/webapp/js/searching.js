function checksearch(form) {
	var sEmpty ="";
    if (document.forms.SearchName.name.value == sEmpty) {
        alert("Search is empty");
        document.forms.SearchName.name.focus();
        return false;
    }
}