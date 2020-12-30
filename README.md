2020.12.22 ~ 2020.02.26   
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
메뉴와 같은 기타 기능 : 2주 이상   

# 질문사항   
상담내역의 문의사항은 Softphone의 기능으로 자동으로 입력되는 것이 가능한가?   
