
import '../../../controller/linker/linker.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController=TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//backgroundColor: Colors.blue,

        bottom: TabBar(
          controller:_tabController,
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,

          tabs: [

            Tab(text: 'Chats',),
            Tab(text: 'Calls')
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
         TabBarscreen1(),
          TabBarscreen2()
        ],
      ),
    );
  }
}


