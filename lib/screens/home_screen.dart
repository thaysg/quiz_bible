import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:quiz_bible/components/choice_button.dart';
import 'package:quiz_bible/easy/screen/easy_screen.dart';
import 'package:quiz_bible/medium/screen/medium_screen.dart';

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(3, 3),
  StaggeredTile.count(3, 4),
  StaggeredTile.count(3, 4),
  StaggeredTile.count(3, 3),
  StaggeredTile.count(3, 4),
  StaggeredTile.count(3, 5),
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: StaggeredGridView.count(
          crossAxisCount: 6,
          staggeredTiles: _staggeredTiles,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          children: <Widget>[
            ChoiceButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EasyScreen(),
                  ),
                );
              },
              text: 'Fácil \n10 Questões',
              //colour: Color(0xff374CAD),

              picture: AssetImage(
                'images/battery_easy.png',
              ),
              imagecolour: Colors.green,
            ),
            ChoiceButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MediumScreen(),
                  ),
                );
              },
              text: 'Médio \n20 Questões',
              picture: AssetImage(
                'images/battery-medio.png',
              ),
              imagecolour: Colors.amber[700],
            ),
            ChoiceButton(
              onTap: () {},
              text: 'Difícil \n30 Questões',
              picture: AssetImage(
                'images/battery-dificil.png',
              ),
              imagecolour: Colors.orange[900],
            ),
            ChoiceButton(
              onTap: () {},
              text: 'Expert \n50 Questões',
              picture: AssetImage(
                'images/battery-expert.png',
              ),
              imagecolour: Colors.red[900],
            ),
            ChoiceButton(
              onTap: () {},
              text: 'Quem Sou EU \n15 Questões',
              picture: AssetImage(
                'images/suspect.png',
              ),
            ),
            ChoiceButton(
              onTap: () {},
              text: 'Verdadeiro ou Falso \n20 Questões',
              picture: AssetImage(
                'images/true-or-false.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
