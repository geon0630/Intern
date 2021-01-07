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
> 다음에 할 일   
> table에 넣은 검색창 toolbar로 바꾸기, 고객정보칸 만들기   

2021.01.05   
테이블로 만든 검색창 툴바로 변경하려 했지만 콤보박스와 마스크텍스트박스가 일반 텍스트박스로 바뀜   
메유판을 kendo 참고해서 반들라고 알려주셔서 naviagtion-drawer를 참고함   
notepad++을 사용하다가 VSCode가 편리하다고 하셔서 변경   
메뉴창을 만들긴 했지만 열고 닫는 버튼을 어떻게 배치해야 하는지 고민   
메뉴 버튼을 만들었지만 토글기능에 오류가 있고 확장했을때의 위치도 물안정하다   
고객 정보를 보여주는 표를 어떻게 만들어야 할지 막막하다-splitter?   
> 다음에 할 일   
> 고객정보칸 만들기, 상담내역칸 만들기   

2021.01.06   
어려운 고객 정보란은 건너뛰고 상단내역란과 메모 추가   
검색창 부분 form으로 다시 만듦 maskedtextbox가 제대로 작동하지 않는다)kendo내에서도 안됨)   
고객정보란을 원래 그린 UI대로 할 수가 없다 수정해야 할 듯   
고객정보란UI 수정함   
일단 table로 고객정보란 만듦   
> 다음에 할 일   
> tilelayout으로 적절히 배치하기   
> table 디자인 개선할 방법 찾기   

2021.01.07   
탬플릿으로 구분하여 지금까지 만든 것들 적절히 배치   
검색창이 원래 form으로 만들었는데 크기수정이 어려워 validator로 수정함   
form에서 버튼을 없애는 방법을 몰라서 validator를 사용했는데 buttonsTemplate: ```"<button>Submit</button>"```으로 버튼 수정할 수 있다   
