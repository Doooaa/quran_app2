import '../widgets/consts.dart';
import '../components/apploacal.dart';
import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current_state = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(""),//  S.of(context)),
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
       bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_state,
          onTap: (value) {
            setState(() {
              current_state = value;
            });
            print(value);
            if (value == 3) {
              Navigator.pushNamed(context, '/home');
            }
           
            if (value == 1) {
              Navigator.pushNamed(context, '/playnow');
            }
          },
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(fontSize: 15),
          // selectedLabelStyle: TextStyle(fontSize: 20),
          selectedItemColor: Color.fromRGBO(132, 120, 246, 1),
          unselectedItemColor: Color.fromARGB(255, 148, 145, 145),
          selectedIconTheme: IconThemeData(
            color: Color.fromRGBO(132, 120, 246, 1),
          ),
          unselectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 148, 145, 145),
          ),
          items:  [
            BottomNavigationBarItem(
                icon: const Icon(Icons.category_outlined, size: 20),
                label: getLang(context, "Sections"),),
            BottomNavigationBarItem(
              icon:const Icon(Icons.playlist_play_outlined, size: 23),
              label: getLang(context,  "Playlists"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle_outlined,
                size: 25,
              ),
              label:getLang(context, "Profile" ),
            ),
            BottomNavigationBarItem(

                //backgroundColor:Colors.black,
                icon: Icon(
                  Icons.cottage_outlined,
                  size: 22,
                ),
                label: getLang(context,   "Home"),),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    )),
                Column(
                  children: [
                  Text(
                    getLang(context,  "Thebestaudio"),
                      style: TextStyle(
                        color: Color.fromARGB(255, 143, 138, 138),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                getLang(context,  "For_this_month"),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 23,
                      ), //
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                          size: 20,
                    )),
              ],
            ),
                SizedBox(
              height: 20,
            ),
          
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 320,
                    height: 230, //
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/mashary.jfif',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      color: Color.fromRGBO(132, 120, 246, 0.37),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 25,
                  child: Center(
                    child: Container(
                      width: 320,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        color: Color(0x799B8B8B),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                           getLang(context,  "SouretElbakara"),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                              ), //
                            ),
                            Expanded(
                              child: Text(
                             getLang(context,   "NarratedbyHafs"),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                  getLang(context,  "Thebestaudio"),
                      style:const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ), //textAlign:TextAlign.end
                    )),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.format_line_spacing)),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.rtl,
                verticalDirection: VerticalDirection.down,
                children: [
                  ListTile(
                      leading: Container(
                        width: 60,
                        height: 200, //
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/mashary.jfif',
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          // color: Color.fromRGBO(132, 120, 246, 0.37),
                        ),
                      ),
                      title: Text(
                      getLang(context,  "SouretElbakara"),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ), //
                      ),
                      subtitle: Text(
                     getLang(context,   "NarratedbyHafs"),
                        style:const  TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle,
                          color: baseColor,
                          size: 30,
                        ),
                      )),
                  ListTile(
                      leading: Container(
                        width: 60,
                        height: 250, //
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/mashary.jfif',
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          // color: Color.fromRGBO(132, 120, 246, 0.37),
                        ),
                      ),
                      title: Text(
                       getLang(context,  "SouretAlkahf"),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ), //
                      ),
                      subtitle:  Text(
                  getLang(context,   "NarratedbyHafs"),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle,
                          color: baseColor,
                          size: 30,
                        ),
                      )),
                  ListTile(
                      leading: Container(
                        width: 60,
                        height: 200, //
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/mashary.jfif',
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          // color: Color.fromRGBO(132, 120, 246, 0.37),
                        ),
                      ),
                      title: Text(
                    getLang(context,  "SouretElbakara"),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ), //
                      ),
                      subtitle:  Text(
                     getLang(context,   "NarratedbyHafs"),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w800,
                          fontSize: 12,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle,
                          color: baseColor,
                          size: 30,
                        ),
                      )),
                  ListTile(
                      leading: Container(
                        width: 60,
                        height: 200, //
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/mashary.jfif',
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                          // color: Color.fromRGBO(132, 120, 246, 0.37),
                        ),
                      ),
                      title:
                          const Positioned(left: 220, child: Text("data")),
                      subtitle: Text("data"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle,
                          color: baseColor,
                          size: 30,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
