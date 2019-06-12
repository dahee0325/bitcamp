function all_check() {

    var all = document.getElementById('all_check');

    var check = [];
    check.push(document.getElementById('check1'));
    check.push(document.getElementById('check2'));
    check.push(document.getElementById('check3'));
    check.push(document.getElementById('check4'));

    var span = [];
    span.push(document.getElementById('check1_l'));
    span.push(document.getElementById('check2_l'));
    span.push(document.getElementById('check3_l'));
    span.push(document.getElementById('check4_l'));

    if (all.checked) {
        all.checked = true;
        document.getElementById('allcheck_l').style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_check_on_l_24.png)';
        for (var i = 0; i < check.length; i++) {
            check[i].checked = true;
            span[i].style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_on_s_20.png)';
        }
    } else if (!all.checked) {
        all.checked = false;
        document.getElementById('allcheck_l').style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_check_off_24.png)';
        for (var i = 0; i < check.length; i++) {
            check[i].checked = false;
            span[i].style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_off_s_20.png)';
        }
    }
}


function select1() {

    var check1 = document.getElementById('check1');
    var check1_l = document.getElementById('check1_l');

    if (check1.checked) {
        check1_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_on_s_20.png)';
    } else {
        check1_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_off_s_20.png)';
    }
}


function select2() {

    var check2 = document.getElementById('check2');
    var check2_l = document.getElementById('check2_l');

    if (check2.checked) {
        check2_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_on_s_20.png)';
    } else {
        check2_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_off_s_20.png)';
    }
}


function select3() {

    var check3 = document.getElementById('check3');
    var check3_l = document.getElementById('check3_l');

    if (check3.checked) {
        check3_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_on_s_20.png)';
    } else {
        check3_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_off_s_20.png)';
    }
}


function select4() {

    var check4 = document.getElementById('check4');
    var check4_l = document.getElementById('check4_l');

    if (check4.checked) {
        check4_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_on_s_20.png)';
    } else {
        check4_l.style.backgroundImage = 'url(https://static.nid.naver.com/images/ui/myinfo/pc_chcek_off_s_20.png)';
    }
}


function btn_true() {

    var check1 = document.getElementById('check1');
    var check2 = document.getElementById('check2');
    var p = document.getElementById('btn_false_p');

    if (!(check1.checked && check2.checked)) {
        p.style.display = 'block';
        return false;
    } else {
        location.href = 'naver_join.html';
    }

}