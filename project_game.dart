import 'dart:math';
import 'dart:io';

void main() {
  var list = ['R', 'P', 'S'];
  // generates a new Random object
  final _random = new Random();

  // generate a random index based on the list length
  // and use it to retrieve the element

  int i = 1;
  // initialize point
  int _player_point = 0;
  int com_point = 0;
  // main game
  while (i <= 10) {
    // marks the num of plays
    print("Play $i");
    var element = list[_random.nextInt(list.length)];
    // io for the player
    stdout.write("(R)Rock, (P)Paper or (S)Scissor : ");
    String inp = stdin.readLineSync()!.toUpperCase();
    // game decesion
    if (inp == element) {
      print("Draw");
      i--;
    } else if (inp == "R" && element == "P") {
      print("You won");
      _player_point++;
      com_point--;
    } else if (inp == "R" && element == "S") {
      print("You won");
      _player_point++;
      com_point--;
    } else if (inp == "P" && element == "R") {
      print("You won");
      _player_point++;
      com_point--;
    } else if (inp == "P" && element == "S") {
      print("You lost");
      _player_point--;
      com_point++;
    } else if (inp == "S" && element == "R") {
      print("You lost");
      _player_point--;
      com_point++;
    } else if (inp == "S" && element == "P") {
      print("You won");
      _player_point++;
      com_point--;
    } else {
      print('Invalid Input');
      i--;
    }
    // convert to the full forms
    switch (element) {
      case 'S':
        var com = "Scissor";
        print('Computer choosed $com');
        break;
      case 'R':
        var com = "Rock";
        print('Computer choosed $com');
        break;
      case 'P':
        var com = "Papper";
        print('Computer choosed $com');
        break;
    }
    // update point on the console
    print("Player: $_player_point | Computer$com_point");
    i++;
    sleep(Duration(seconds: 1));
  }
  // Update final score
  print('score loading....');
  sleep(Duration(seconds: 3));
  if (com_point > _player_point) {
    int p = com_point - _player_point;
    print("Computer won by $p point !!");
  } else if (com_point < _player_point) {
    int p = _player_point - com_point;
    print("Player won by $p point!!");
  } else {
    print("Draw!! Play again");
  }
}
