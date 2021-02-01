2020.12.22 ~ 2021.02.26   
아우라네트워크 인턴 기간 기록
===================================
# 개발환경 세팅     
-JDK8: 자바 개발 키트   
-Eclipse(STS): IDE는 익숙한 것으로 사용 가능   
-vert.x: 네트워크 서버 프레임워크   
-SVN: 여러명의 소스 관리   

# CentOS or Ubuntu   
-CentOS가 21년 12월 31일에 종료되기 때문에 다른 환경으로 옮겨야 하는 기점이다.   

# 가상머신 – AWS(Amazon)/Azure(MS)/GCP(Google)   
-AWS: 시장에서 가장 높은 점유율, 다양한 분석 도구 제공, 향상된 연결 편의성   
-Azure: 윈도우 플랫폼에 강함, 쉬운 UI와 플랫폼 서비스, 일부 브라우저에서 호환성 떨어짐   
-GCP: Data, AI영역에서 앞섬, 오픈소스 소프트웨어 중심으로 구축   
GCP는 전반적으로 아직 부족함.   
AWS는 다양한 플랫폼을 지원 할 수 있지만 Azure는 제한적이다.   
윈도우를 사용하지 않기 때문에 AWS가 적합하다고 생각.   
   
# AWS를 활용한 CentOS환경 구축   
AWS인스턴스 추가 및 SSH설정   
   
======Github를 사용하여 과정 기록 시작=======  
   
CentOS에 Apache, Tomcat, MariaDB 설치해보기   
yum : Apache 명령어   
   
-yum 업데이트 하기   

