import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_icons/flutter_icons.dart';

class VideoTab extends StatefulWidget {
  VideoTab({Key? key}) : super(key: key);

  @override
  _VideoTabState createState() => _VideoTabState();
}

class _VideoTabState extends State<VideoTab> with AutomaticKeepAliveClientMixin {

  var scaffoldKey = GlobalKey<ScaffoldState>();
  
  Future<void> _launchURL(String url) async {
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('video contents').tr(),
        actions: [
          IconButton(
            icon: Icon(
              Feather.rotate_cw,
              size: 22,
            ),
            onPressed: () {
              // Refresh button logic
            },
          ),
        ],
      ),
     
    );
  }

  @override
  bool get wantKeepAlive => true;
}
