import 'package:flutter/material.dart';
import 'package:flutter_firebase_quotes_app/ui/styleguide/theme_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget({
    Key key,
    @required this.backgroundColor,
    @required this.quote,
    @required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: ScreenUtil.screenWidthDp,
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(48),
      ),
      color: backgroundColor,
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/quote_icon.png',
            color: Colors.white.withOpacity(0.4),
            height: ScreenUtil().setHeight(100),
            width: ScreenUtil().setWidth(100),
          ),
          Expanded(
            child: Center(
              child: Text(
                quote,
                style: ThemeText.headline,
              ),
            ),
          ),
          Center(
            child: Text(
              author,
              style: ThemeText.subhead,
            ),
          )
        ],
      ),
    );
  }
}
