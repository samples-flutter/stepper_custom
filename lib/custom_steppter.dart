import 'package:flutter/material.dart';

class StepperCustom extends StatefulWidget {

  const StepperCustom({
    Key? key,
  }) : super(key: key);

  @override
  StepperCustomState createState() => StepperCustomState();
}

class StepperCustomState extends State<StepperCustom> {
  int indexStepper = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final mediumCircle = (size.width / 3) / 2;

    return Stack(
      children: [
        Positioned(
          top: 25,
          left: mediumCircle,
          right: mediumCircle,
          child: Container(
            color: Colors.red,
            height: 2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.red,
                    child: InkWell(
                      onTap: ()=> onStepTapped(1),
                      child: CircleAvatar(
                        child: const Text('1'),
                        radius: 25,
                        backgroundColor:
                        indexStepper >= 1 ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text('Dados do cartão', softWrap: false)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.red,
                    child: InkWell(
                      onTap:  ()=> onStepTapped(2),
                      child: CircleAvatar(
                        child: const Text('2'),
                        radius: 25,
                        backgroundColor:
                        indexStepper >= 2 ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text('Endereço', softWrap: false)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.red,
                    child: InkWell(
                      onTap: ()=> onStepTapped(3),
                      child: CircleAvatar(
                        child: const Text('3'),
                        radius: 25,
                        backgroundColor:
                        indexStepper >= 3 ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text('Dados do usuário', softWrap: false)
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  onStepReturn() {
    if (indexStepper != 1) {
      setState(() {
        indexStepper--;
      });
    }
  }

  onStepContinue() {
    if (indexStepper < 3) {
      setState(() {
        indexStepper++;
      });
    }
  }

  onStepTapped(int index) {
    setState(() {
      indexStepper = index;
    });
  }

}
