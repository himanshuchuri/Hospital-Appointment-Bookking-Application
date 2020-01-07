import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(MyApp());

const PrimaryColor = const Color(0xFFFFFFFF); //(oorrggbb)
const PriCo = const Color(0xFFF3F3F3);


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  FirstScreen(),
      theme: ThemeData(
        primaryColor: PrimaryColor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    _launchURL() async {
      const url = 'tel:9833933212';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    double scrheight = MediaQuery.of(context).size.height ;
    double scrwidth = MediaQuery.of(context).size.width ;
    return Scaffold(
      appBar:
      AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title:
        Container(
          padding: EdgeInsets.only(left: scrwidth*0.3),
          child: Image(
            image: AssetImage('assets/logo.png'), height: scrheight*0.3, width:scrwidth*0.3,
          ),
        ),
      ),
      body: SingleChildScrollView( child: BodyWidget()),
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: scrheight*0.26,
              child: DrawerHeader(

                child:Center( child: Text('\n Menu', style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
                ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/ablr.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Book an Appointment'),
              onTap: () {
                  Navigator.pop(context);
               // Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                //  return  BkAppt();},),);
              },
            ),
            Divider(thickness: 2.0,),

            ListTile(
              title: Text('Manage Your Appointments'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(thickness: 2.0,),

            ListTile(
              title: Text('Reports'),
              onTap: () {

                Navigator.pop(context);
              },
            ),

            Divider(thickness: 2.0,),

            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                //Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                 // return  AbtScreen();},),);
              },
            ),

            Divider(thickness: 2.0,),

            ListTile(
              title: Text('Blogs'),
              onTap: () {
                Navigator.pop(context);
               // Navigator.of(context).push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                 // return  BlogScreen();},),);
              },
            ),

            Divider(thickness: 2.0,),

            ListTile(
              title: Text('Login/Logout'),
              onTap: () {
                Navigator.pop(context);
                //Navigator.pushReplacement(context, MaterialPageRoute( builder:(BuildContext context) => MyAppOtp()),);
              },
            ),
            Divider(thickness: 2.0,),

            ListTile(
              title: Text('View Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(thickness: 2.0,),

            // Container(
            //color: Colors.red,
            /*child:*/ Column(
              children: <Widget>[
                ListTile(

                  title: Text('Emergency',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                  onTap: () {
                    _launchURL();
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //Navigator.pop(context);
                  },
                  leading: Icon(Icons.phone, color: Colors.red,),
                ),
                ListTile(
                  title: Text('+91 1234567890', style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),),
                  onTap: () {
                    _launchURL();
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //Navigator.pop(context);
                  },
                ),
              ],
            ),
            //),
          ],
        ),
      ),
    );
  }
}
class BodyWidget extends StatefulWidget{
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget>{
  @override
  Widget build(BuildContext context) {
    List<String> photos = [
      'assets/hc11.jpg',
      'assets/hc12.jpg',
      'assets/hc13.png',
      'assets/hc14.png',
    ];

    List<String> photosC = [
      'assets/research.png',
      'assets/icon.png',
      'assets/heart.png',
    ];

    List<String> textC = [
      ' I am writing to thank you \n for my successful heart \n operation. Post surgery, \n your excellent care has \n helped me recuperate \n faster. ',
      ' A big thanks to \n Dr. Amit K. Mandal, for \n treating my ailing and  \n critically sick Grand Ma so kindly \n and diligently at \n Fortis Hospital, Mohali. ',
      'Thanks for an extremely \n nice treatment provided \n at Mulund Fortis Hospital \n by Dr. Naresh Mehta \n & his team.',
      'We thank the management \n and staff in providing \n great health care facilities. \n The  medical team head \n Dr. Panda, \n has a wealth of experience. \n WELL DONE!!! '
    ];

    List<String> textN = [
      'Dr Nelson Rias',
      'Elizabeth Bluesons',
      'Crap Bag',
      'Tappu Gada',
    ];

    void redirectpg(){
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return  FirstScreen();},),);}

    void abtustpg(){
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return  FirstScreen();},),);
    }
    // TODO: implement build
    double scrheight = MediaQuery.of(context).size.height ;
    double scrwidth = MediaQuery.of(context).size.width ;
    return Align(
      alignment: Alignment.topLeft,
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[

            Container(
              child:
              CarouselSlider(
                enableInfiniteScroll: true,
                initialPage: 0,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                height: scrheight*.32,
                items: [0,1,2].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: <Widget> [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(1, 240, 240, 240),
                            ),
                            child: Image(image: AssetImage(photos[i]),
                              width: scrwidth,),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: scrheight*.02,),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(1, 240, 240, 240)
                            ),
                            child: Center(
                                child: OutlineButton(onPressed:() => redirectpg(),child: Text('Know More',), color: Colors.transparent,
                                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
                                  borderSide: BorderSide(color: Colors.black),
                                )
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            Divider(color: Colors.black,),
            Container(height: scrheight*0.02,),
            Column(
              children: <Widget> [
                Container(
                  height: scrheight*0.13,
                  child:
                  CarouselSlider(
                    enableInfiniteScroll: true,
                    initialPage: 0,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(milliseconds: 2500),
                    autoPlayAnimationDuration: Duration(milliseconds: 400),
                    pauseAutoPlayOnTouch: Duration(seconds: 5),
                    items: [0,1,2].map((k) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            children: <Widget> [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(1, 240, 240, 240),
                                ),
                                child: Image(image: AssetImage(photosC[k]), height: scrheight*0.1,
                                  width: scrwidth*0.07,),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text('About Us',textScaleFactor: 1.5,
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                    Text("\t Fortis Healthcare Limited is a leading integrated healthcare delivery service provider in India. The healthcare verticals of the company primarily comprise hospitals, diagnostics and day care specialty facilities. Currently, the company operates its healthcare delivery services in India, Dubai and Sri Lanka with 36 healthcare facilities (including projects under development), and over 410 diagnostics centres.", textScaleFactor: 1.25,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: scrheight*.02,),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(1, 240, 240, 240)
                      ),
                      child: Center(
                          child: OutlineButton(onPressed:() => abtustpg(),child: Text('Know More',), color: Colors.transparent,
                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
                            borderSide: BorderSide(color: Colors.black),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),


            Divider(color: Colors.black,),
            Container(height: scrheight*0.03,),
            CarouselSlider(
              aspectRatio: 16/9,
              enableInfiniteScroll: true,
              initialPage: 0,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              height: scrheight*0.35,
              items: [0,1,2,3].map((j) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:  BorderRadius.circular(40.0),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.black45,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(width: scrwidth*0.04,),
                              Image(image: AssetImage('assets/plus.png'),width:scrwidth*.12,height: scrheight*0.12,),
                              Container(width: scrwidth*0.08,),
                              Text(textN[j], style: TextStyle( fontSize: 18 ),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("\"  "+textC[j]+"  \" ",style:TextStyle( fontSize: 16 ),textAlign: TextAlign.center,),
                            ],
                          ),

                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}