![화면 캡처 2020-12-28 145903](https://user-images.githubusercontent.com/20660272/103192823-702feb80-491d-11eb-8028-6d9fe2089aec.png)   
...   
![화면 캡처 2020-12-28 145959](https://user-images.githubusercontent.com/20660272/103192833-7b831700-491d-11eb-9b1c-a016b80cbe6b.png)   
   
-httpd설치   
![화면 캡처 2020-12-28 145111](https://user-images.githubusercontent.com/20660272/103192505-44f8cc80-491c-11eb-93b8-ed11d53a3c06.png)   
...   
![화면 캡처 2020-12-28 145140](https://user-images.githubusercontent.com/20660272/103192556-71144d80-491c-11eb-925a-21405a9567a6.png)   
   
-FTP 서버 설치   
vsftpd 설치   
![화면 캡처 2020-12-28 150849](https://user-images.githubusercontent.com/20660272/103193090-a6219f80-491e-11eb-9cbf-34a55355a880.png)   
...   
![화면 캡처 2020-12-28 150906](https://user-images.githubusercontent.com/20660272/103193103-b2a5f800-491e-11eb-9e15-e92965e19408.png)   
   
=======자꾸 비밀번호가 잘못되어 막힘. 프로파일 삭제하다가 키도 날라가서 다시 처음부터 시작함========   
   
다시 AWS인스턴스 만들기   
![화면 캡처 2020-12-28 152941](https://user-images.githubusercontent.com/20660272/103194029-8c358c00-4921-11eb-9212-bffde1987e44.png)   
![화면 캡처 2020-12-28 153117](https://user-images.githubusercontent.com/20660272/103194082-bdae5780-4921-11eb-8faf-265669cfdecb.png)   
![화면 캡처 2020-12-28 153234](https://user-images.githubusercontent.com/20660272/103194139-edf5f600-4921-11eb-969c-6fb6d7599d5f.png)   
![화면 캡처 2020-12-28 162913](https://user-images.githubusercontent.com/20660272/103197732-f6eac580-4929-11eb-8af6-5f897a638f86.png)   
![화면 캡처 2020-12-28 163002](https://user-images.githubusercontent.com/20660272/103197764-066a0e80-492a-11eb-91b5-82fa4ccfc3d8.png)   
   
AWS리셋하고 DBS 분리하여 다시 설치해보기   

- - -
2달간 작업 할 웹 페이지 설계   
----------------------------
   
# UI
UI디자인 1차
![UI다자인_1 0 0](https://user-images.githubusercontent.com/20660272/103250911-a3c05380-49b9-11eb-8493-76e49e27066d.png)   
   
UI디자인 2차
![UI다자인_1 0 0](https://user-images.githubusercontent.com/20660272/103332566-ca5fb680-4aad-11eb-9863-9cc8075953be.png)     

UI디자인 3차(피드백 이후)   
![UI다자인_3차](https://user-images.githubusercontent.com/20660272/103494241-39a42480-4e79-11eb-8216-90118bae3dc4.png)   

UI디자인 4차(2021.01.06)   
![UI다자인_4차](https://user-images.githubusercontent.com/20660272/103731460-8d08a500-5028-11eb-96b2-b693cae423a1.png)   
   
# 사용 기술   
HTML : 웹 페이지 구성   
자바스크립트(kendo) : 조회, 선택조회, 팝업창, 저장, 초기화, 메뉴   
DB연결 : ?   
Softphone연결 : ?   

# 기능   
로그인/로그아웃 toggle, 보류/해제 toggle(Button, Notification)   
그룹명 combobox 그룹DB에서 가져오기(Combobox)   
초기화, 조회, 저장(Button)   
검색 조건에 맞게 리스트 갱신(Filter)   
검색된 리스트에서 선택하면 고객 정보 갱신(ListView-Selection)   
보유한 정보는 자동 입력, 수정 가능(Textbox)   
그룹명 검색 시 팝업창에 tree형식 리스트, 그룹 추가 가능(Styling, ListView-Editing)   
이메일 입력 시 포맷 맞게만 가능(Form-Validation)   
연락처 입력 시 포맷 맞게만 가능(MaskedTextbox)   
필수 입력항목 설정(Form)   
상담내역 클릭 시 메모칸 갱신(ListView-Selection)   
전화수신/발신 시 자동으로 상담내역 추가   
메뉴 유동적으로 열고닫기 가능(Efeect-SlideIn)   

# 예상 소요 기간   
기본 frame : 1주   
기본 script(Event 호출만) : 1주   
기본 script 구현 : 3~4주   
메뉴와 같은 부가 기능 : 2주 이상   
총 8주

# 질문사항   
상담내역의 문의사항은 Softphone의 기능으로 자동으로 입력되는 것이 가능한가?   

# 피드백   
기간에 총 기간도 명시 할 것   
화면 구성 1주 이상 걸릴 것임   
메뉴 화면 안쪽으로   
메모 공간 크기 줄이고 고객정보 칸 크기 늘이기   
저장은 메모만 가능하도록 버튼 위치 수정   
기능별로 묶어서 직관성 놀릴 것   
상담ㄴ용 조회는 표에서만   
고객정보는 수정/삭제 불가   
데이터는 로컬 데이터로(코드 내에 입력)   
1/15(금)까지 HTML로 화면 그리기   
최종 목표는 DB연결로 함   

# HTML 작업  
2021.01.04   
웹 페이지 상 위치 파악   
헤더, 탐색링크(nav), section, article 추가   
article에 검색창(table 사용), 검색 결과창 삽입(kendo)   
(2021.01.04)HTML 작업 1차 코드    
- 다음에 할 일   
    table에 넣은 검색창 toolbar로 바꾸기, 고객정보칸 만들기   

2021.01.05   
테이블로 만든 검색창 툴바로 변경하려 했지만 콤보박스와 마스크텍스트박스가 일반 텍스트박스로 바뀜   
메유판을 kendo 참고해서 반들라고 알려주셔서 naviagtion-drawer를 참고함   
notepad++을 사용하다가 VSCode가 편리하다고 하셔서 변경   
메뉴창을 만들긴 했지만 열고 닫는 버튼을 어떻게 배치해야 하는지 고민   
메뉴 버튼을 만들었지만 토글기능에 오류가 있고 확장했을때의 위치도 물안정하다   
고객 정보를 보여주는 표를 어떻게 만들어야 할지 막막하다-splitter?   
- 다음에 할 일   
    고객정보칸 만들기, 상담내역칸 만들기   

2021.01.06   
어려운 고객 정보란은 건너뛰고 상단내역란과 메모 추가   
검색창 부분 form으로 다시 만듦 maskedtextbox가 제대로 작동하지 않는다)kendo내에서도 안됨)   
고객정보란을 원래 그린 UI대로 할 수가 없다 수정해야 할 듯   
고객정보란UI 수정함   
일단 table로 고객정보란 만듦   
- 다음에 할 일   
    tilelayout으로 적절히 배치하기   
    table 디자인 개선할 방법 찾기   

2021.01.07   
탬플릿으로 구분하여 지금까지 만든 것들 적절히 배치   
검색창이 원래 form으로 만들었는데 크기수정이 어려워 validator로 수정함   
form에서 버튼을 없애는 방법을 몰라서 validator를 사용했는데 ```buttonsTemplate: "<button>Submit</button>"```으로 버튼 수정할 수 있다   
- 다음에 할 일   
    form으로 고객정보란 만들기   
    검색창 1줄로 만들기   
    이에 따라 템플릿 크기 수정   
    검색창과 메모창을 validator에서 form으로 변경   

2021.01.08   
고객정보란 form으로 생성했지만 칸 비율이 엉망   
검색창 1줄로 만들고 잉 따라 전체적인 탬플릿 비율 수정   
검색창과 메모창은 그대로 사용하는 것이 더 좋을 것 같아서 변경하지 않음   
validator와 form에서 내가 원하는대로 내용들을 배칠 할 방법을 모르겠다   
validator은 그냥 순서대로 나열만 되고 form은 제멋대로 우측정렬이 된다   
- 다음에 할 일   
    검색창과 고객정보창 배치할 방법 찾기(필요하다면 고객정보창 UI수정)   
    메뉴 버튼 간소화 하기   
    grid 칸 크기 조정하기   

2021.01.11   
검색창 칸 간격을 일단 ```&nbsp```로 넓히긴 했지만 버튼들을 우측정렬 할 방법을 잘 모르겠다   
spacer 태그를 이용하려고 했지만 validator 내부에서 작동하지 않는 듯 하고 이용 방법도 잘 모르겠다   
검색창에서 칸 배치를 자유롭게 할 수 있게 되면 form에서 validator로 바꿔 적용시키려고 했으나 아직 방법을 찾지 못해 진행이 되지 않은 상태   
고객정보창은 form에 group기능을 이용하여 칸을 배치할 수 있지만 상단에 그룹별 구분줄이 생겨서 적용하기 적합하지 않다   
그리고 form에서는 텍스트박스의 입력을 비활성화 할 방법을 모르겠다 validator에서는 그 방법을 알기 때문에 이 이유떄문에라도 validator로 바꿔야 할 것 같다   
html코드 업데이트는 없음   
- 다음에 할 일   
    검색창과 고객정보창 칸 배치할 방법 찾기   
    메뉴 버튼 간소화   

2021.01.12   
검색창을 splitter를 이용하여 한줄로 만들었다   
창의 분류는 편하지만 테드리 선이 생겨서 이를 그대로 써도 될지 아니면 다른 방법을 찾아야 할지 고민해봐야 한다   
고객정보창은 테두리 선이 마이너스 요소가 아니기 때문에 splitter로 변경하여 만들면 좋을 것 같다   
고객정보창 splitter로 나눔   
splitter를 사용하면 배치가 자유롭지만 칸의 크기 조정에 대해서 알아봐야겠다   
칸 내부에서의 글자 배치 방법 또한 알아볼 필요가 있다   
- 다음에 할 일   
    메뉴 버튼 간소화   
    고객정보창 글 배치 방법 찾기   

2021.01.13   
엑셀로 계획 잡고 실천해보는 노력 필요   
실행 해보고 끝나도 피드백   
중간중간에 벗어나는 걸 방지   
splitter로는 칸의 내용을 조정할 수 없는 것 같다-아무리 찾아도 관련 API 레퍼런스가 없음   
이전에 사용해 봤던 form으로 진행해야 할 것 같은데 자동으로 적용되는 앞쪽 공백을 수정할 방법이 없는 것 같기 떄문에 아예 문자열 부분과 텍스트박스 부분으로 나눠 배치해 봐야 할 것 같다   
- 다음에 할 일   
    메뉴 버튼 수정   
    고객정보창 form으로 다시 수정하고 배치 방법 찾아서 적용   

2021.01.14   
고객정보창 form으로 수정함   
form으로 수정 하고 문자열 부분과 텍스트박스 부분을 나눠 배치하려고 했으나 불가능 해서 UI 배치를 수정함   
- 다음에 할 일   
    코드 정리하기   

2021.01.15   
코드 주석 추가 및 정리   
- 다음에 할 일   
    기능들어가는 부분에 이벤트 넣기   

2021.01.18   
버튼 및 테이블 선택 시 이벤트 추가(일단은 하나의 함수로 만듬)   
검색란 좌측끝과 우측 끝으로 정렬하는 방법을 알아냈다   
> ```<div>```로 분리 하고 class를 만들어   
> <pre>
> .split {
> 	display: flex;
>   justify-content: space-between;
> }
> </pre>    
> 를 넣어주고 div에 할당하면 된다   

검색란과 상담내역 테이블 칸 조정   
- 다음에 할 일   
    버튼 동작 함수 어떻게 만들 수 있는지 조사   

2021.01.19   
중간 점검   
> 모듈화   
> tomcat9(zip) - 데이터 가져와서   
> css, js 로컬로   
> IE도 작동하도록   

톰캣 설치함   
- 다음에 할 일   
    css, js 로컬로 받아오기   
    내가 작성한 style, script 모듈화하기   

2021.01.20   
톰캣의 정확한 용도, 기능을 잘 모르겠다   
kendo를 사용하는 사람이 너무 없어서 css, js를 어떻게 로컬로 받아 오는지 찾기 힘들다   
일단 내 css와 js를 만들어 html경로에 저장했다   
> 어떻게 html에 적용 시키는지는 찾아봐야 함   
코드 초반의 base ref 떄문에 로컬 루트주소가 html파일이 있는 곳이 아니게 됨   
> base ref를 없애거나 다른 방법을 찾아봐야 함   
- 다음에 할 일   
    톰캣, 로컬 css/js 사용법 알아내기   

2021.01.21   
Maven, tomcat 다 제대로 설치함   
html을 war파일로 바꾸는 방법을 모르겠음   
포트번호 때문? 파일 경로 때문? 정상 동작하지 않는다   
- 다음에 할 일   
    톰캣, 로컬 css/js 사용법 알아내기   

2021.01.22   
이미지 삽입이 제대로 안되던 이유가 base ref 때문이어서 그 부분은 삭제하고 임시 콘솔 부분 또한 삭제함   
style코드들은 mystyle.css로 따로 저장해서 레퍼런스함   
script부분을 모듈화 하는 방법은 아직 모르겠음   
css, js 레퍼런스 중에 중복되거나 사용하지 않는 레퍼런스들 정리함   
- 다음에 할 일   
    모르는 것들 물어보기(톰캣 서버에 html 만든 것 올리기, 고객정보는 어떻게 넣는지, script부분은 어떻게 모듈화 시키는지)   

2021.01.25   
vscode를 이용한 apache tomcat과 maven을 사용해보려고 했지만 계속 실패   
질문한 결과 tomcat의 작업 디렉토리가 여러개였고 그 중에 한군데에 jsp을 넣어서 작동하는 것을 확인   
war파일 또한 시도해 보다가 퇴근   
- 다음에 할 일   
    war파일도 작동하도록 하기   

2021.01.26   
출근하자마자 war파일 작업은 vscode가 아닌 eclipse에서 하라고 하심   
이클립스로 시도해 보는 도중 서버 추가가 되지 않아서 재질문 및 검색   
웹 개발자용 eclipse를 다운받았어도 추가적으로 패키지들을 설치했어야 했다   
패키지들을 설치한 후 정상 작동 확인   
앞으로 개발 파일들과 리소스 들은 경로에 한글, 공백 포함되지 않고 따로 한군데 모아두는 것이 좋다고 함   
- 다음에 할 일   
    내가 만들었던 html파일을 tomcat에서 구동할 수 있도록 방법을 찾기   

2021.01.27   
html을 jsp파일로 바꾸는 방법을 검색해보았으나 잘 작동하지 않는다   
코드 맨 앞에 지정된 태그를 추가하라고 되어있었지만 효과가 없었다   
-다음에 할 일   
    jsp파일로 변활 할 수 있는 다른 방법을 찾아보기   

2021.01.28   
html을 단순히 .jsp파일로 변경하면 작동함   
그동안 작동하지 않은 이유는 파일명 때문이었음   
js, style, image 폴더도 이전처럼 같은 디랙토리에 넣어두면 잘 작동 한다   
한글 깨지는 문제가 생겼는데 코드 최상단에 ```<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>```을 추가하면 정상 작동한다   
-다음에 할 일   
    외부로 부터 데이터 받아와서 테이블에 출력하기   
    script 부분 js파일로 모듈화 할 방법 찾아보기   

2021.01.29   
리액트 네이티브에 대해 조사   

2021.02.01   
eclipse에서 export하여 webapp파일을 war파일로 만들어줌   
톰캣 자체 실행(설치 경로에서 bin파일의 startup.bat실행)으로 웹페이지를 작동할 수 있도록 함   
maven으로 war파일을 tomcat에서 실행 할 수 있도록 함   
IE도 호완이 되도록 하고 싶지만 ```<meta http-equiv="X-UA-Compatible" content="IE=edge">```로도 호환설정이 안된다   
