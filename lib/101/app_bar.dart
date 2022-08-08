import 'package:flutter/material.dart';


class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        toolbarTextStyle: const TextStyle(color: Colors.amberAccent),
        actionsIconTheme: const IconThemeData(color: Colors.amber),
        leading: const Icon(Icons.chevron_left), // sol taraf
        title: Text(_title),
        centerTitle: true,
        actions: [
          // sağ taraf
          IconButton(onPressed: () {}, icon: const Icon(Icons.mark_as_unread)),
          const Center(child: CircularProgressIndicator()),
          const Text("ToolBar")
        ],
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}

// Appbar 'ın theme ayarları kesinlikle Theme kısmında yapıcaz main'de var.