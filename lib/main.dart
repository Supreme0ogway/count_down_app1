import 'package:flutter/material.dart';
//import 'package:test/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
      @override
    Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(0, 38, 206, 183)),
      home: welcome_create_new_page(),
    );
  }
}

class welcome_create_new_page extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
          body: Container(

            //background
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/luke-chesser-B_oL3jEt5L4-unsplash.jpg"),
              )
            ),


            //column for button
            child: Column(//builds bottom up
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  //text in the box above the first button
                  Container(
                    width: 370,
                    height: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(189, 78, 78, 78),
                    ),
                    child: Center(
                      child: Text(
                        "Create new",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  
                  //button for first page
                  const SizedBox(
                    height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Stack(
                        children: <Widget>[
                      //     Positioned.fill(
                      //       child: Container(

          
                      //   decoration: const BoxDecoration(
                      //    gradient: LinearGradient(
                      //     colors: <Color>[
                      //        Color.fromRGBO(255, 255, 255, 0.5)
                      //        Color.fromARGB(71, 28, 29, 29),
                      //       Color.fromARGB(47, 82, 83, 83),
                      //       Color.fromARGB(29, 28, 29, 29),
                      //        ],
                      //       ),
                      //      ),
                      //     ),
                      // ),
                      //te
                      //clock symbol
                      //box size
                      SizedBox(
                        height: 150,
                        child: ElevatedButton(
                          onPressed: () {},
  
                          child: const Center(
                            child: Icon(Icons.access_alarm,
                              color: Color.fromARGB(255, 0, 0, 0), 
                              size: 50.0)
                          ),
                          style: ButtonStyle(
                            //foregroundColor: getColor(Color.fromARGB(255, 237, 83, 83), Color.fromARGB(255, 176, 65, 65)),
                            backgroundColor: getColor(Color.fromARGB(151, 78, 78, 78), Color.fromARGB(151, 78, 78, 78)),
                            //overlayColor: getColor(Color.fromARGB(255, 160, 99, 99), Colors.teal),//https://www.youtube.com/watch?v=nDmGGi_RlDM
                          ),

                        )
                      )

                      ],
                    ),
                  ),


                ],
              ),
              
            ),
        );
    }

    MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {

      final getColor = (Set<MaterialState> states) {
        if(states.contains(MaterialState.pressed)) {
          return colorPressed;
        } else {
          return color;
        }
      };

      return MaterialStateProperty.resolveWith(getColor);
    }
}
