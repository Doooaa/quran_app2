import 'package:flutter/material.dart';
import 'package:quran_app2/components/apploacal.dart';

class Start_Screen extends StatefulWidget {
  const Start_Screen({super.key});

  @override
  State<Start_Screen> createState() => _Start_ScreenState();
}

class _Start_ScreenState extends State<Start_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 431,
                  height: 431, //
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/download (7).jfif',
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Color.fromRGBO(162, 154, 233, 0.655),
                          BlendMode.modulate,
                        )
                        //colorFilter: ColorFilter.srgbToLinearGamma(),

                        ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(150),
                    ),
                    color: Color.fromRGBO(132, 120, 246, 0.37),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 20,
                    child: IconButton.filled(
                      //  color:Color.fromRGBO(132, 120, 246, 1)),

                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow_rounded,
                        size: 40,
                      ),
                    ))
              ],
            ),
         SizedBox(
              height: 10,
            ),
            Text(
              //////////////////////////////////////////////////
              getLang(context, "stitle"),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Color.fromRGBO(20, 16, 51, 1),
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              getLang(context, "Start_subt"),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(157, 156, 161, 1),
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 330.0,
                height: 70.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(132, 120, 246, 1)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/PupularShow');
                  },
                  child: Text(getLang(context, "s_bottonT"),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                )),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                    getLang(context,
                        "s_textbottonT"), // S.of(context).s_textbottonT,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(132, 120, 246, 1),
                    ))),
          ],
        ),
      ),
    );
  }
}
