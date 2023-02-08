import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title: Text("XYLOPHONE"),centerTitle: true,),
      body: XyloPage(),
    )
  ));
}

void PlayAudio(int i){
  final player = AudioCache();
  player.play("assets_note$i.wav");
}

class XyloPage extends StatefulWidget {
  const XyloPage({Key? key}) : super(key: key);

  @override
  State<XyloPage> createState() => _XyloPageState();
}

class _XyloPageState extends State<XyloPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.amber
          ),
          onPressed: (){
            PlayAudio(1);
          },child: Text('First'),
        )
        ),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.cyanAccent
          ),
          onPressed: (){
            PlayAudio(2);
          },child: Text('Second'),
        )
        ),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.black
          ),
          onPressed: (){
            PlayAudio(3);
          },child: Text('Third'),
        )
        ),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.red
          ),
          onPressed: (){
            PlayAudio(4);
          },child: Text('Forth'),
        )
        ),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.green
          ),
          onPressed: (){
            PlayAudio(5);
          },child: Text('Fifth'),
        )
        ),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent
          ),
          onPressed: (){
            PlayAudio(6);
          },child: Text('Sixth'),
        )
        ),
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.purpleAccent
          ),
          onPressed: (){
            PlayAudio(7);
          },child: Text('Seventh'),
        )
        ),
      ],
    );
  }
}
