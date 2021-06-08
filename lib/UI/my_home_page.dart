// import 'package:app1/model/questions.dart';
import 'package:app1/model/movie.dart';
import 'package:flutter/material.dart';

//bill split
/*
class BillSplit extends StatefulWidget {
  @override
  _BillSplitState createState() => _BillSplitState();
}

class _BillSplitState extends State<BillSplit> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          alignment: Alignment.center,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(15.0),
            children: <Widget>[
              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.shade100.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Total Per Person",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.deepPurple)),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                            "\$ ${_caculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}",
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple)),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        color: Colors.blueGrey.shade100,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                    TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      style: TextStyle(color: Colors.grey),
                      decoration: InputDecoration(
                          prefixText: "Bill Amount: ",
                          prefixIcon: Icon(Icons.attach_money)),
                      onChanged: (String value) {
                        try {
                          _billAmount = double.parse(value);
                        } catch (err) {
                          print(err);
                          _billAmount = 0.0;
                        }
                      },
                    ),
                    Divider(thickness: 0.2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Split",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () => {
                                setState(() {
                                  if (_personCounter > 1) {
                                    _personCounter--;
                                  }
                                })
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 40.0,
                                height: 40.0,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color:
                                        Colors.purpleAccent.withOpacity(0.2)),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.purpleAccent,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Text(
                              "$_personCounter",
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () => {
                                setState(() {
                                  _personCounter++;
                                })
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 40.0,
                                height: 40.0,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    color:
                                        Colors.purpleAccent.withOpacity(0.2)),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.purpleAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Tip",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "\$ ${(_caculateTotalTip(_tipPercentage, _billAmount, _personCounter).toStringAsFixed(2))}",
                            style: TextStyle(
                                color: Colors.purpleAccent,
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("$_tipPercentage%",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.purpleAccent,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Slider(
                      min: 0,
                      max: 100,
                      activeColor: Colors.purpleAccent.shade400,
                      inactiveColor: Colors.grey,
                      divisions: 10,
                      value: _tipPercentage.toDouble(),
                      onChanged: (double newVal) {
                        setState(() {
                          _tipPercentage = newVal.round();
                        });
                      },
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  _caculateTotalPerPerson(
      double billAmount, int billSplitBy, int tipPersentage) {
    var totalPerPerson =
        (_caculateTotalTip(tipPersentage, billAmount, billSplitBy) +
                billAmount) /
            billSplitBy.toDouble();
    return totalPerPerson.toStringAsFixed(2);
  }

  _caculateTotalTip(int tipPecentage, double billAmount, int billSplitBy) {
    double totalTip = 0.0;
    if (billAmount < 0 || billAmount.toString().isEmpty || billAmount == null) {
      return null;
    } else {
      totalTip = (billAmount * tipPecentage.toDouble()) / 100;
    }

    return totalTip;
  }
}
*/

//quote app
/*
class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _count = 0;

  List quote = [
    "➼Be ABLE to Build Any iOS and Android App You Want",
    "➼MASTER Dart and Flutter Framework",
    "➼BUILD Full-fledged Apps for Your Startup or Business",
    "➼CREATE a Portfolio of Apps to Apply for Development Job",
    "➼WORK as A Cross-Platform Mobile Developer Who can Develop iOS and Android Apps",
    "➼GAIN a Competitive Advantage in the Workplace as a Flutter Mobile Developer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                    child: Center(
                        child: Text(
                      quote[_count % quote.length],
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey.shade800,
                          fontStyle: FontStyle.italic),
                    ))),
              ),
            ),
            Divider(
              thickness: 2.6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: FlatButton.icon(
                onPressed: _showQuote,
                color: Colors.deepOrangeAccent,
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  "Inspire me!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      _count += 1;
    });
  }
}*/

//my card
/*
class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[_getCard(), _getAvartar()],
          ),
        ),
      ),
    );
  }
  _getAvartar() {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
          border: Border.all(color: Colors.redAccent, width: 3.0),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://picsum.photos/300/300"))),
    );
  }

  _getCard() {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.pinkAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              "Augustus Flynn",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
              margin: EdgeInsets.all(8.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.link_outlined),
                Text(
                  "https://github.com/augustustung",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ])),
          Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Icon(Icons.account_circle_outlined),
                Text("huytung139@gmail.com")
              ]))
        ],
      ),
    );
  }
}
*/

