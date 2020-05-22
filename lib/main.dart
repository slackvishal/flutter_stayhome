import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stayhome/SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: SplashScreen(),
        );
      });
    });
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  List<Color> _colors = [Color(0xff6034a7), Color(0xff6b2d93)];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
//          color: Color(0xff6034a7)
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: _colors,
              stops: [
                0.4,
                0.7,
              ],
            )
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://image.flaticon.com/icons/svg/2659/2659980.svg"),
                      ),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Text("Home", style: TextStyle(
                        color: Colors.white70,
                        fontSize: 1 * SizeConfig.textMultiplier
                      ),),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Text("Information", style: TextStyle(
                          color: Colors.white70,
                          fontSize: 1 * SizeConfig.textMultiplier
                      ),),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Text("Download App", style: TextStyle(
                          color: Colors.white70,
                          fontSize: 1 * SizeConfig.textMultiplier
                      ),),
                      SizedBox(width: 5 * SizeConfig.widthMultiplier,),
                      Text("About Us", style: TextStyle(
                          color: Colors.white70,
                          fontSize: 1 * SizeConfig.textMultiplier
                      ),),
                      Spacer(),
                      Icon(Icons.search, size: 3 * SizeConfig.imageSizeMultiplier, color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.05,
                        vertical: MediaQuery.of(context).size.height * 0.05,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Save the world by \nstaying at home", style: TextStyle(
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w900
                          ),),
                          SizedBox(height: 20.0,),
                          Text("This site is a source of information on pro-data \nvoluntary citizens", style: TextStyle(
                              color: Colors.white54,
                              fontSize: 16.0,
                          ),),
                          SizedBox(height: 50.0,),
                          Text("Current number of cases", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),),
                          SizedBox(height: 20.0,),
                          Text("Last update : 10 May 2020 | 19:10:56 + 07:00", style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14.0,
                          ),),
                          SizedBox(height: 50.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                  color: Color(0xff6f48b0),
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 20.0
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.lightBlueAccent.withOpacity(0.5),
                                        child: Icon(Icons.done, color: Colors.white, size: 20.0,),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text("1414", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),),
                                      SizedBox(height: 5.0,),
                                      Text("Confirmed", style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14.0,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                    color: Color(0xff6f48b0),
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 20.0
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.greenAccent.withOpacity(0.5),
                                        child: Icon(Icons.add, color: Colors.white, size: 20.0,),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text("1217", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),),
                                      SizedBox(height: 5.0,),
                                      Text("Hospitalized", style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14.0,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                    color: Color(0xff6f48b0),
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 20.0
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.yellowAccent.withOpacity(0.5),
                                        child: Icon(Icons.favorite_border, color: Colors.white, size: 20.0,),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text("75", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),),
                                      SizedBox(height: 5.0,),
                                      Text("Recovered", style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14.0,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 120.0,
                                decoration: BoxDecoration(
                                    color: Color(0xff6f48b0),
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 20.0
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.purpleAccent.withOpacity(0.5),
                                        child: Icon(Icons.remove, color: Colors.white, size: 20.0,),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Text("122", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                      ),),
                                      SizedBox(height: 5.0,),
                                      Text("Died", style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14.0,
                                      ),),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 50.0,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(
                                horizontal: 40.0,
                                vertical: 20.0
                              ),
                              child: Text("More Info", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0
                              ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 10.0
                        ),
                        child: Image.asset("image.png"),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}