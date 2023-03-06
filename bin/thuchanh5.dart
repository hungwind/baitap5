import 'dart:io';

void cau1() {
  File file = File('hello.txt');
  file.writeAsStringSync('tep hello');
  print('le manh hung');
}

void cau2() {
  File file = File('hello.txt');
  file.writeAsStringSync('\nThis is a new content.', mode: FileMode.append);
  print('nguyen duy khang');
}

void cau3() {
  File file = File('hello.txt');
  print(' thu muc tep: ${file.absolute.path}');
}

void cau4() {
  File file1 = File('hello.txt');
  File file2 = File('hellop_copy.txt');
  file1.readAsString().then((String conten) {
    file2.writeAsString(conten);
  });
}

void cau5() {
  for (int i = 0; i <= 100; i++) {
    File file = File('file_$i.txt');
    print(file);
  }
}

void cau6() {
  // open file
  File file = File('hellop_copy.txt');
  // check if file exists
  if (file.existsSync()) {
    // delete file
    file.deleteSync();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}

void cau7() {
  File file = File('thongtincanhan.txt');
  file.writeAsStringSync('ten,tuoi,diachi\n');
  for (int i = 0; i < 2; i++) {
    stdout.write("ten sinh vien thu ${i + 1}: ");
    String? ten = stdin.readLineSync();
    stdout.write("tuoi sinh vien thu ${i + 1}: ");
    String? tuoi = stdin.readLineSync();
    stdout.write("diachi sinh vien thu ${i + 1}: ");
    String? diachi = stdin.readLineSync();
    file.writeAsStringSync('$ten,$tuoi,$diachi\n', mode: FileMode.append);
  }
  print('thanh cong');
}

void main() {
  cau1();
  cau2();
  cau3();
  cau4();
  cau5();
  cau6();
  cau7();
}
