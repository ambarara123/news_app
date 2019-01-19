import 'package:flutter/material.dart';
import './homepage.dart';
import './sportspage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorDark: Color(0xcccccc),
        primaryColorLight: Colors.white,

        primarySwatch: Colors.pink,

        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),



      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController tabController;
  ScrollController scrollController;



  Widget _buildPage({int index, Color color}) {
    return Container(
      alignment: AlignmentDirectional.center,
      color: color,
      child: Text(
        '$index',
        style: TextStyle(fontSize: 132.0, color: Colors.white),
      ),
    );
  }

  Widget _buildPageView() {
    return PageView(
      children: [
        _buildPage(index: 1, color: Colors.green),
        _buildPage(index: 2, color: Colors.blue),
        _buildPage(index: 3, color: Colors.indigo),
        _buildPage(index: 4, color: Colors.red),
      ],
    );
  }


  @override
  void initState() {

    super.initState();
    tabController = TabController(length: 2, vsync: this);
    scrollController = ScrollController();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      drawer: Drawer(

        child: Column(
          children: <Widget>[
            AppBar(

              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('something'),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              centerTitle: false,
              title: Text('Category'),
              elevation: 0,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              forceElevated: false,

              flexibleSpace: FlexibleSpaceBar(
                  background: _buildPageView(),/*Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  ),*/
              ),
            ),
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
              TabBar(

              controller: tabController,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.grey,
              tabs: [
              Tab(
              text: 'Home',
              ),
              Tab(
              text: 'sports',
              ),
              ],
              ),

              ),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(
          
          controller: tabController,
          children: <Widget>[
            HomePage(),
            SportsPage(),
          ],),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(

      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
