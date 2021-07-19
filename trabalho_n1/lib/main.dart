import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Robot e Bot'),
      ),
      body: Center(
        child: Column(
          children: [
          Image.asset("imagens/robot.png", height: 300,width: 300,),
        Text("Olá, sou Robot  \n"
            "Seu assistente virtual",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),),
        ElevatedButton(
          child: Text(
            "Acessar app",
          ),
          onPressed: ()
          {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        )]
      ),
    ),
    );
  }
}

class SecondRoute extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Robot e Bot"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            //Icons and lyrics
            ListTile(leading: Icon(Icons.map),title: Text("Mapa"),),
            ListTile(leading: Icon(Icons.photo_album),title: Text("Álbum"),),
            ListTile(leading: Icon(Icons.call),title: Text("Ligação"),),
            ListTile(leading: Icon(Icons.accessible),title: Text("Acessibilidade"),),
            ListTile(leading: Icon(Icons.location_city),title: Text("Localização"),),
            //search for topics
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Buscar Tópicos",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            ListBody(
              children: <Widget>[
              Image.asset("imagens/bot.png", width: 100, height: 200,),
                ElevatedButton(
                  child: Text("NEXT"),
                  onPressed: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdRoute()),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Robot e Bot"),
      ),
      body: Center(
        child: Column(
          children: [
          Image.asset("imagens/robot.png", height: 300,width: 300,),
            Image.asset("imagens/bot.png", height: 250,width: 250,),
        Text("Espero que tenha encontrato o que procurava  \n"
            "Volte sempre!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
        ElevatedButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
    )]
  ),
  ),
  );
}
}