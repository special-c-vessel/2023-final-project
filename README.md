# Culry: C/C++ 소스코드 수준 기록-재현 도구 (23.09.24 업데이트) <br>
지도교수 : 이성호 교수님 <br>
팀&nbsp;&nbsp;&nbsp;&nbsp;   명 : 동윤없는 동윤팀  <br> 
팀&nbsp;&nbsp;&nbsp;&nbsp;   원 : 충남대학교 컴퓨터공학과  17 한정경<br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;충남대학교 컴퓨터융합학부 20 김용일 <br> <br>

**개요 및 추진 배경 : <br>**
&nbsp; C/C++ 프로그램에서, 메모리를 직접 관리하거나 네트워크 통신, 동시성(concurrent) 같은 비결정론적(nondeterministic) 요인으로 인해 segmentation faults를 내고 종료되거나, 예상하지 못한 이상한 행동을 수행하게 된다. 이 경우 프로그램 분석을 위해 디버깅을 수행할 수 있으나, 컴파일되어 바이너리로 변환 후 실행되는 프로그램의 특성 상 오류를 식별하고 해결하는 데 많은 시간과 자원을 필요로 한다. 위의 어려움을 해결하기 위해 정적 및 동적 분석 기법을 활용하여 프로그램의 실행 흐름과 상태를 모니터링하는 도구와 기법을 개발한다.

<br><br>
**프로젝트 목표 :** 
- 당시 실행중이던 프로그램의 상태를 기반으로 프로그램을 분석하는 기록 기반 디버깅 도구의 개발. <br><br>

**기대효과 :**
- 오류 재현 등, 프로그램 분석에 걸리는 시간과 자원의 소모를 줄이고 개발자의 개발 역량을 높힌다. <br> <br>



- Culry의 전체 동작 과정 <br>
<img width="1849" alt="image" src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/82ab2569-78d7-4df3-9d53-9f2a878d4cd7">

**동작 과정:** <br>
&nbsp; 동작 과정은 크게 Instrument와 Replay, 두 단계로 나눌 수 있다. <br>
- Instrument 단계: 
  1. Original C/C++ 코드를 LLVM bitcode로 컴파일한다.
  2. Original LLVM bitcode의 메모리 접근 명령어(store, load)를 대상으로 기록을 위한 추가 LLVM instruction을 삽입한다.
  3. 변조된 프로그램을 실행하여 동작 과정이 기록된 결과물을 얻는다. <br><br>

- Replay 단계:
  1. 동작 과정이 기록된 결과물과 Original C/C++ 코드를 mapping 한다.
  2. UI/UX 및 명령어를 통해 실행 정보를 사용자에게 전달한다.<br><br>


<br><br>
**더 쉬운 이해를 위한 문제 예시: <br>**
- 외부 서버와 통신을 하는 프로그램이 있을 때 서버에서 잘못된 값을 전송하므로써 오류가 발생한 경우, 프로그램의 문제인지 서버의 문제인지 개발자는 그 원인을 파악하기 어렵다. 이때 Culry를 사용하여 통신 정보와 그로 인한 결과값을 기록할 수 있으므로 외부 서버의 재송신 없이도 프로그램을 분석하여 원인을 보다 쉽게 파악할 수 있다.
- 멀티 스레드를 사용하는 경우, 일반적으로 스레드의 동작 순서를 예축할 수 없지만 Culry를 통해 어떤 스레드에서 어떤 동작이 수행되었는지를 분석할 수 있다.
- 어제 5가지의 음식을 먹고 알레르기 반응이 나타난 경우, 알레르기 반응 확인을 위해 모든 음식을 다시 먹어봐야한다. 그러나 먹은 음식에 대한 성분표를 갖고 있다면 음식을 다시 먹을 필요가 없다.

<br><br>
**2023 5월 30일 기준 설명 및 진행상황 영상: <br>**

https://cnuswaiproject.wixsite.com/2023-1/post/culry-c-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8%EC%9D%98-%EC%86%8C%EC%8A%A4%EC%BD%94%EB%93%9C-%EC%88%98%EC%A4%80-%EA%B8%B0%EB%A1%9D-%EC%9E%AC%ED%98%84-%EB%8F%84%EA%B5%AC

<br><br>
**2023 9월 21일 기준 진행상황:**
<br><br>
<img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/74a2d4d0-9abc-438e-844d-3d5fed3af6fb" width="40%" height="%"/>
- Primitive, String, Array 에 대한 기록 및 재현 가능
- Object Type은 현재 vector에 대해서만 가능

- 원하는 변수명 또는 포인터 주소에 대해 검색 가능(아래는 변수 a에 대해 검색을 진행한 결과. operation 순서, 종류, 동작 위치를 표로 확인할 수 있음) <br><br>
<img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/3fb9473c-3e5e-41f2-a25f-bcd01eb23e51" width="40%" height="30%"/> <img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/6fe58ed8-e5de-49cf-a11b-6eaa76bb4f49" width="40%" height="%"/>

