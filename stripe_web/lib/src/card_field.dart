import 'dart:developer';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../stripe_web.dart';
import 'generated/stripe.dart' as s;

class WebStripeCard extends StatefulWidget {
  final FocusNode? focusNode;

  const WebStripeCard({Key? key, this.focusNode}) : super(key: key);
  @override
  _WebStripeCardState createState() => _WebStripeCardState();
}

class _WebStripeCardState extends State<WebStripeCard> {
  @override
  void initState() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'stripe_card',
        (int viewId) => IFrameElement()
          ..height = "200"
          ..width = "400"
          ..allowPaymentRequest = true
          ..children = [
            DivElement()
              ..id = 'card-element'
              ..style.border = 'none',
          ]);
    initStripe();
    super.initState();
  }

  s.Element? element;

  void initStripe() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(milliseconds: 1), () {
        element = stripe.elements().create('card')..mount('#card-element');
      });
    });
  }

  FocusNode _focusNode = FocusNode(debugLabel: 'CardField');

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      onFocusChange: (focus) {
        if (focus)
          element?.focus();
        else
          element?.blur();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(12)),
        alignment: Alignment.center,
        height: 42,
        width: 500,
        child: HtmlElementView(viewType: 'stripe_card'),
      ),
    );
  }

  @override
  void dispose() {
    element?.unmount();
    super.dispose();
  }
}

// var stripe = Stripe('pk_test_TYooMQauvdEDq54NiTphI7jx');
//var elements = stripe.elements();

/* 
<form id="payment-form">
  <div id="card-element">
    <!-- Elements will create input elements here -->
  </div>

  <!-- We'll put the error messages in this element -->
  <div id="card-errors" role="alert"></div>

  <button id="submit">Submit Payment</button>
</form> */

/* var elements = stripe.elements();
var style = {
  base: {
    color: "#32325d",
  }
};

var card = elements.create("card", { style: style });
card.mount("#card-element"); */
