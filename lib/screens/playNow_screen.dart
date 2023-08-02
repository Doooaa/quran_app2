import '../widgets/consts.dart';
import '../components/apploacal.dart';
import 'package:flutter/material.dart';

class Play_Now extends StatefulWidget {
  const Play_Now({super.key});

  @override
  State<Play_Now> createState() => _Play_NowState();
}

class _Play_NowState extends State<Play_Now> {
  @override
  Widget build(BuildContext context) {
    double _currentSliderValue = 10;
    return Scaffold(
        appBar: AppBar(
          title: Text(getLang(context, "NowPlay"),
              textAlign: TextAlign.center,
              style:const  TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(20, 16, 51, 1),
                fontWeight: FontWeight.w700,
              )),
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
          child: Column(children: [
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
            Expanded(
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      getLang(context, "SouretElbakara"),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 23,
                      ),
                      textAlign: TextAlign.center, //
                    ),
                    Text(
                      getLang(context, "NarratedbyHafs"),
                      style: TextStyle(
                        color: Color.fromARGB(255, 143, 138, 138),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
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
                      height: 300,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                        color: Color.fromRGBO(208, 204, 220, 0.718),
                      ),
                      child: Column(children: [
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
                        Text(
                            "الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلاةَ وَمِمَّا رَزَقْنَاهُمْ يُنفِقُونَ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center),
              
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
              ),
            ),
          ]),
        ));
  }
}