<br><br>
- string type에 대해, 잘못된 index에 값을 할당하는 경우 system message에 문자열 범위 밖 오류임을 표시 <br><br>
<img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/4d8559f5-e3a2-481d-abd5-2a86edd2e5bf" width="30%" height="30%"/> <img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/219d16a4-58ca-4224-b743-0d426982c8b3" width="40%" height="%"/>

<br><br>
- Segfault 등 프로그램이 중간에 종료되더라도, 그 전까지 진행된 작업을 기록하여 정상 종료가 아님을 확인할 수 있다
  <br>(25번 line에서 프로그램이 종료되었다는 것을 system message에서 확인할 수 있으며, <br>종료의 원인은 변수의 Type이 int pointer임에도 Value에 nullptr가 할당되어 있어 Segfault가 발생했음을 알 수 있다.)<br>
<img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/847e72d3-e50b-460d-96aa-2694c0f6d32b" width="20%" height="30%"/> <img src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/1f857b87-75d2-4a07-8e7f-37a00ea2afaa" width="70%" height="%"/>

<br><br>
- 멀티 스레드 환경에서, 전체 스레드의 동작 순서와 수행된 동작을 확인할 수 있다.

<br><br>
- 사용 가능한 명령어 <br>

  |Replay Command|Description|Example|
  |------|---|---|
  |w|(기록 파일 정보에 한해서) 위쪽 기록 정보로 이동|w|
  |ww|(기록 파일 정보에 상관 없이) 위쪽 줄번호로 이동|ww|
  |s|(기록 파일 정보에 한해서) 아래쪽 기록 정보로 이동|s|
  |ss|(기록 파일 정보에 상관 없이) 아래쪽 줄번호로 이동|ss|
  |findptr [address]|[address] 부분에 입력한 포인터 주소에 저장되어 있는 값을 출력|findptr 0x25faddb2|
  |findtype [type]|[type] 부분에 입력한 타입에 해당되는 변수 목록을 출력|findtype string|
  |findname [name]|[name] 부분에 입력한 이름에 해당되는 변수 목록을 출력|findname num1|
  |mvline [line]|[line] 부분에 입력한 줄 번호로 이동|mvline 149|
  |mvline last|가장 마지막 기록 파일 정보로 이동|mvline last|
  |mvarray [index]|[index] 부분에 입력한 인덱스로 array data table 페이지를 이동|mvarray 10|
  |prevright|previous data table 다음 페이지로 이동|prevright|
  |prevleft|previous data table 이전 페이지로 이동|prevleft|
  |prevmove [index]|[index] 부분에 입력한 인덱스로 previous data table 페이지를 이동|prevmove 15|
  |followright|following data table 다음 페이지로 이동|followright|
  |followleft|following data table 이전 페이지로 이동|followleft|
  |followmove [index]|[index] 부분에 입력한 인덱스로 follwing data table 페이지를 이동|followmove 15|

<br><br>
**향후 발전 계획:** <br>
- 효과적으로 정보를 확인할 수 있는 다양한 명령어 및 UI/UX 개발
- ~~동시성 프로그램 지원(multi thread 동작 시 각 thread별 ID와 Timestamp를 기록하여 작업 순서 기록)~~ 개발함
- llvm이 지원하는 다른 언어로의 확장(Rust, Swift, Objective-C)

<br><br>
**~~요구사항~~ 개발 환경:** <br>
- ARM CPU를 사용하는 Mac OS Monterey 12.7.0  (OS 버전 다를 시 동작하지 않을 수 있음)
- llvm release 12.0.0 버전
- Apple clang version 14.0.0 (clang-1400.0.29.202)


<br><br>
**사용방법:** <br>

-Record <br>

- llvm 12.x 버전 다운로드 <br>
         ``` git clone --branch release/12.x https://github.com/llvm/llvm-project ```
         
         클론 받은 폴더에서 아래 명령어를 입력하여 llvm build 를 수행해야합니다 (오래 걸리고 용량도 40GB정도 됩니다)

          cmake -S llvm -B build -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
          cd build
          make -j8  (j뒤의 값은 cpu 코어 수에 맞게 입력, 모르면 그냥 make만)
<br>

- record에 필요한 파일 다운로드<br>
``` git clone https://github.com/special-c-vessel/2023-final-project.git ``` 

        config.sh 에서
        - LLVM_PATH           (llvm 경로)
        - TARGET_CPP_PATH     (기록하고자 하는 cpp의 소스코드)
        - CULRY_RECORD_PATH   (바로 위에서 받은 2023-final-project 의 경로)
        총 3가지의 경로를 설정

        config.sh 의 경로를 모두 설정한 후 config.sh가 있는 위치에서
        ./config.sh  를 입력하여 쉘 코드 실행
        생성된 rest를 실행하여 기록 진행(./rtest)   (rtest의 동작 방식은 타겟 cpp의 동작과 동일)
                                              ex) 프로그램에 입력 인자가 2개였다면 ./rtest 인자1 인자2 로 동작, 없다면 그냥 실행)
        

<br>
-Replay <br><br>

- replay 모듈 다운로드 <br>
``` git clone https://github.com/special-c-vessel/Replay.git ```
<br>

