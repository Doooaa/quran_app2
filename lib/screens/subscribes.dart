import '../widgets/consts.dart';
import '../components/apploacal.dart';
import 'package:flutter/material.dart';





class Subscribe extends StatefulWidget {
  const Subscribe({super.key});

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(   getLang(context, "Subscribe"),style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 19,
                  ),),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          centerTitle: true,
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.list,
                  size: 30,
                  color: Color.fromRGBO(11, 8, 39, 1),
                  weight: 600,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                   getLang(context,   "subtitle"),
                 style: TextStyle(
                    color: Color.fromARGB(255, 143, 138, 138),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              SizedBox(
                height: 5,
              ),
              ListTile(
                  leading: Container(
                    width: 80,
                    height: 150, //
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mashary.jfif',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // color: Color.fromRGBO(132, 120, 246, 0.37),
                    ),
                  ),
                  title: Text(
                  getLang(context,   "reader1"),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ), //
                  ),
               subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getLang(context,     "Audio "),
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor:baseColor, 
                      ),
                      child: 
                      Text(   getLang(context,    "Subscribe"),style: TextStyle(
                        color:  Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),)),
                   
                    ],
                  ),
                
                  ),
              ListTile(
                  leading: Container(
                  width: 80,
                    height: 150,//
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mashary.jfif',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // color: Color.fromRGBO(132, 120, 246, 0.37),
                    ),
                  ),
                  title: Text(
                getLang(context,   "reader2"),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ), //
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                 getLang(context,     "Audio "),
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor:baseColor, 
                      ),
                      child: 
                      Text( getLang(context,    "Subscribe"),style: TextStyle(
                        color:  Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),)),
                   
                    ],
                  ),
                 ),
              ListTile(
                  leading: Container(
                    width: 80,
                    height: 150,//
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mashary.jfif',
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // color: Color.fromRGBO(132, 120, 246, 0.37),
                    ),
                  ),
                title: Text(
                  getLang(context,   "reader3"),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ), //
                  ),
                 subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                       getLang(context,     "Audio "),
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor:baseColor, 
                      ),
                      child: 
                      Text( getLang(context,    "Subscribe"),style: TextStyle(
                        color:  Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),)),
                   
                    ],
                  ),
                 ),
             mylistTile(title:   getLang(context,   "reader4"),
              Mysubtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                 getLang(context,     "Audio "),
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        backgroundColor:baseColor, 
                      ),
                      child: 
                      Text( getLang(context,    "Subscribe"),style: TextStyle(
                        color:  Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                      ),)),
                   
                    ],
                  ),
              
                Myleading_insetImage:   'assets/images/mashary.jfif',)
            ],
          ),
        ));
  }
}

class mylistTile extends StatelessWidget {
mylistTile({
  required this.title,
  required this.Mysubtitle,
  required this.Myleading_insetImage,
  Mytrailing,
});
 String title;
  Widget Mysubtitle;
  Widget?Mytrailing;
 String Myleading_insetImage;


  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
       width: 80,
          height: 150,//
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
               Myleading_insetImage,
              ),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            // color: Color.fromRGBO(132, 120, 246, 0.37),
          ),
        ),
        title: Text(
        title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ), //
        ),
         subtitle: Mysubtitle,
         
       );
  }
}
