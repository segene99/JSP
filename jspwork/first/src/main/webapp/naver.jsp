<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    body {background-color: #f5f6f7;}
    h2 {
      color: #03c75a;
      font-weight: bolder;
      font-size: 50pt;
      text-align: center;
      letter-spacing: 5px;
    }

    small {
      color: #999;
    }

    label {
      font-weight: bold;
    }

    .cnum {
      width: 100%;
    }

    @media (min-width: 992px) {
      .container, .container-lg, .container-md, .container-sm {
        max-width: 960px;
      }
      .col-md-8 {
        padding-right: 0px;
      }
      .col-md-4{
        padding-left: 0px;
      }
    }

    @media (min-width: 768px) {
      .container, .container-md, .container-sm {
        max-width: 720px;
      }
      .col-md-8 {
        padding-right: 0px;
      }
      .col-md-4{
        padding-left: 0px;
      }
    }

    @media (min-width: 576px) {
      .container, .container-sm {
        max-width: 540px;
      }
      .col-md-8 {
        padding-right: 13px;
      }
    }
  </style>
</head>

<body>

  <div class="container">
    <h2 class="mt-5 mb-3">NAVER</h2>
    <form  action="naver_process.jsp" method="post" class="needs-validation" novalidate>
      <div class="form-group">
        <label for="id">아이디</label>
        <input type="text" class="form-control" id="id" name="id" required>
        <div class="valid-feedback">멋진 아이디네요!</div>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div>

      <div class="form-group">
        <label for="pwd">비밀번호</label>
        <input type="password" class="form-control" id="password" name="password"  required>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div>

      <div class="form-group">
        <label for="passwordre">비밀번호 재확인</label>
        <input type="password" class="form-control" id="passwordre" name="passwordre" required>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div><br>

      <div class="form-group">
        <label for="name">이름</label>
        <input type="text" class="form-control" id="name" name="name" required>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div>

      <div class="form-group">
        <label for="year">생년월일</label>
        <div class="row">
          <div class="col">
            <input type="text" class="form-control" id="year" name="year"  placeholder="년(4자)" required>
          </div>
          <div class="col">
            <select class="form-control" id="mon" name="mon" required>
              <option value="">월</option>
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
              <option>6</option>
              <option>7</option>
              <option>8</option>
              <option>9</option>
              <option>10</option>
              <option>11</option>
              <option>12</option>
            </select>
          </div>
          <div class="col">
            <input type="number" class="form-control" id="date" name="date" min="1" max="31"  placeholder="일" required>
          </div>
        </div>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div>

      <div class="form-group">
        <label for="gender">성별</label>
        <select class="form-control" id="gender" name="gender" required>
          <option value="">성별</option>
          <option>남</option>
          <option>여</option>
          <option>선택안함</option>
        </select>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div>

      <div class="form-group">
        <label for="email">본인 확인 이메일<small>(선택)</small></label>
        <input type="email" class="form-control" id="email"  placeholder="Enter email" name="email"  required>
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div><br>

      <div class="form-group">
        <label for="phone">휴대전화</label>
        <select class="form-control" id="phone" name="phone" required>
          <option value="+82">대한민국 +82</option>
        </select>
        <div class="row">
          <div class="col-md-8"><input type="tel" class="form-control mt-2" id="cnum" placeholder="전화번호 입력" name="cnum"  required>
          </div>
          <div class="col-md-4"><button type="button" class="btn btn-success mt-2 cnum">인증번호 받기</button>
          </div>
        </div>
        <input type="text" class="form-control mt-2" disabled id="cnumip" placeholder="인증번호를 입력하세요." name="cnumip">
        <div class="invalid-feedback">필수 정보입니다.</div>
      </div><br>

      <div class="form-group">
        <button type="submit" class="btn btn-success form-control">가입하기</button>
      </div>
    </form>
  </div>
<script>
(function() {
  'use strict';
  window.addEventListener('load', function() {
    var forms = document.getElementsByClassName('needs-validation');
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
        valChk(event);
      }, false);
    });
  }, false);
})();


function valChk(e){
  e.preventDefault();

  var emailRegex = /^[-!#$%\s'*+./0-9=?A-Z^_a-z{|}~]+@[A-Za-z{|}~]+.[A-Za-z]+$/,
  idRegex = /^[0-9A-Z_a-z]+$/,
  phoneRegex = /^010\d{4}\d{4}$/,
  yearRegex = /^\d{4}$/,
  monRegex = /^\d{1,2}$/,
  dateRegex = /^\d{1,2}$/,
  id = $( "#id" ),
  name = $( "#name" ),
  email = $( "#email" ),
  password = $( "#password" ),
  passwordre = $( "#passwordre" ),
  year = $( "#year" ),
  mon = $( "#mon" ),
  year = $( "#year" ),
  date = $( "#date" ),
  phone = $( "#cnum" );

  var valid = true;
  valid = valid && checkRegexp( id, idRegex,"아이디 입력 형식이 잘못되었습니다." );
  valid = valid && checkRegexp( year, yearRegex,"생년은 네 자리 숫자로 입력해주세요." );
  valid = valid && checkRegexp( mon, monRegex,"태어난 월을 입력해주세요." );
  valid = valid && checkRegexp( date, dateRegex,"태어난 일을 입력해주세요." );
  valid = valid && checkRegexp( email, emailRegex,"이메일 입력 형식이 잘못되었습니다." );
  valid = valid && checkRegexp( phone, phoneRegex,"전화번호 입력 형식이 잘못되었습니다." );
  valid = valid && checkLength( id, "아이디", 4, 16 );
  valid = valid && checkLength( name, "사용자이름", 3, 16 );
  valid = valid && checkLength( password, "비밀번호", 5, 16 );
  valid = valid && checkMatch( password.val(), passwordre.val());

//비밀번호 매칭
function checkMatch(p, pre){
  let pval = p;
  console.log(pval);
  let pvalre = pre;
  console.log(pvalre);

  let res = true;

  if(pval != pvalre){
    alert("비밀번호가 일치하지 않습니다.");
    res = false;
  }

  return res;

}

//정규식 일치 여부 확인
  function checkRegexp( o, regexp, n ) {
    let cnt = $("#"+o.attr('id')+" ~ div.invalid-feedback").length;
    console.log('o: ',o);
    console.log('cnt: ',cnt);
    
    if ( !( regexp.test( o.val() ) ) ) {      
      if(cnt == 0) o.closest("div.row").nextAll("div.invalid-feedback").eq(0).text(n).show();
      else{
         o.nextAll("div.invalid-feedback").eq(0).text(n).show();
         o.nextAll("div.valid-feedback").eq(0).hide();
      }
      return false;
    } else {
      if(cnt == 0) o.closest("div.row").nextAll("div.invalid-feedback").eq(0).text(n).hide();
      else o.nextAll("div.invalid-feedback").eq(0).text(n).hide();
      return true;
    }
  }

  function checkLength( o, n, min, max ) { 
      if ( o.val().length > max || o.val().length < min ) {
        return false;
      } else {
        return true;
      }
  }

  if(valid) e.target.submit();

}
</script>
</body>

</html>