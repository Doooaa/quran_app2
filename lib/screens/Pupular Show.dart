import '../widgets/consts.dart';
import '../widgets/Mybutton.dart';
import '../widgets/Mylistetile.dart';
import '../components/apploacal.dart';
import 'package:flutter/material.dart';






class PupularShow_Screen extends StatefulWidget {
  const PupularShow_Screen({super.key});

  @override
  State<PupularShow_Screen> createState() => _PupularShow_ScreenState();
}

class _PupularShow_ScreenState extends State<PupularShow_Screen> {
  int current_state = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( getLang(context, "PupularShow"), style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),),//      S.of(context).,
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
        padding: const EdgeInsets.only(left: 30, right: 30, top: 12),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 330,
                  height: 300, //
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
                Positioned(
                    top: 120,
                    left: 140,
                    child: Icon(
                      Icons.video_collection_outlined,
                      color: Colors.white,
                      size: 60,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MYButton(
                    title: getLang(context,  "SeeAll"),
                    Buttoncolor: baseColor,
                    textcolor: Colors.white,
                    fun: () {}),
                MYButton(
                    title: getLang(context,  "Subscription"),
                    Buttoncolor: Colors.white,
                    textcolor: Colors.black,
                    fun: () {
                      Navigator.pushNamed(context, '/Subscribe');
                    }),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                 getLang(context,   "Thebestaudio"),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ), //textAlign:TextAlign.end
                    )),
                Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(getLang(context,  "SeeAll"),
                          style: const TextStyle(
                            color: Color.fromARGB(255, 100, 94, 94),
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center)),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.rtl,
                verticalDirection: VerticalDirection.down,
                children: [
                  MyListTile(
                      imageUrl: 'assets/images/mashary.jfif',fun: (){},
                      title: getLang(context,  "SouretElbakara"),
                      sub_title:getLang(context,   "NarratedbyHafs")),
                          MyListTile(
                      imageUrl: 'assets/images/mashary.jfif',fun: (){},
                      title: getLang(context,  "SouretAlkahf"),
                      sub_title: getLang(context,   "NarratedbyHafs")),
                       
                  MyListTile(
                      imageUrl: 'assets/images/mashary.jfif',fun: (){},
                      title: getLang(context,  "SouretElbakara"),
                      sub_title:getLang(context,   "NarratedbyHafs")),
                          MyListTile(
                      imageUrl: 'assets/images/mashary.jfif',fun: (){},
                      title: getLang(context,  "SouretAlkahf"),
                      sub_title: getLang(context,   "NarratedbyHafs")),
                       
                        MyListTile(
                      imageUrl: 'assets/images/mashary.jfif',fun: (){},
                      title: getLang(context,  "SouretElbakara"),
                      sub_title:getLang(context,   "NarratedbyHafs")),
                          MyListTile(
                      imageUrl: 'assets/images/mashary.jfif',fun: (){},
                      title: getLang(context,  "SouretAlkahf"),
                      sub_title: getLang(context,   "NarratedbyHafs")),
                       
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/**
 *  Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Container(
              width: 331,
              height: 331, //
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/mashary.jfif',
                    ),
                    fit: BoxFit.cover,
                    // colorFilter: ColorFilter.mode( Color.fromRGBO(162, 154, 233, 0.655), BlendMode.modulate,)
                    //colorFilter: ColorFilter.srgbToLinearGamma(),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              //color: Color.fromRGBO(132, 120, 246, 0.37),
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "سورة البقرة",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 23,
                  ), //
                ),
                const Text(
                  'روي عن حفص',
                  style: TextStyle(
                    color: Color.fromARGB(255, 143, 138, 138),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
            
                Slider(
                  value: _currentSliderValue,
                  max: 26,
                  divisions: 100,
                  // label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //SizedBox(width: 1,),
                    Text('04:30',
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                    SizedBox(
                      width: 150,
                    ),
                    Text('26:36',
                        style: TextStyle(
                          color: Color.fromARGB(255, 163, 148, 148),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        )),
                    //    SizedBox(width: 1,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.replay_rounded,
                            size: 35,
                            color: Color.fromARGB(255, 174, 172, 172),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('15',
                                    style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 143, 138, 138),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle,
                        color: baseColor,
                        size: 65,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.replay_rounded,
                            size: 35,
                            color: Color.fromARGB(255, 174, 172, 172),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('15',
                                    style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 143, 138, 138),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 320,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                    color: Color.fromRGBO(208, 204, 220, 0.718),
                  ),
                  child: ListView(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'ذَلِكَ الْكِتَابُ لاَ رَيْبَ فِيهِ هُدًى لِّلْمُتَّقِينَ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center),
                           Text('الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلاةَ وَمِمَّا رَزَقْنَاهُمْ يُنفِقُونَ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),     textAlign: TextAlign.center),
                    Expanded(
                      child: Text(
                        "وَالَّذِينَ يُؤْمِنُونَ بِمَا أُنزِلَ إِلَيْكَ وَمَا أُنزِلَ مِن قَبْلِكَ وَبِالآخِرَةِ هُمْ يُوقِنُونَ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 143, 138, 138),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    //   SizedBox(height: 20,),
                  ]),
                ),
              ],
            ),
          ]),
        ));
  }
}

 */
