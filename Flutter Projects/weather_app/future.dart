import 'dart:io';
void main(){
  tasks();
}
Future<void> tasks() async{
  task1();
  String y=await task2();
  task3(y);
}
void task1(){
  print("Task 1 done!!");
}
Future<String> task2() async{
  String r;
  Duration d=Duration(seconds: 5);
  await Future.delayed(d,(){
    r="Task 2 data";
    print("Task 2 done!!");
  });
  //sleep(d);
  return r;
}
void task3(String t){
  print("Task 3 done!! and data from task 2 is - $t");
}