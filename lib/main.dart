
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  AudioCache audioCache = AudioCache();
  List<Color> colores = [Colors.deepPurple,Colors.pinkAccent,Colors.blueAccent,Colors.lightGreen,Colors.orange,Colors.purple,Colors.teal ];

  void playNote(int numNote) {
    audioCache.play('audios/note$numNote.wav');
    print('audios/note${numNote}');
  }

  Widget builKeyNote(Color color, int numNota)
  {
   return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            playNote(numNota);
          },
          child: const Text( ""),
        ),
      ),
    );
  }
  List<Widget> builNotas()
  {
    List<Widget> notas = [];
    for( int i=0 ; i<7; i++)
    {
      notas.add(builKeyNote(colores[i], i+1));
    }
    return notas;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("XylophoneApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: builNotas()
      ),

      /*
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note1.wav');
                  },
                  child: Text("Do"),
                ),
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note2.wav');
                  },
                  child: Text("Re"),
                ),
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note3.wav');
                  },
                  child: Text("Mi"),
                ),
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note4.wav');
                  },
                  child: Text("Fa"),
                ),
              ],
            ),
            SizedBox(width: 20.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note5.wav');
                  },
                  child: Text("Sol"),
                ),
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note6.wav');
                  },
                  child: Text("La"),
                ),
                ElevatedButton(
                  onPressed: (){
                    AudioCache audioCache = AudioCache();
                    audioCache.play('audios/note7.wav');
                  },
                  child: Text("Si"),
                ),

              ],
            ),
          ],
        ),
      ),
      */
    );
  }
}



