import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  static Future<bool?> showToast({required String msg}) async {
    Fluttertoast.showToast(msg: msg);
  }
}
