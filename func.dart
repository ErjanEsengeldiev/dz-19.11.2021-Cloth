import 'dart:io';

import 'main.dart';


dataBase(){
  List<Cloth> listOfCloth =[Cloth(),];
  List<Manufact> listOfMan =[Manufact(),];
  List<Sostav> listOfSostav =[Sostav(),];
   
  inputData(){
    print('choose kindo of Data\n1:Cloth\n2:Manuf\n3:Sostav\ninput');
    String menu=stdin.readLineSync()!;
    switch(menu){
      case '1':
      Cloth newData=Cloth();
      newData.getData();
      listOfCloth.add(newData);
      break;
      case '2':
      Manufact newData=Manufact();
      newData.getData();
      listOfMan.add(newData);
      break;
      case '3':
      Sostav newData=Sostav();
      newData.getData();
      listOfSostav.add(newData);
    }
  }
  outputInfo(){
    print('Choose kind of Data:\n1:Cloth\n2:Manuf\n3:Sostav');
    String choose=stdin.readLineSync()!;
    switch(choose){
      case '1':
      for(int i=1; i<listOfCloth.length;i++){
        print('$i: ${listOfCloth[i].outputInfo()}');
      } 
      break;
      case '2':
      for(int i=1; i<listOfMan.length;i++){
        print('$i: ${listOfMan[i].outputInfo()}');
      }
      break;
      case '3':
      for(int i=1; i<listOfSostav.length;i++){
        print('$i: ${listOfSostav[i].outputInfo()}');
      }
      break;
    }
  }
  menu1(){
   print('1-input Data\n2-info');
   String menu=stdin.readLineSync()!;
   switch(menu){
     case '1':
    inputData();
     menu1();
     break;
     case '2':
     outputInfo();
     menu1();
     break;
   }
  }
  menu1();
}