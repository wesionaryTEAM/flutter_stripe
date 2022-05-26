import * as api from './api';
// import * as paymentIntents from './payment-intents';
// import * as setupIntents from './setup-intents';
// import * as tokens from './token-and-sources';
// import * as elements from './elements';

// import {StripeElements, StripeElementsOptions} from './elements-group';
// import {RedirectToCheckoutOptions} from './checkout';
// import {PaymentRequestOptions, PaymentRequest} from './payment-request';
// import {StripeElement, StripeElementLocale} from './elements-group';
// import {CheckoutLocale} from './checkout';

export type PaymentIntentResult =
  | {paymentIntent: api.PaymentIntent; error?: undefined}
  | {paymentIntent?: undefined; error: StripeError};

export type SetupIntentResult =
  | {setupIntent: api.SetupIntent; error?: undefined}
  | {setupIntent?: undefined; error: StripeError};

export type PaymentMethodResult =
  | {paymentMethod: api.PaymentMethod; error?: undefined}
  | {paymentMethod?: undefined; error: StripeError};

export type SourceResult =
  | {source: api.Source; error?: undefined}
  | {source?: undefined; error: StripeError};

export type TokenResult =
  | {token: api.Token; error?: undefined}
  | {token?: undefined; error: StripeError};

export type VerificationSessionResult =
  | {verificationSession: api.VerificationSession; error?: undefined}
  | {verificationSession?: undefined; error: StripeError};

export interface WrapperLibrary {
  /**
   * Your library’s name, maximum length is 30
   */
  name: string;

  /**
   * Required for Stripe Verified Partners, optional otherwise
   * Your Partner ID from the Partners section of the Dashboard
   */
  partner_id?: string;

  /**
   * Your library's version, in the format of x.x.x
   */
  version?: string;

  /**
   * The URL for your library's website with your contact details
   */
  url?: string;
}

export type StripeErrorType =
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

export interface StripeError {
  /**
   * The type of error.
   */
  type: StripeErrorType;

  /**
   * For card errors, the ID of the failed charge
   */
  charge?: string;

  /**
   * For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
   */
  code?: string;

  /**
   * For card errors resulting from a card issuer decline, a short string indicating the [card issuer’s reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
   */
  decline_code?: string;

  /**
   * A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
   */
  doc_url?: string;

  /**
   * A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
   */
  message?: string;

  /**
   * If the error is parameter-specific, the parameter related to the error.
   * For example, you can use this to display a message near the correct form field.
   */
  param?: string;

  /**
   * The `PaymentIntent` object for errors returned on a request involving a `PaymentIntent`.
   */
  payment_intent?: api.PaymentIntent;

  /**
   * The `PaymentMethod` object for errors returned on a request involving a `PaymentMethod`.
   */
  payment_method?: api.PaymentMethod;

  /**
   * The `SetupIntent` object for errors returned on a request involving a `SetupIntent`.
   */
  setup_intent?: api.SetupIntent;

  /**
   * The `Source` object for errors returned on a request involving a `Source`.
   */
  source?: api.Source;
}