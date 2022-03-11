import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('text', style: TextStyle(fontSize: 22),).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    height: 45,
                    child: Text("French", style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      context.locale = Locale('fr', 'FR');
                    },
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    height: 45,
                    child: Text("Japaneese", style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      context.locale = Locale('ja', 'JA');
                    },
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    height: 45,
                    child: Text("Korean", style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      context.locale = Locale('ko', 'KO');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
