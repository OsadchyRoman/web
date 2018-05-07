function getById(id) {
    if (document.getElementById)
        return document.getElementById(id);
    else
        return document.all[id];
}
function showhide(el, show) {
    if (!(typeof el == 'object'))
        el = getById(el);
    if (!el) return null;
    window.undefined = window.undefined; // fix for js ver < 1.5
    if (show===undefined)
        show = !!(el.style.display == 'none');
    el.style.display = (show ? 'block' : 'none');
    return el.style.display;
}

var codeLoad = function(url, element) {
    $.ajax({ url: url, cache : false})
        .done(function(response) {
            $(element).text(response);
        });
};