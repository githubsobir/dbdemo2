import 'package:dbdemo2/models/users.dart';
import 'package:hive/hive.dart';

class DBServices{

  var box = Hive.box("pdp_online");

  storeUser(Users user) async{
    box.put("users",user.toJson());
  }

  Users loadUser() {
    var user = new Users.fromJson(box.get("users"));
    return user;
  }


}