// ignore_for_file: non_constant_identifier_names, camel_case_types, annotate_overrides

part of '../stripe_js.dart';

/// The PaymentMethod object.
@anonymous
@JS()
abstract class PaymentMethod {
  /// Unique identifier for the object.
  external String get id;
  external set id(String v);

  /// String representing the object's type. Objects of the same type share the same value.
  external String /*'payment_method'*/ get object;
  external set object(String /*'payment_method'*/ v);
  external BillingDetails get billing_details;
  external set billing_details(BillingDetails v);
  external Card get card;
  external set card(Card v);
  external CardPresent get card_present;
  external set card_present(CardPresent v);

  /// Time at which the object was created. Measured in seconds since the Unix epoch.
  external num get created;
  external set created(num v);

  /// The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
  external String /*String|Null*/ get customer;
  external set customer(String /*String|Null*/ v);
  external Eps get eps;
  external set eps(Eps v);
  external Fpx get fpx;
  external set fpx(Fpx v);
  external GrabPay get grabpay;
  external set grabpay(GrabPay v);
  external Ideal get ideal;
  external set ideal(Ideal v);
  external P24 get p24;
  external set p24(P24 v);

  /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  external bool get livemode;
  external set livemode(bool v);

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  external Metadata get metadata;
  external set metadata(Metadata v);
  external SepaDebit get sepa_debit;
  external set sepa_debit(SepaDebit v);

  /// The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
  external String get type;
  external set type(String v);
  external Affirm get affirm;
  external set affirm(Affirm v);
  external AfterpayClearpay get afterpay_clearpay;
  external set afterpay_clearpay(AfterpayClearpay v);
  external AcssDebit get acss_debit;
  external set acss_debit(AcssDebit v);
  external AuBecsDebit get au_becs_debit;
  external set au_becs_debit(AuBecsDebit v);
  external UsBankAccount get us_bank_account;
  external set us_bank_account(UsBankAccount v);
  external factory PaymentMethod(
      {String id,
      String /*'payment_method'*/ object,
      BillingDetails billing_details,
      Card card,
      CardPresent card_present,
      num created,
      String /*String|Null*/ customer,
      Eps eps,
      Fpx fpx,
      GrabPay grabpay,
      Ideal ideal,
      P24 p24,
      bool livemode,
      Metadata metadata,
      SepaDebit sepa_debit,
      String type,
      Affirm affirm,
      AfterpayClearpay afterpay_clearpay,
      AcssDebit acss_debit,
      AuBecsDebit au_becs_debit,
      UsBankAccount us_bank_account});
}

// Module PaymentMethod
@anonymous
@JS()
abstract class AuBecsDebit {
  /// Bank State Branch
  external String /*String|Null*/ get bsb_number;
  external set bsb_number(String /*String|Null*/ v);

  /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  external String /*String|Null*/ get fingerprint;
  external set fingerprint(String /*String|Null*/ v);

  /// Last four characters of the account number.
  external String /*String|Null*/ get last4;
  external set last4(String /*String|Null*/ v);
  external factory AuBecsDebit(
      {String /*String|Null*/ bsb_number,
      String /*String|Null*/ fingerprint,
      String /*String|Null*/ last4});
}

@anonymous
@JS()
abstract class BillingDetails {
  /// Billing address.
  external Address /*Address|Null*/ get address;
  external set address(Address /*Address|Null*/ v);

  /// Email address.
  external String /*String|Null*/ get email;
  external set email(String /*String|Null*/ v);

  /// Full name.
  external String /*String|Null*/ get name;
  external set name(String /*String|Null*/ v);

  /// Billing phone number (including extension).
  external String /*String|Null*/ get phone;
  external set phone(String /*String|Null*/ v);
  external factory BillingDetails(
      {Address /*Address|Null*/ address,
      String /*String|Null*/ email,
      String /*String|Null*/ name,
      String /*String|Null*/ phone});
}

// Module Card
@anonymous
@JS()
abstract class Checks {
  /// If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
  external String /*String|Null*/ get address_line1_check;
  external set address_line1_check(String /*String|Null*/ v);

  /// If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
  external String /*String|Null*/ get address_postal_code_check;
  external set address_postal_code_check(String /*String|Null*/ v);

  /// If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
  external String /*String|Null*/ get cvc_check;
  external set cvc_check(String /*String|Null*/ v);
  external factory Checks(
      {String /*String|Null*/ address_line1_check,
      String /*String|Null*/ address_postal_code_check,
      String /*String|Null*/ cvc_check});
}

@anonymous
@JS()
abstract class ThreeDSecureUsage {
  /// Whether 3D Secure is supported on this card.
  external bool get supported;
  external set supported(bool v);
  external factory ThreeDSecureUsage({bool supported});
}

