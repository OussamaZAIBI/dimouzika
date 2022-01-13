import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dimouzika/Views/loginPage/login.dart';
import 'package:dimouzika/Views/signup/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class home extends StatelessWidget {
  @override
  final List<String> imagesList = [
    '1.png','2.png','3.png'
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body:
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("logo4.png"),
                  fit: BoxFit.cover, )),
            child: Column(
              children: [

                const SizedBox(height: 150,),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.6,
                    autoPlayAnimationDuration: const Duration(milliseconds: 100),
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: imagesList
                      .map(
                        (item) => Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                      .toList(),
                ),
                const Center(
                  child:
                  Padding(
                    padding: EdgeInsets.only(right: 50.0,left: 50.0,top: 10.0,bottom: 10.0),
                    child: Text(
                        "Di-Mouzika Club est un conservatoire de musique, unique en son genre, pour tous les âges; ayant le plus grand nombre de spécialités et d'instruments de musique enseignées à Nabeul."),
                  ),
                ),
                TextButton(onPressed: () {},
                  child:
                Container(
                  child:Material(
                    color:const Color(0xff90DDE2),
                    borderRadius: BorderRadius.circular(20),
                    elevation: 10,
                    shadowColor: const Color(0xFF3F457B),
                    child: ButtonTheme(
                      minWidth: 50000,
                      height: 400,
                      child: TextButton(
                        onPressed: () async {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return SignIn();
                              }));
                        }, child:
                      const Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("SignIn",style: TextStyle(color: Colors.white),

                      ),
                    ),
                    ),
                    ),
                  ),
                  ),
                ),

                //TEXT BUTTON Signup
                TextButton(onPressed: () {},
                  child:
                  Container(
                    child:Material(
                      color:const Color(0xff90DDE2),
                      borderRadius: BorderRadius.circular(20),
                      elevation: 10,
                      shadowColor: const Color(0xFF3F457B),
                      child: ButtonTheme(
                        minWidth: 50000,
                        height: 400,
                        child: TextButton(
                          onPressed: () async {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return signup();
                                }));
                          },
                          child:
                        const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text("Signup",style: TextStyle(color: Colors.white),

                          ),
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                //End of signup

                Padding(
                  padding: const EdgeInsets.only(left: 100.0,top:10.0 ),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon:const FaIcon(FontAwesomeIcons.instagram) ),
                      IconButton(onPressed: () {}, icon:const FaIcon(FontAwesomeIcons.facebook)),
                      IconButton(onPressed: () {}, icon:const FaIcon(FontAwesomeIcons.whatsapp)),
                      IconButton(onPressed: () {}, icon:const Icon(Icons.email)),
                    ],
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 200.0,top: 75.0),
                  child:
                  Text(
                      "Tous droits réservés, DimouApp 2021 verifier la politique de confidentialité"),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
