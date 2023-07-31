// class row_playBotton extends StatelessWidget {
//   const row_playBotton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: const Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Icon(
//                     Icons.replay_rounded,
//                     size: 35,
//                     color: Color.fromARGB(255, 174, 172, 172),
//                   ),
//                   Positioned.fill(
//                     child: Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text('15',
//                             style: TextStyle(
//                               color:
//                                   Color.fromARGB(255, 143, 138, 138),
//                               fontWeight: FontWeight.w600,
//                               fontSize: 10,
//                             )),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.play_circle,
//                 color: baseColor,
//                 size: 65,
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Icon(
//                     Icons.replay_rounded,
//                     size: 35,
//                     color: Color.fromARGB(255, 174, 172, 172),
//                   ),
//                   Positioned.fill(
//                     child: Center(
//                       child: Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text('15',
//                             style: TextStyle(
//                               color:
//                                   Color.fromARGB(255, 143, 138, 138),
//                               fontWeight: FontWeight.w600,
//                               fontSize: 10,
//                             )),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         );
//   }
// }

// class container_palyScreen extends StatelessWidget {
//   const container_palyScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 10,
//       height:331,//
           
//       decoration: const BoxDecoration(
//         shape: BoxShape.rectangle,
//          image: DecorationImage(
//           image: AssetImage('assets/images/download (7).jfif',
//           ),
//           fit: BoxFit.cover,
//            colorFilter: ColorFilter.mode( Color.fromRGBO(162, 154, 233, 0.655), BlendMode.modulate,)
//           //colorFilter: ColorFilter.srgbToLinearGamma(),
          
//       ),
//         borderRadius: BorderRadius.all(
//           Radius.circular(25),
         
//         ),
//         color: Color.fromRGBO(132, 120, 246, 0.37),
//       ),
//     );
//   }
// }