//everything is here
/*
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text(
            "ADUDU",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.lightGreenAccent,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(8.0)),
        child: Text("Button"),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  _tabButton() {
    print('tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        centerTitle: true,
        backgroundColor: Colors.amber.shade200,
        actions: <Widget>[
          IconButton(onPressed: _tabButton, icon: Icon(Icons.email_outlined))
        ],
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:
                  // InkWell(
                  //   child: Text("Tap me!", style: TextStyle(fontSize: 34.0)),
                  //   onTap: () => print("HAHAHAHAHA"),
                  // ),
                  CustomButton(),
              color: Colors.blueAccent.shade400,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        child: Icon(
          Icons.shopping_cart_outlined,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () => {print('Cart!')},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              title: Text("Profile")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Settings"))
        ],
        onTap: (int i) => {print("Tapped $i")},
      ),
    );
  }
} */

//Quizz app
/*
class QuizzApp extends StatefulWidget {
  @override
  _QuizzAppState createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  List Quizz = [
    Questions.name(false, "Are you gay?"),
    Questions.name(false, "Are you less?"),
    Questions.name(true, "Do you love me?"),
    Questions.name(false, "Will you leave me?"),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QuizzApp"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blueGrey,

        //use Builder to get a new contact of Scafford
        //else return null
        body: Builder(
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Image.asset(
                    "assets/image/1.png",
                    width: 250,
                    height: 180,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(14.4),
                          border: Border.all(
                              color: Colors.blueGrey.shade400,
                              style: BorderStyle.solid)),
                      height: 120,
                      child: Center(
                          child: Text(
                        Quizz[_index].questionText,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton.icon(
                        color: Colors.deepPurpleAccent.shade700,
                        onPressed: () {
                          _back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        label: Text("")),
                    RaisedButton(
                      color: Colors.deepPurpleAccent.shade700,
                      onPressed: () {
                        _check(true, context);
                      },
                      child:
                          Text("TRUE", style: TextStyle(color: Colors.white)),
                    ),
                    RaisedButton(
                      color: Colors.deepPurpleAccent.shade700,
                      onPressed: () {
                        _check(false, context);
                      },
                      child:
                          Text("FALSE", style: TextStyle(color: Colors.white)),
                    ),
                    RaisedButton.icon(
                        color: Colors.deepPurpleAccent.shade700,
                        onPressed: () {
                          _skip();
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        label: Text(""))
                  ],
                ),
                Spacer()
              ],
            );
          },
        ));
  }

  _check(bool userChoice, BuildContext context) {
    if (userChoice == Quizz[_index].isCorrect) {
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text(
          "Correct",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
      );
      Scaffold.of(context).showSnackBar(snackBar);
      _skip();
    } else {
      final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        content: Text(
          "Incorrect",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red,
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  _skip() {
    setState(() {
      _index = (_index + 1) % Quizz.length;
    });
  }

  _back() {
    setState(() {
      _index = (_index - 1) % Quizz.length;
    });
  }
}
*/

class Movies extends StatelessWidget {
  final List<Movie> movieList = Movie.getMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Augustus Flynn"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey.shade200,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext contex, int index) {
            return Stack(
              children: <Widget>[
                Positioned(
                  child: movieCard(movieList[index], context),
                ),
                Positioned(
                  top: 8.0,
                  left: 5.0,
                  child: movieImage(movieList[index].avartar),
                ),
              ],
            );
          }),
    );
  }

  movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 7.0),
        width: MediaQuery.of(context).size.width,
        height: 170.0,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(movie.title),
                    Text("Rating: ${movie.rate} / 10")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Released: ${movie.released}"),
                    Text("${movie.time} min"),
                    Text(movie.genre),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MoviesScreenDetail(movieName: movie.title)))
      },
    );
  }

  movieImage(String imgUrl) {
    return Container(
      width: 100.0,
      height: 155.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image:
              DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover)),
    );
  }
}

class MoviesScreenDetail extends StatelessWidget {
  final String movieName;

  const MoviesScreenDetail({Key? key, required this.movieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieName),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text("GO BACK"),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
