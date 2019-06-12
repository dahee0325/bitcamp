function all_check() {
    
    var all = document.getElementById('all_check');
    var check1 = document.getElementById('check1');
    var check2 = document.getElementById('check2');
    var check3 = document.getElementById('check3');
    var check4 = document.getElementById('check4');
    
    if(all.checked) {
        all.checked = true;
        check1.checked = true;
        check2.checked = true;
        check3.checked = true;
        check4.checked = true;
    } else if (!all.checked) {
        all.checked = false;
        check1.checked = false;
        check1.checked = false;
        check2.checked = false;
        check3.checked = false;
        check4.checked = false;
    }
    
    
}