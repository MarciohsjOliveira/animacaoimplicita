import 'package:animacao_implicita/componente.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with Componente {
  bool _isLoading = false;

  _ontap() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Widget _column() {
    return GestureDetector(
      onTap: _ontap,
      child: AnimatedCrossFade(
        firstCurve: Curves.easeInOutSine,
        secondCurve: Curves.bounceInOut,
        duration: Duration(milliseconds: 1000),
        firstChild: Center(
          child: logoTwo(),
        ),
        secondChild: Center(
          child: logoOne(),
        ),
        crossFadeState:
            _isLoading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: appBar(),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _column(),
                ],
              ),
            ),
          ),
        ));
  }
}
