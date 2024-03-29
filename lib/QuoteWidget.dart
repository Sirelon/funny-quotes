import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Quote.dart';

class QuoteWidget extends StatelessWidget {
  final Quote quote;

  QuoteWidget({Key? key, required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.displaySmall?.merge(TextStyle(
          backgroundColor: Color(0x9A42A5F5),
        ));
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            quote.quote!,
            textAlign: TextAlign.center,
            style: textStyle,
          ),
          SizedBox(height: 32.0),
          Image.network(quote.image!),
          Text(
            quote.character!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
