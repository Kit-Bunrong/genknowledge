import 'package:flutter/material.dart';
import 'package:genknowledge/models/knowledge_model.dart';
import 'package:genknowledge/screens/info_genknowledge.dart';

class HomeGenKnowledge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFF5C0931);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: PrimaryColor,
          title: Text(
            'ចំណេះដឹងទូទៅ',
            style: TextStyle(
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              fontFamily: 'Battambang',
              color: PrimaryColor,
              shadows: [
                Shadow(
                    // bottomLeft
                    offset: Offset(-1.5, -2),
                    color: Colors.white),
                Shadow(
                    // bottomRight
                    offset: Offset(-0.2, -3.3),
                    color: Colors.white),
                Shadow(
                    // topRight
                    offset: Offset(-2.2, 2.5),
                    color: Colors.white),
                Shadow(
                    // topLeft
                    offset: Offset(1, 2.5),
                    color: Colors.white),
              ],
            ),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                new SliverAppBar(
                  backgroundColor: Colors.white,
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(0),
                    child: new TabBar(
                      unselectedLabelColor: Colors.black.withOpacity(0.5),
                      indicatorColor: Colors.purple[50],
                      tabs: <Tab>[
                        Tab(
                          child: Text(
                            'ធម្មជាតិ',
                            style: TextStyle(
                                fontFamily: 'Battambang',
                                fontSize: 16,
                                color: PrimaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'វិទ្យាសាស្ដ្រ',
                            style: TextStyle(
                                fontFamily: 'Battambang',
                                color: PrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: new TabBarView(
              children: <Widget>[
                Container(
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        Divider(color: PrimaryColor),
                    itemCount: knowledgedatas.length,
                    itemBuilder: (context, index) {
                      KnowledgeData knowledgedata = knowledgedatas[index];
                      return ListTile(
                        leading: Icon(Icons.label),
                        title: Text(knowledgedata.question),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    InfoGenknowLedge(knowledgedata.answer))),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        Divider(color: PrimaryColor),
                    itemCount: knowledgedatas.length,
                    itemBuilder: (context, index) {
                      KnowledgeData knowledgedata = knowledgedatas[index];
                      return ListTile(
                        leading: Icon(Icons.label),
                        title: Text(knowledgedata.question),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    InfoGenknowLedge(knowledgedata.answer))),
                      );
                    },
                  ),
                ),
              ],
              // controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
