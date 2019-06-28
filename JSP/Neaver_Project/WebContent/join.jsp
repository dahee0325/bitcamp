<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 : 회원가입</title>
<link href="css/join.css" rel="stylesheet" type="text/css">
<style>

</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/join.js"></script>
</head>
<body>
<div id="wrap">
	<%@ include file="frame/header2.jsp" %>
	<form id="form">
            <div id="contents">
                <div id="id_div">
                    <h3><label for="userId">아이디</label></h3>
                    <span>
                        <input class="input" id="userId" type="text"><span>@naver.com</span>
                    </span>
                    <h5></h5>
                </div>
                <div id="pw_div">
                    <h3><label for="userPw">비밀번호</label></h3>
                    <span>
                        <input class="input" id="userPw" type="password">
                        <label for="userPw"><span></span></label>
                    </span>
                    <h5></h5>
                    <h3><label for="userPwc">비밀번호 재확인</label></h3>
                    <span>
                        <input class="input" id="userPwc" type="password">
                        <label for="userPwc"><span></span></label>
                    </span>
                    <h5></h5>
                </div>
                <div id="user_div">
                    <h3><label for="userName">이름</label></h3>
                    <span>
                        <input class="input" id="userName" type="text">
                    </span>
                    <h5></h5>
                </div>
                <div>
                    <h3><label for="brith_year">생년월일</label></h3>
                    <div id="brith_div">
                        <article class="brith_span">
                            <span>
                                <input class="input" maxlength="4" id="brith_year" type="text" placeholder="년(4자)">
                            </span>
                        </article>
                        <article class="brith_span">
                            <span>
                                <select class="input" id="brith_month">
                                    <option>월</option>
                                </select>
                            </span>
                        </article>
                        <article class="brith_span">
                            <span>
                                <input class="input" maxlength="2" id="brith_day" type="text" placeholder="일">
                            </span>
                        </article>
                        <h5></h5>
                    </div>
                    <h3><label for="gender">성별</label></h3>
                    <span>
                        <select class="input" id="gender">
                            <option>성별</option>
                            <option>남자</option>
                            <option>여자</option>
                        </select>
                    </span>
                    <div id="email_div">
                        <h3><label for="userEmail">본인 확인 이메일<span>(선택)</span></label></h3>
                        <span>
                            <input class="input" type="text" id="userEmail" placeholder="선택입력">
                        </span>
                    </div>
                </div>
                <div id="phone_div">
                    <h3><label for="userPhone">휴대전화</label></h3>
                    <span>
                        <select class="input">
                            <option>대한민국 +82</option>
                        </select>
                    </span>
                    <div>
                        <span>
                            <input class="input" id="userPhone" type="text" placeholder="전화번호 입력">
                        </span>
                        <input id="phoneBtn" type="button" value="인증번호 받기">
                    </div>
                    <div>
                        <span>
                            <input class="input" id="userPhoneNum" type="text" placeholder="인증번호 입력하세요">
                        </span>
                        <h5></h5>
                        <h4></h4>
                    </div>
                </div>
                <div id="btn">
                    <input type="submit" value="가입하기">
                </div>
            </div>
        </form>
	<%@ include file="frame/footer.jsp" %>
</div>
</body>
</html>