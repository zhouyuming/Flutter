import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double _height1 = 0;
  double _height2 = 0;
  double _height3 = 0;

  double each_padding = 50;

  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              controller: _scrollController,
              child: SizedBox(
                height: _height1 == 0
                  ? 0
                  : (_height1 + _height2 + _height3 - each_padding * 2),
                child: Stack(
                  children: _buildStack(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildStack() {
    List<Widget> _list = [];

    return _list;  
  }
}