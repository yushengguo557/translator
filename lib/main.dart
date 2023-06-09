import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:translator/service/config.dart';
import 'package:translator/ui/profile.dart';
import 'package:translator/ui/pages/home.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config().loadFromAsset();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: backgroundColor, // 设置状态栏颜色为蓝色
        statusBarIconBrightness: Brightness.dark, // 将状态栏文本颜色设置为黑色
      ),
    );
    return MaterialApp(
      builder: EasyLoading.init(),
      // builder: FToastBuilder(),
      title: 'Translator',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const Scaffold(
        backgroundColor: backgroundColor,
        body: HomePage(),
      ),
    );
  }
}
