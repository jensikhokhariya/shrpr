import 'package:shared_preferences/shared_preferences.dart';

class Shared{
  List l1=[];

  void createSharedPrefrence({String? email, String? password})async{
    var shr = await SharedPreferences.getInstance();
    shr.setString("e1", email!);
    shr.setString("p1", password!);
  }

  Future<List> readSHR()async{
    var shr = await SharedPreferences.getInstance();
    var email = shr.getString("e1");
    var password=shr.getString("p1");

    l1.add(email);
    l1.add(password);
    return l1;
  }

}