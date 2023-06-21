// #include <cstdio>

#include <fstream>
#include <iostream>
#include <sstream> // for split
#include <string>
#include <vector>

using namespace std;

int main() {

  int globalNum = 0;

  string line;
  vector<string> v;

  //   ifstream resultFile("forRecordLLFile.ll");
  //   if (!resultFile.is_open()) {
  //     cout << "can't open ! \n";
  //   }
  string outputFileName("output.ll");
  fstream output_fstream;

  string targetFileName("client2.ll");
  fstream file(targetFileName);

  output_fstream.open(outputFileName, std::ios_base::out);

  if (file.is_open()) {
    while (getline(file, line)) {
      // cout << line << endl;

      stringstream ss(line);

      vector<string> tempv;

      // 단어 단위로 벡터에 저장
      string word;
      while (getline(ss, word, ' ')) {
        tempv.push_back(word);
      }
      tempv.push_back("enter");

      for (int i = 0; i < tempv.size(); i++) {
        if (tempv[i] == "enter")
          output_fstream << "\n";
        else
          output_fstream << tempv[i] << " ";
      }

      globalNum++;

      // 줄에 store가 있다면
      for (int i = 0; i < tempv.size(); i++) {
        if (tempv[i] == "store" && tempv[i + 1] == "i32" &&
            tempv[i + 3] == "i32*" && tempv[6] != "getelementptr") {

          // tempv[6]의 값을 사용하면 됨
          //   cout << i << " " << tempv[4] << " \n";
          // for(int j = 0; j < tempv.size(); j ++)
          // cout << tempv[j] << " ";
          cout << tempv[6] << " ";
          cout << "\n";

          //%var_1_value = load i32, i32* %randomNum, align 4
          // output_fstream << "%var_" << globalNum << "_value = load i32, i32*
          // " << tempv[6] << " align 4\n";

          //%var_1_name_ptr = alloca [10 x i8], align 1
          // output_fstream << "%var_" << globalNum << "name_ptr = load i32,
          // i32* " << tempv[6] << " align 4\n";

          //%temp_var_1_name = bitcast [10 x i8]* %var_1_name_ptr to i8*
          // output_fstream << "%var_" << globalNum << "_value = load i32, i32*
          // " << tempv[6] << " align 4\n";

          //   i32* "
          /*


call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %temp_var_1_name, i8* align 1
getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.var_1_name, i32 0,
i32 0), i64 10, i1 false) %var_1_name = getelementptr inbounds [10 x i8], [10 x
i8]* %var_1_name_ptr, i64 0, i64 0 %var_1_type = call i8*
@_ZNKSt9type_info4nameB6v15006Ev(%"class.std::type_info"* bitcast (i8** @_ZTIi
to %"class.std::type_info"*)) #888

%temp_var_1_1 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE*
%loadfile, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.op_declare, i64
0, i64 0)) %temp_var_1_2 = call i32 (%struct.__sFILE*, i8*, ...)
@fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x
i8]* @.str.print_str, i64 0, i64 0), i8* %var_1_name) %temp_var_1_3 = call i32
(%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8*
getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_str, i64 0, i64 0), i8*
%var_1_type) %temp_var_1_4 = call i32 (%struct.__sFILE*, i8*, ...)
@fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x
i8]* @.str.print_int, i32 0, i32 0), i32 %var_1_value) %temp_var_1_5 = call i32
(%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8*
getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_ptr, i32 0, i32 0), i32*
%randomNum) %temp_var_1_6 = call i32 (%struct.__sFILE*, i8*, ...)
@fprintf(%struct.__sFILE* %loadfile, i8* getelementptr inbounds ([4 x i8], [4 x
i8]* @.str.print_int, i64 0, i64 0), i32 118) %temp_var_1_7 = call i32
(%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %loadfile, i8*
getelementptr inbounds ([4 x i8], [4 x i8]* @.str.print_int, i64 0, i64 0), i32
29)

          */
        }
      }

      // for(int i = 0; i < line.size(); i ++)
      // {
      //     cout << line[i] << "\n";
      // }
    }

    file.close(); // 열었떤 파일을 닫는다.
  }

  if (!output_fstream.is_open()) {
    cerr << "Failed to open " << outputFileName << '\n';
  } else {
    // output_fstream << "Maecenas accumsan purus id \norci gravida
    // pellentesque." << endl; output_fstream << v[3] << "333 " << v[5]; cerr <<
    // "Done Writing!" << endl;

    // for (int i = 0; i < v.size(); i++) {
    //   if (v[i] == "enter")
    //     output_fstream << "\n";
    //   else
    //     output_fstream << v[i] << " ";
    // }
  }

  // output_fstream << "%bar";

  return 0;
}
/*
파일 하나는 대상 파일을 읽음

    파일을 읽으며 특정 단어가 나올 때

다른 파일은 대상 파일로부터 읽어온 정보에 추가 정보를 삽입하여
        새로운 파일을 생성
    */