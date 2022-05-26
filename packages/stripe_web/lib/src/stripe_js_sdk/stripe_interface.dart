// ignore_for_file: non_constant_identifier_names

part of './stripe_js.dart';

/// import * as paymentIntents from './payment-intents';
/// import * as setupIntents from './setup-intents';
/// import * as tokens from './token-and-sources';
/// import * as elements from './elements';

/// import {StripeElements, StripeElementsOptions} from './elements-group';
/// import {RedirectToCheckoutOptions} from './checkout';
/// import {PaymentRequestOptions, PaymentRequest} from './payment-request';
/// import {StripeElement, StripeElementLocale} from './elements-group';
/// import {CheckoutLocale} from './checkout';
/*export type PaymentIntentResult =
  | {paymentIntent: api.PaymentIntent; error?: undefined}
  | {paymentIntent?: undefined; error: StripeError};
*/
/*export type SetupIntentResult =
  | {setupIntent: api.SetupIntent; error?: undefined}
  | {setupIntent?: undefined; error: StripeError};
*/
/*export type PaymentMethodResult =
  | {paymentMethod: api.PaymentMethod; error?: undefined}
  | {paymentMethod?: undefined; error: StripeError};
*/
/*export type SourceResult =
  | {source: api.Source; error?: undefined}
  | {source?: undefined; error: StripeError};
*/
/*export type TokenResult =
  | {token: api.Token; error?: undefined}
  | {token?: undefined; error: StripeError};
*/
/*export type VerificationSessionResult =
  | {verificationSession: api.VerificationSession; error?: undefined}
  | {verificationSession?: undefined; error: StripeError};
*/
@anonymous
@JS()
abstract class WrapperLibrary {
  /// Your library’s name, maximum length is 30
  external String get name;
  external set name(String v);

  /// Required for Stripe Verified Partners, optional otherwise
  /// Your Partner ID from the Partners section of the Dashboard
  external String get partner_id;
  external set partner_id(String v);

  /// Your library's version, in the format of x.x.x
  external String get version;
  external set version(String v);

  /// The URL for your library's website with your contact details
  external String get url;
  external set url(String v);
  external factory WrapperLibrary(
      {String name, String partner_id, String version, String url});
}

/*export type StripeErrorType =
  /**
   * Failure to connect to Stripe's API.
   */
  | 'api_connection_error'

  /**
   * API errors cover any other type of problem (e.g., a temporary problem with Stripe's servers), and are extremely uncommon.
   */
  | 'api_error'

  /**
   * Failure to properly authenticate yourself in the request.
   */
  | 'authentication_error'

  /**
   * Card errors are the most common type of error you should expect to handle.
   * They result when the user enters a card that can't be charged for some reason.
   */
  | 'card_error'

  /**
   * Idempotency errors occur when an `Idempotency-Key` is re-used on a request that does not match the first request's API endpoint and parameters.
   */
  | 'idempotency_error'

  /**
   * Invalid request errors arise when your request has invalid parameters.
   */
  | 'invalid_request_error'

  /**
   * Too many requests hit the API too quickly.
   */
  | 'rate_limit_error'

  /**
   * Errors triggered by our client-side libraries when failing to validate fields (e.g., when a card number or expiration date is invalid or incomplete).
   */
  | 'validation_error';
*/
@anonymous
@JS()
abstract class StripeError {
  /// The type of error.
  external String /*'api_connection_error'|'api_error'|'authentication_error'|'card_error'|'idempotency_error'|'invalid_request_error'|'rate_limit_error'|'validation_error'*/ get type;
  external set type(
      String /*'api_connection_error'|'api_error'|'authentication_error'|'card_error'|'idempotency_error'|'invalid_request_error'|'rate_limit_error'|'validation_error'*/ v);

  /// For card errors, the ID of the failed charge
  external String get charge;
  external set charge(String v);

  /// For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
  external String get code;
  external set code(String v);

  /// For card errors resulting from a card issuer decline, a short string indicating the [card issuer’s reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
  external String get decline_code;
  external set decline_code(String v);

  /// A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
  external String get doc_url;
  external set doc_url(String v);

  /// A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
  external String get message;
  external set message(String v);

  /// If the error is parameter-specific, the parameter related to the error.
  /// For example, you can use this to display a message near the correct form field.
  external String get param;
  external set param(String v);

  /// The `PaymentIntent` object for errors returned on a request involving a `PaymentIntent`.
  external PaymentIntent get payment_intent;
  external set payment_intent(PaymentIntent v);

  /// The `PaymentMethod` object for errors returned on a request involving a `PaymentMethod`.
  external PaymentMethod get payment_method;
  external set payment_method(PaymentMethod v);

  /// The `SetupIntent` object for errors returned on a request involving a `SetupIntent`.
  external SetupIntent get setup_intent;
  external set setup_intent(SetupIntent v);

  external factory StripeError({
    String /*'api_connection_error'|'api_error'|'authentication_error'|'card_error'|'idempotency_error'|'invalid_request_error'|'rate_limit_error'|'validation_error'*/ type,
    String charge,
    String code,
    String decline_code,
    String doc_url,
    String message,
    String param,
    PaymentIntent payment_intent,
    PaymentMethod payment_method,
    SetupIntent setup_intent,
  });
}