- config.sh 수정 <br>

        config.sh 에서
        - RECORD_FILE_PATH    (기록 과정을 통해 생성된 기록 파일 경로)
        - TARGET_FILE_PATH    (타켓 원본 소스 파일 경로, 기록 모듈 config.sh 파일에서 지정한 cpp 소스 코드와 같은 파일)
        총 2가지의 경로를 설정
 
- ./config.sh 를 입력하여 쉘 코드 실행<br>

<br><br>
**제약사항 :** <br>
~~개발 완료 이후 테스트를 통해 업데이트 예정~~
- Complex Data Type 은 지원하지 않음

<br><br>
**성과:** <br>
- 2023 1학기 충남대학교 컴퓨터융햡학부 * 인공지능학과 SW/AI 프로젝트 페어 대상 수상<br>
<img width="300" alt="image" src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/2d701eec-9ff3-40b6-b7eb-9e0cbb618a8b">
<br><br>
- 2023 충남대학교 공과대학 엔지니어링 페어 우수상 수상<br>
  <img width="300" alt="image" src="https://github.com/special-c-vessel/2023-final-project/assets/33623075/305b4678-db31-4db4-b4ef-c59f091684dd">
<br><br>
- 2023 2학기 충남대학교 컴퓨터융햡학부 * 인공지능학과 SW/AI 축전 우수상 수상<br>
<img width="300" alt="image" src="https://github.com/wjdrud2532/2023-final-project/assets/33623075/13bae0f0-8f77-40bf-988f-006b1a7dc158">

<br><br>
**2023 정보과학회 프로그래밍 언어 분야, 일반 섹션 통과**  &nbsp; ~~학부생임에도 불구하고!!~~ <br><br>
[Culry-출판용 논문.pdf](https://github.com/wjdrud2532/2023-final-project/files/13549570/Culry-.pdf)

<br><br>
**받은 질문:** <br>
1. 왜 이름이 culry 인가요? (제일 질문 많았음)
   - CULRY(C++ soUrce-Level Record-and-replaY) <br><br>
2. 변조된 프로그램의 실행시간은 기존의 프로그램과 얼마나 차이나는가?
   - 정확한 측정은 해보지 않았으나 JavaScript 활용하여 culry와 비슷한 연구를 진행한 Jalangi 의 경우 최소 1.5배에서 최대 93배, 평균 26배의 실행시간이 걸린다고 합니다. (Jalangi 논문 링크: https://dl.acm.org/doi/abs/10.1145/2491411.2491447)
   <br> culry에서는 Segfault 등 프로그램이 갑자기 종료되는 상황 또한 기록하기 위해 각 동작(기록의 대상이 되는 operation)마다 filestream을 진행하므로 많은 실행시간이 걸릴 것으로 예상합니다. <br>
   <br>
3. replay 모듈 실행을 위한 최소 권장 사양은 어느정도인가?
   - 메모리 변화를 추적하기 위한 메모리가 필요하므로, 기존 프로그램에 사용된 메모리보다 최소 2배 이상의 메모리가 필요할 것으로 예상합니다.
  <br><br>
4. 메모리 보안
   - 서버나 시스템 안의 메모리를 참조할 때 보안상 취약점은 없는가?  <br>
   메모리 보호가 적용된 주소를 참조하여 기록하므로 culry 사용으로 인한 추가적인 보안 취약점은 없을 것으로 기대합니다.<br>

<br><br>
**누군가 해줬으면 했지만 아무도 하지 않은 질문:** <br>
1. 코드삽입 전과 후, 두 프로그램이 같다는 것을 어떻게 증명하는가?
  <br>-> 기록을 위한 코드를 삽입할 때, 값을 불러오는 종류의 코드만을 추가하므로 원본 코드의 동작 수행에 변형을 가하지 않을 것으로 기대한다.<br><br>
2. 기록이 완벽하다는 것을 어떻게 증명하는가?
   <br>-> 여러 타입과 출력 형식, 결정적인 프로그램에 대해 테스트를 진행하여 출력과 기록 정보가 같음을 확인, 멀티 스레드의 경우 메모리 접근 명령어의 전,후를 mutex lock, unlock 하여 값이 유지되도록 함. 이것은 일정한 형식이 있는 동작이므로 기록이 완벽할 것으로 기대한다.<br><br>
3. 추가로 삽입한 코드의 실행을 어떻게 보장하는가?
      <br>-> 기록을 수행하는 코드를 추가한다는 것은 기존 코드에 새로운 함수를 추가하고 사용한다고 생각하면 쉽다.
      <br> 기존 코드의 함수명, 변수명과 중복되지 않도록 llvm 작명 규칙에서 벗어난 복잡한 이름을 사용하고, 기록 기능을 하는 함수를 llvm으로 생성하여 사용하므로 llvm 문법에 변화가 없는 한 추가로 삽입한 코드가 정상적으로 동작할 것으로 기대한다.





<br><br>
팀명의 유래 : <br>
본래 시작은 셋이었으나 좋은 일로 팀을 이탈하게된 충남대학교 컴퓨터공학과 17 정동윤을 기리기 위해 
무한도전의 홍철없는 홍철팀에서 영감을 받아 팀명을 작명하게 됨 <br><br>
