#include <arpa/inet.h>
#include <errno.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <time.h>
#include <unistd.h>

#include <iostream>
#include <random>
#include <string>
#include <thread>

/*
    서버에서









*/
using namespace std;

int my_sock;
struct sockaddr_in serv_addr;
char message[100];

int thread_Cnt = 0;
// timeWait();

int str_len;

void testfunc() {
  printf("It is work\n");
  return;
}

void error(char *msg) {
  // fprintf(stderr, "%s: %s\n", msg, strerror(errno));
  exit(1);
}

void *timeCount(void *a) {
  int cnt2 = 0;
  while (1) {
    sleep(1);
    cnt2++;

    if (cnt2 % 2 == 0)
      thread_Cnt = 1;
    else
      thread_Cnt = 0;
    // cout << "cnt : " << cnt2 << "\n";
  }

  close(my_sock); // 4번
  printf("close client\n");

  return NULL;
}

void *exeTestFunc(void *a) {
  while (1) {
    char tempstr[50];
    const char *boot = "boot";

    scanf("%s", tempstr);
    sleep(1);

    if (!strcmp(tempstr, boot))
    // if(message[0] == '1')
    {
      printf("입력된 값: %s\n", tempstr);
      printf("성공한 예제\n");
      testfunc();
    } else {
      printf("실패한 예제 aaa \n");
    }
  }

  return NULL;
}

int main(int argc, char *argv[]) {
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_int_distribution<int> dis(-1, 2);

  pthread_t t0;
  pthread_t t1;

  char tempstr[200] = "temp str value";

  string stringForTest = "Hello, World!\n";

  if (argc != 3) {
    printf("%s <IP> <PORT>\n", argv[0]);
    exit(1);
  }
  my_sock = socket(PF_INET, SOCK_STREAM, 0); // 1번
  if (my_sock == -1)
    printf("socket error \n");
  memset(&serv_addr, 0, sizeof(serv_addr));
  serv_addr.sin_family = AF_INET;
  serv_addr.sin_addr.s_addr = inet_addr(argv[1]);
  serv_addr.sin_port = htons(atoi(argv[2]));

  // pthread_create(&t0, NULL, timeCount, NULL);

  int cnt = 0;

  while (1) {
    // connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
    if (connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1) {
      str_len = read(my_sock, message, sizeof(message)); // 3번
      int randomNum = dis(gen);
      int userInput;

      cout << "Input number: ";
      cin >> userInput;

      if (userInput == -1)
        break;

      if (str_len == -1)
        printf("read error\n");

      // cout << cnt++ << "  서버에서 : " << message << "\n";
      // cout << "userInput: " << userInput << "\n";
      // cout << "thread_Cnt: " << thread_Cnt << "\n";
      // cout << "random : " << randomNum << "\n";

      int tempnum;
      if (message[0] == '1')
        tempnum = 1;
      else
        tempnum = 0;

      int divNum = randomNum * tempnum;

      int result = (userInput + randomNum) / divNum;

      cout << "result : " << result << "\n";
      cout << "normaly worked!!\n\n";

      if(stringForTest == "hello")
      {
        result = 55555;
      }
      else
      {
        stringForTest = "!@#$%^&*(_+";
        stringForTest = "ddddddddd\n"
                        "동해물과 백두산이 마르고 닳도록\n"
                        "하느님이 보우하사 우리 나라만세\n";
      }

      cout << stringForTest << "\n";
      if(stringForTest[15] == '#')
      {

      }
    }
  }
  close(my_sock); // 4번
  printf("close client\n");

  return 0;
}