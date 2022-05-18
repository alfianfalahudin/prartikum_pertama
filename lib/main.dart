import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       // about:About(),
//       // profile:Profile(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Belajar Mobile Programming'),
//       ),
//       body: Center(
//           child: Text(
//         'Selamat Datang Di Pembelajaran Mobile Programming',
//         style: TextStyle(fontSize: 40, fontFamily: 'DancingScript'),
//       )),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       // about:About(),
//       // profile:Profile(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Belajar Mobile Programming'),
//         ),

//         // body: Center(
//         //   child: Text('Selamat Datang Di Pembelajaran Mobile Programming'
//         //   style: TextStyle(
//         //     fontSize: 40,
//         //     fontFamily: 'DancingScript'
//         //   ))
//         // )
//         body: Container(
//             alignment: Alignment.bottomCenter,
//             child: Text('Ayo Kita Belajar', style: TextStyle(fontSize: 20))));
//   }
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       // about:About(),
//       // profile:Profile(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Belajar Mobile Programming'),
//         ),

//         // body: Center(
//         //   child: Text('Selamat Datang Di Pembelajaran Mobile Programming'
//         //   style: TextStyle(
//         //     fontSize: 40,
//         //     fontFamily: 'DancingScript'
//         //   ))
//         // )
//         body: Container(
//             margin: EdgeInsets.all(20),
//             height: 200,
//             width: 200,
//             alignment: Alignment.topLeft,
//             color: Colors.purple,
//             child: Text('Ayo Kita Belajar',
//                 style: TextStyle(fontSize: 20, color: Colors.white))));
//   }
// }

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       // about:About(),
//       // profile:Profile(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Belajar Mobile Programming'),
//         ),

//         // body: Center(
//         //   child: Text('Selamat Datang Di Pembelajaran Mobile Programming'
//         //   style: TextStyle(
//         //     fontSize: 40,
//         //     fontFamily: 'DancingScript'
//         //   ))
//         // )
//         body: Container(
//           decoration: BoxDecoration(
//             color: const Color(0xff7c94b6),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   'https://awsimages.detik.net.id/community/media/visual/2022/03/25/manga-one-piece_43.webp?w=700&q=90%27'),
//               fit: BoxFit.cover,
//             ),
//             border: Border.all(
//               color: Colors.black,
//               width: 8,
//             ),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           height: 280,
//           width: 280,
//           margin: EdgeInsets.all(20),
//         ));
//   }
// }

void main() {
  runApp(MaterialApp(
    title: "belajar Images",
    home: BelajarGambarNetwork(),
  ));
}

class BelajarGambarNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Image"),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: "https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Text("Koneksi Error"),
        ),
      ),
    );
  }
}