// End module Card
@anonymous
@JS()
abstract class CardPresent {}

@anonymous
@JS()
abstract class Eps {
  /// The customer's bank.
  external String get bank;
  external set bank(String v);
  external factory Eps({String bank});
}

@anonymous
@JS()
abstract class Fpx {
  /// The customer's bank.
  external String get bank;
  external set bank(String v);
  external factory Fpx({String bank});
}

@anonymous
@JS()
abstract class GrabPay {}

@anonymous
@JS()
abstract class Ideal {
  /// The customer's bank, if provided.
  external String /*String|Null*/ get bank;
  external set bank(String /*String|Null*/ v);

  /// The Bank Identifier Code of the customer's bank, if the bank was provided.
  external String /*String|Null*/ get bic;
  external set bic(String /*String|Null*/ v);
  external factory Ideal(
      {String /*String|Null*/ bank, String /*String|Null*/ bic});
}

@anonymous
@JS()
abstract class P24 {
  /// The customer's bank.
  external String get bank;
  external set bank(String v);
  external factory P24({String bank});
}

@anonymous
@JS()
abstract class SepaDebit {
  /// Bank code of bank associated with the bank account.
  external String /*String|Null*/ get bank_code;
  external set bank_code(String /*String|Null*/ v);

  /// Branch code of bank associated with the bank account.
  external String /*String|Null*/ get branch_code;
  external set branch_code(String /*String|Null*/ v);

  /// Two-letter ISO code representing the country the bank account is located in.
  external String /*String|Null*/ get country;
  external set country(String /*String|Null*/ v);

  /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
  external String /*String|Null*/ get fingerprint;
  external set fingerprint(String /*String|Null*/ v);

  /// Last four characters of the IBAN.
  external String /*String|Null*/ get last4;
  external set last4(String /*String|Null*/ v);
  external factory SepaDebit(
      {String /*String|Null*/ bank_code,
      String /*String|Null*/ branch_code,
      String /*String|Null*/ country,
      String /*String|Null*/ fingerprint,
      String /*String|Null*/ last4});
}

@anonymous
@JS()
abstract class Affirm {}

@anonymous
@JS()
abstract class AfterpayClearpay {}

@anonymous
@JS()
abstract class AcssDebit {
  /// Customer’s bank account number.
  external String get account_number;
  external set account_number(String v);

  /// Institution number of the customer’s bank.
  external String get institution_number;
  external set institution_number(String v);

  /// Transit number of the customer’s bank.
  external String get transit_number;
  external set transit_number(String v);
  external factory AcssDebit(
      {String account_number,
      String institution_number,
      String transit_number});
}

@anonymous
@JS()
abstract class UsBankAccount {
  /// Customer’s bank account number.
  external String get account_number;
  external set account_number(String v);

  /// The routing transit number for the bank account.
  external String get routing_number;
  external set routing_number(String v);

  /// The type of entity that holds the account. This can be either `individual` or `company`.
  external String get account_holder_type;
  external set account_holder_type(String v);

  /// Account type: checkings or savings. Defaults to checking if omitted.
  external String get account_type;
  external set account_type(String v);
  external factory UsBankAccount(
      {String account_number,
      String routing_number,
      String account_holder_type,
      String account_type});
}

// End module PaymentMethod
@anonymous
@JS()
abstract class PaymentMethodCreateParams {
  /// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
  external PaymentMethodCreateParams_BillingDetails get billing_details;
  external set billing_details(PaymentMethodCreateParams_BillingDetails v);

  /// Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  external MetadataParam get metadata;
  external set metadata(MetadataParam v);

  /// The PaymentMethod to share.
  external String get payment_method;
  external set payment_method(String v);

  /// The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type. Required unless `payment_method` is specified (see the [Cloning PaymentMethods](https://stripe.com/docs/payments/payment-methods/connect#cloning-payment-methods) guide)
  external String get type;
  external set type(String v);
  external factory PaymentMethodCreateParams(
      {PaymentMethodCreateParams_BillingDetails billing_details,
      MetadataParam metadata,
      String payment_method,
      String type});
}

// Module PaymentMethodCreateParams
@anonymous
@JS()
abstract class PaymentMethodCreateParams_BillingDetails {
  /// Billing address.
  external Address get address;
  external set address(Address v);

  /// Email address.
  external String get email;
  external set email(String v);

  /// Full name.
  external String get name;
  external set name(String v);

  /// Billing phone number (including extension).
  external String get phone;
  external set phone(String v);
  external factory PaymentMethodCreateParams_BillingDetails(
      {Address address, String email, String name, String phone});
}
