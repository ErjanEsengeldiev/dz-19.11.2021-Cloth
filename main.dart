import 'dart:io';
import 'func.dart';
void main() {
  Manufact china=Manufact();
  china.getData();
  china.getInfo();


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

  getInfo(){
    print('name:$name      price:$price');
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
   getInfo(){
    print('manufact: $manufact');
  }
}

class Sostav extends Cloth{
  String? property;
  @override
  getData(){
    print('input property:');
    property=stdin.readLineSync();
   }
   @override
   getInfo(){
    print('property: $property');
  }
}