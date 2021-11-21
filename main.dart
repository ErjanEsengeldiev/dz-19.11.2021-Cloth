import 'dart:io';
import 'func.dart';
void main() {
//  dataBase();
 Cloth adidas=Cloth();
 adidas.getData();
 print(adidas.outputInfo());

 Manufact china=Manufact();
 china.getData();
 print(china.outputInfo());

 Sostav sostav=Sostav();
 sostav.getData();
 print(sostav.outputInfo());

}
class Cloth{
  String? name;
  int? price;

  getData(){
    print('input name:');
    name=stdin.readLineSync();
    print('input price:');
    price=int.parse(stdin.readLineSync()!);
  }

  String outputInfo(){
   return 'name:$name      price:$price\n'; 
  }
}


class Manufact extends Cloth{
  String? manufact;
  @override
   getData(){
    print('input manufact:');
    manufact=stdin.readLineSync();
   }
   @override
   String outputInfo(){
    return 'manufact:$manufact\n';
  }
}

class Sostav extends Cloth{
  String? property;
  int? metrInOne;
  @override
  getData(){
    print('input property:');
    property=stdin.readLineSync();
    print('input metrInOne:');
    metrInOne=int.parse(stdin.readLineSync()!);
   }
   
   
   @override
   String outputInfo(){
    return 'property: $property  metrInOne: $metrInOne\n';
  }
}