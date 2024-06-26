

import '../linker/linker.dart';

class MyText extends StatelessWidget {
  String txt;
   MyText({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return  Text(txt,style: TextStyle(color: Colors.black
        , fontSize: 20,fontWeight: FontWeight.w800),);
  }
}
