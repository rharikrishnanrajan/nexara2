import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexara/pages/home_page.dart';
void main()async  {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(Duration(seconds: 3),);
  FlutterNativeSplash.remove();
  runApp(const MaterialApp(
    home: MyApp1(),
  ));
}
class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff000117),
          body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(20.0)),
                  const Image(image: AssetImage('images/welcomelogo.png')),
                  const Padding(padding: EdgeInsets.only(left: 40.0,right: 40.0,top: 120.0)),
                  Text('Artificial intelligence is a tool, not a threat',textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(color:Colors.white,fontSize:24)
                      ),
                  const Padding(padding: EdgeInsets.all(95.0)),
                  SizedBox(width: 360,height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff00023d),
                              elevation: 10.0,
                              side: const BorderSide(color: Colors.white,width: 3.0),
                              shadowColor:  Colors.blueGrey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              )
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage()),
                            );
                          },
                          child: Text('Welcome To Nexara',
                            style: GoogleFonts.outfit(
                                fontSize: 24,color:Colors.white)
                          )
                      )
                  ),
                ],),
            ),
          ),
    );
  }
}
