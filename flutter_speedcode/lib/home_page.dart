import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ui_1/home_page.dart' as ui_1;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter SpeedCode"),
      ),
      body: Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(
                    text: "https://github.com/jiang111/flutter_code/raw/master/art/app-release.apk"
                  ));
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("复制成功,打开浏览器粘贴链接即可下载"),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 30,
                  ),
                  child: Center(
                    child: Text(
                      "点我复制app的下载地址",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ui_1.HomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: Text(
                    "Flutter精美UI系列视频教程-1",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),  
            ],
          ),
        ),  
      ),  
    );
  }
}