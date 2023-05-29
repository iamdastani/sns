import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordpress_app/blocs/category_tab1_bloc.dart';
import 'package:wordpress_app/config/config.dart';
import 'package:wordpress_app/cards/card1.dart';
import 'package:wordpress_app/cards/card4.dart';
import 'package:wordpress_app/utils/empty_image.dart';
import 'package:wordpress_app/utils/loading_card.dart';
import 'package:wordpress_app/widgets/loading_indicator_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CategoryTab1 extends StatefulWidget {
  final int categoryId;
  final GlobalKey<ScaffoldState> scaffoldKey;

  CategoryTab1({Key? key, required this.categoryId, required this.scaffoldKey})
      : super(key: key);

  @override
  _CategoryTab1State createState() => _CategoryTab1State();
}

class _CategoryTab1State extends State<CategoryTab1> {
  @override
  void initState() {
    super.initState();
    if (this.mounted) {
      if (context.read<CategoryTab1Bloc>().articles.isEmpty) {
        context.read<CategoryTab1Bloc>().fetchData(widget.categoryId, mounted);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: 'https://rabbi.zenohub.co.tz/wpstream/rabbitv',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
