import 'package:darculator/models/button_model.dart';
import 'package:darculator/widgets/button_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const Darculator());
}

class Darculator extends StatefulWidget {
  const Darculator({Key? key}) : super(key: key);

  @override
  State<Darculator> createState() => _DarculatorState();
}

class _DarculatorState extends State<Darculator> {
  String currentText = "";
  String operationHistory = "";
  late double result = 0;
  String operation = "";
  late String opHolder = "";
  double num1 = 0;
  double num2 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 45,
          title: const Text(
            "(DARCULATOR)",
            style: TextStyle(fontFamily: "Satan", fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment(1, 1),
              child: Text(operationHistory,
                  style: TextStyle(
                      fontFamily: "Blood",
                      fontSize: 40,
                      color: Colors.grey.shade600)),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment(1, 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  currentText,
                  style: TextStyle(
                      fontFamily: "Blood", fontSize: 65, color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children:
                      List.generate(ButtonList().buttonList.length, (index) {
                    return Buttons(
                        model: ButtonList().buttonList[index],
                        onpress: holdValue);
                  })),
            )
          ],
        ),
      ),
    );
  }

  void holdValue(value) {
    switch (value) {
      case "AC":
        setState(() {
          operationHistory = "";
          currentText = "";
          operation = "0";
          num1 = 0;
          num2 = 0;
          result = 0;
          opHolder = "";
        });
        break;

      case "C":
        setState(() {
          currentText = "";
          operation = "0";
          num1 = 0;
          num2 = 0;
          result = 0;
          opHolder = "";
        });
        break;

      case "BACK":
        if (currentText != "Infinity" && currentText != "") {
          setState(() {
            currentText = currentText.substring(0, currentText.length - 1);
          });
        }
        operation.length - 1 == 0
            ? operation = "0"
            : operation = operation.substring(0, operation.length - 1);
        operation.length - 1 == 0 ? num1 = 0 : num1 = double.parse(operation);
        break;

      case "/":
        if (currentText != "Infinity") {
          setState(() {
            mathOps("/");
          });
        }
        break;

      case "X":
        if (currentText != "Infinity") {
          setState(() {
            mathOps("X");
          });
        }
        break;

      case "+":
        if (currentText != "Infinity") {
          setState(() {
            mathOps("+");
          });
        }
        break;

      case "-":
        if (currentText != "Infinity") {
          setState(() {
            mathOps("-");
          });
        }
        break;

      case "EVIL":
        if (currentText != "Infinity") {
          setState(() {
            currentText = "666";
            operation = "666";
          });
        }
        break;

      case "=":
        if (currentText != "Infinity" && currentText != "") {
          setState(() {
            num2 = double.parse(operation);
            operationHistory = currentText;
            makeOpHolder(opHolder);
            infinityCheck();
            opHolder = "";
          });
        }

        break;

      default:
        setState(() {
          operation = operation + value;
          print(operation);
          currentText != "Infinity"
              ? currentText = currentText + value
              : currentText = "Infinity";
        });
    }
  }

  void mathOps(String sym) {
    if (currentText != "" && opHolder == "") {
      opHolder = sym;
      num1 = double.parse(operation);
      operation = "0";
      currentText = currentText + sym;
    } else {
      num1 = 0;
      num2 = 0;
    }
  }

  void makeOpHolder(String sym) {
    switch (sym) {
      case "+":
        result = num1 + num2;
        break;

      case "-":
        result = num1 - num2;
        break;

      case "/":
        result = num1 / num2;
        break;

      case "X":
        result = num1 * num2;
        break;

      default:
        result = double.parse(operation);
    }
  }

  void infinityCheck() {
    if (result == double.infinity) {
      currentText = "Infinity";
      operation = "0";
    } else {
      if (result / result.floor() == 1) {
        setState(() {
          currentText = result.floor().toString();
          operation = result.floor().toString();
        });
      } else {
        currentText = result.toString();
        operation = result.toString();
      }
    }
  }
}
