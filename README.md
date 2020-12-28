2020.12.22 ~ 2020.02.26   
아우리네트 인턴 기간 기록
-
개발환경 세팅   
-JDK8: 자바 개발 키트   
-Eclipse(STS): IDE는 익숙한 것으로 사용 가능   
-vert.x: 네트워크 서버 프레임워크   
-SVN: 여러명의 소스 관리   

CentOS or Ubuntu   
-CentOS가 21년 12월 31일에 종료되기 때문에 다른 환경으로 옮겨야 하는 기점이다.   

가상머신 – AWS(Amazon)/Azure(MS)/GCP(Google)   
-AWS: 시장에서 가장 높은 점유율, 다양한 분석 도구 제공, 향상된 연결 편의성   
-Azure: 윈도우 플랫폼에 강함, 쉬운 UI와 플랫폼 서비스, 일부 브라우저에서 호환성 떨어짐   
-GCP: Data, AI영역에서 앞섬, 오픈소스 소프트웨어 중심으로 구축   
GCP는 전반적으로 아직 부족함.   
AWS는 다양한 플랫폼을 지원 할 수 있지만 Azure는 제한적이다.   
윈도우를 사용하지 않기 때문에 AWS가 적합하다고 생각.   
   
AWS를 활용한 CentOS환경 구축   
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



AWS리셋하고 DBS 분리하여 다시 설치해보기   
