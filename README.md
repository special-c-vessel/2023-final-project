# Culry: C++ 소스코드 수준 기록-재현 도구 (23.06.27 업데이트) <br>
지도교수 : 이성호 교수님 <br>
팀&nbsp;&nbsp;&nbsp;&nbsp;   명 : 동윤없는 동윤팀  <br>
팀&nbsp;&nbsp;&nbsp;&nbsp;   장 : 충남대학교 컴퓨터공학과  17 한정경 <br> 
팀&nbsp;&nbsp;&nbsp;&nbsp;   원 : 충남대학교 컴퓨터융합학부 20 김용일 <br> <br>

**개요 및 추진 배경 : <br>**
&nbsp; C++ 프로그램은 개발자가 메모리를 직접 관리하여야 하며, 이러한 이유로 다양한 형태의 오류가 발생할 수 있다. 오류가 발생하면 프로그램은 segmentation faults를 내고 종료되거나, 예상하지 못한 이상한 행동을 수행하게 된다. 오류 발생 시 이러한 오류를 탐지하기 위하여 디버거를 활용하여 디버깅을 수행할 수 있으나, 컴파일되어 바이너리로 변환 후 실행되는 프로그램의 특성 상 오류가 난 지점을 판단하기 어려울 뿐만 아니라, 네트워크 오퍼레이션, 외부 환경 변화, 동시성 프로그램, 비결정적 동작 등의 개발자가 동제하기 어렵거나 통제할 수 없는 요소들로 인해 오류가 재현되지 않아 원인 파악에 많은 개발자들이 어려움을 겪고 있다.
위의 어려움을 해결하기 위해 정적 및 동적 분석 기법을 활용하여 프로그램의 실행 흐름과 상태를 모니터링하는 도구와 기법을 개발한다.

<br><br>
**목표 :** <br>
- 디버깅에 소요되는 시간 및 자원을 절약한다. <br>
- 코드의 분석 및 이해를 더 쉽게 한다. <br>
&nbsp; &nbsp; => 궁극적으로 전체적인 개발 능력을 향상시킬 수 있도록 한다. <br><br>

**동작 과정:** <br>
&nbsp; 동작 과정은 크게 기록과 재현, 두 단계로 나눌 수 있다. <br>
- 기록: 타겟 c++ 코드에 실행 과정을 기록할 수 있는 코드를 삽입한다. 변조된 코드의 동작은 타겟 c++ 프로그램과 동일하며, 변조된 코드 실행 이후 실행 정보를 기록한 저장파일을 반환한다.
- 재현: 저장된 실행 정보를 바탕으로 사용자에게 정보를 제공한다. 기록 기반이므로 현재 실행상태에 영향을 받지 않는다. 따라서 기존 디버깅 도구보다 넓은 범위의 정보 제공이 가능하다.
<img width="300" alt="image" src="https://github.com/special-c-vessel/2023-final-project/assets/33623075/7b83aa90-7994-4ef6-b219-a95c01a4b06b">

<br><br>
더 쉬운 이해를 위한 문제 예시: <br>
- 외부 서버와 통신을 하는 프로그램이 있을 때 서버에서 잘못된 값을 전송하므로써 오류가 발생한 경우, 프로그램의 문제인지 서버의 문제인지 개발자는 그 원인을 파악하기 어렵다. 이때 Culry를 사용하여 통신 정보와 그로 인한 결과값을 기록할 수 있으므로 외부 서버의 재송신 없이도 프로그램을 분석하여 원인을 보다 쉽게 파악할 수 있다.
- 어제 5가지의 음식을 먹고 알레르기 반응이 나타난 경우, 알레르기 반응 확인을 위해 모든 음식을 다시 먹어봐야한다. 그러나 먹은 음식에 대한 성분표를 갖고 있다면 음식을 다시 먹을 필요가 없다.

<br>
2023 5월 30일 기준 설명 및 진행상황 영상 <br>
https://cnuswaiproject.wixsite.com/2023-1/post/culry-c-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8%EC%9D%98-%EC%86%8C%EC%8A%A4%EC%BD%94%EB%93%9C-%EC%88%98%EC%A4%80-%EA%B8%B0%EB%A1%9D-%EC%9E%AC%ED%98%84-%EB%8F%84%EA%B5%AC

<br><br>
**향후 발전 계획:** <br>
- 더 많은 정보를 보여줄 수 있는, 쉬운 접근을 위한 재현의 UI/UX 및 명령어 개발 예정
- 기록 정보의 데이터베이스화를 통해 재현 외에도 다방면에 활용할 수 있도록 할 예정
- 컴파운드 데이터 타입 자동화 지원 예정
- 동시성 프로그램 지원

<br><br>
요구사항: <br>
- Intel 또는 ARM CPU를 사용하는 Mac OS
- llvm release 12.x 버전

<br><br>
**사용방법:** <br>

-Record <br>

- llvm 12.x 버전 다운로드 <br>
         ``` git clone --branch release/12.x https://github.com/llvm/llvm-project ```
         
         클론 받은 폴더에서 아래 명령어를 입력하여 llvm build (시간 오래걸림)  <br>
          cmake -S llvm -B build -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release 
         이후 
          cd build make -j8  (cpu 코어 수에 맞게 입력, 모르면 그냥 make 만)
<br>
<br>

- record에 필요한 파일 다운로드<br>
``` git clone https://github.com/special-c-vessel/2023-final-project.git ``` <br>

         아래 4가지 파일을 llvm-project/build/[새로운 폴더명] 에 복사
         curly_record2.cpp
         curly_record3.cpp
         record_above.txt
         test.cpp 
         
         test.cpp에 실행 가능한 프로그램 코드 작성 후 
         llvm-project/build/[새로운 폴더명] 경로에서 아래 명령어 입력
         clang -S -emit-llvm -fno-discard-value-names test.cpp -g
         -> test.ll 이 생성된 것을 확인
         
         curly_record2.cpp
         curly_record3.cpp 
         두 파일을 컴파일하여 실행파일 생성 및 실행
         -> record_result.ll 이 생성된 것을 확인
         
         ../bin/lli record_result.ll 명령어로 프로그램 실행 및 기록
         -> record.txt 가 생성된 것을 확인

<br>
-Replay <br>


<br><br>
제약사항 : <br>
개발 완료 이후 테스트를 통해 업데이트 예정

<br><br>
성과: <br>
2023 1학기 충남대학교 컴퓨터융햡학부 * 인공지능학과 SW/AI 프로젝트 페어 대상 수상
![CBFAEAA0-FA9A-42FB-81F0-7C8DFE4B1F11_1_105_c](https://github.com/special-c-vessel/2023-final-project/assets/33623075/9cbc576d-26d3-4690-8c96-5ae02f4b3e19)

<br><br>
팀명의 유래 : <br>
본래 시작은 셋이었으나 좋은 일로 팀을 이탈하게된 충남대학교 컴퓨터공학과 17 정동윤을 기리기 위해 
무한도전의 홍철없는 홍철팀에서 영감을 받아 팀명을 작명하게 됨

