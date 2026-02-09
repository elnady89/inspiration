import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget{
  MyApp({super.key});
  @override
  State <MyApp> createState() => _MyAppState();
}
class  _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor:Colors.white,
          elevation: 0.0,
          leading: IconButton(
              onPressed:(){},
              icon:Icon(Icons.menu)),
        ),
        body:SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                      color: Colors.white
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Find Your",style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.w400),),
                      SizedBox(
                        height: 5,
                      ),
                      Text(" Inspiration ",style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,color: Colors.black87,),
                                hintText: "Search you're looking for",
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
                            )

                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(" Promo Today ",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 15,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      promoCard('https://w0.peakpx.com/wallpaper/482/921/HD-wallpaper-mohamed-salah-portrait-egyptian-football-player-liverpool-fc-football-england-premier-league.jpg'),
                      promoCard('https://bloximages.newyork1.vip.townnews.com/yakimaherald.com/content/tncms/assets/v3/editorial/a/3a/a3a44b5f-06e0-5762-8033-42dbc018c084/6982079d480af.image.jpg?resize=752%2C500'),
                      promoCard('https://www.thespruce.com/thmb/OQE5Cuwvivi5lFfvP_45DoviAEw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/calimia_west_palm-beach_interior_designer_24-443c56b370814c5599097f7c1933d10b.jpg'),
                      promoCard('https://thumbs.dreamstime.com/b/embrace-your-morning-routine-cozy-home-office-oasis-coffee-books-inspiring-workspace-setup-productivity-start-day-382129051.jpg')

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage("https://media.gq.com/photos/610d6be4539f373b4ca1bd94/16:9/w_2560%2Cc_limit/GettyImages-955410340.jpg")
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops:[ 0.1,0.9 ],
                            colors:[
                              Colors.black87.withValues(alpha: 0.9),
                              Colors.black87.withValues(alpha: .1),
                            ]
                        )
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(padding: EdgeInsets.all(15),
                        child: Text('Best Design',style: TextStyle(color: Colors.white,fontSize: 20),)
                        ,),

                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}
Widget promoCard(image){
  return AspectRatio(aspectRatio: 2.62/3,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover,
            image:NetworkImage(image)
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops:[ 0.1,0.9 ],
                colors:[
                  Colors.black87.withValues(alpha: 0.9),
                  Colors.black87.withValues(alpha: .1),
                ]
            )
        ),
      ),
    ),
  );
}