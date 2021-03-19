//@dart=2.12
library stripe_web;
import 'src/generated/stripe.dart' as s;
export 'src/apple_pay.dart';
export 'src/card_field.dart';

final stripe = s.Stripe('pk_test_oDBTDWWrb1kezz6lwq9zmeoW00XmZlpvM6');
