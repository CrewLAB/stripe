// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  city: json['city'] as String?,
  country: json['country'] as String?,
  line1: json['line1'] as String?,
  line2: json['line2'] as String?,
  postalCode: json['postal_code'] as String?,
  state: json['state'] as String?,
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'city': ?instance.city,
  'country': ?instance.country,
  'line1': ?instance.line1,
  'line2': ?instance.line2,
  'postal_code': ?instance.postalCode,
  'state': ?instance.state,
};

BalanceTransaction _$BalanceTransactionFromJson(Map<String, dynamic> json) =>
    BalanceTransaction(
      object: $enumDecode(_$_BalanceTransactionObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      fee: (json['fee'] as num).toInt(),
      feeDetails: (json['fee_details'] as List<dynamic>)
          .map((e) => FeeDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      net: (json['net'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$BalanceTransactionToJson(BalanceTransaction instance) =>
    <String, dynamic>{
      'object': _$_BalanceTransactionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'fee': instance.fee,
      'fee_details': instance.feeDetails.map((e) => e.toJson()).toList(),
      'net': instance.net,
      'currency': instance.currency,
    };

const _$_BalanceTransactionObjectEnumMap = {
  _BalanceTransactionObject.balance_transaction: 'balance_transaction',
};

FeeDetails _$FeeDetailsFromJson(Map<String, dynamic> json) => FeeDetails(
  amount: (json['amount'] as num).toInt(),
  application: json['application'] as String?,
  currency: json['currency'] as String,
  description: json['description'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$FeeDetailsToJson(FeeDetails instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'application': ?instance.application,
      'currency': instance.currency,
      'description': instance.description,
      'type': instance.type,
    };

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
  object: $enumDecode(_$_ChargeObjectEnumMap, json['object']),
  id: json['id'] as String,
  balanceTransaction: json['balance_transaction'] as String,
  paymentMethodDetails: PaymentMethodDetails.fromJson(
    json['payment_method_details'] as Map<String, dynamic>,
  ),
  livemode: json['livemode'] as bool,
);

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
  'object': _$_ChargeObjectEnumMap[instance.object]!,
  'id': instance.id,
  'balance_transaction': instance.balanceTransaction,
  'payment_method_details': instance.paymentMethodDetails.toJson(),
  'livemode': instance.livemode,
};

const _$_ChargeObjectEnumMap = {_ChargeObject.charge: 'charge'};

PaymentMethodDetails _$PaymentMethodDetailsFromJson(
  Map<String, dynamic> json,
) => PaymentMethodDetails(
  card: json['card'] == null
      ? null
      : PaymentMethodDetailsCard.fromJson(json['card'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentMethodDetailsToJson(
  PaymentMethodDetails instance,
) => <String, dynamic>{'card': ?instance.card?.toJson()};

PaymentMethodDetailsCard _$PaymentMethodDetailsCardFromJson(
  Map<String, dynamic> json,
) => PaymentMethodDetailsCard(
  brand: json['brand'] as String,
  last4: json['last4'] as String,
);

Map<String, dynamic> _$PaymentMethodDetailsCardToJson(
  PaymentMethodDetailsCard instance,
) => <String, dynamic>{'brand': instance.brand, 'last4': instance.last4};

CheckoutSession _$CheckoutSessionFromJson(Map<String, dynamic> json) =>
    CheckoutSession(
      object: json['object'] as String,
      id: json['id'] as String,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toList(),
      clientReferenceId: json['client_reference_id'] as String?,
      customer: json['customer'] as String?,
      paymentIntent: json['payment_intent'] as String?,
    );

Map<String, dynamic> _$CheckoutSessionToJson(CheckoutSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'client_reference_id': ?instance.clientReferenceId,
      'customer': ?instance.customer,
      'payment_intent': ?instance.paymentIntent,
      'payment_method_types': instance.paymentMethodTypes
          .map((e) => _$PaymentMethodTypeEnumMap[e]!)
          .toList(),
    };

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.acss_debit: 'acss_debit',
  PaymentMethodType.affirm: 'affirm',
  PaymentMethodType.afterpay_clearpay: 'afterpay_clearpay',
  PaymentMethodType.alipay: 'alipay',
  PaymentMethodType.au_becs_debit: 'au_becs_debit',
  PaymentMethodType.bacs_debit: 'bacs_debit',
  PaymentMethodType.bancontact: 'bancontact',
  PaymentMethodType.blik: 'blik',
  PaymentMethodType.boleto: 'boleto',
  PaymentMethodType.card: 'card',
  PaymentMethodType.cashapp: 'cashapp',
  PaymentMethodType.customer_balance: 'customer_balance',
  PaymentMethodType.eps: 'eps',
  PaymentMethodType.fpx: 'fpx',
  PaymentMethodType.giropay: 'giropay',
  PaymentMethodType.grabpay: 'grabpay',
  PaymentMethodType.ideal: 'ideal',
  PaymentMethodType.klarna: 'klarna',
  PaymentMethodType.konbini: 'konbini',
  PaymentMethodType.link: 'link',
  PaymentMethodType.oxxo: 'oxxo',
  PaymentMethodType.p24: 'p24',
  PaymentMethodType.paynow: 'paynow',
  PaymentMethodType.pix: 'pix',
  PaymentMethodType.promptpay: 'promptpay',
  PaymentMethodType.sepa_debit: 'sepa_debit',
  PaymentMethodType.sofort: 'sofort',
  PaymentMethodType.us_bank_account: 'us_bank_account',
  PaymentMethodType.wechat_pay: 'wechat_pay',
};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
  object: $enumDecode(_$_CustomerObjectEnumMap, json['object']),
  id: json['id'] as String,
  description: json['description'] as String?,
  email: json['email'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
  'object': _$_CustomerObjectEnumMap[instance.object]!,
  'id': instance.id,
  'description': ?instance.description,
  'email': ?instance.email,
  'metadata': ?instance.metadata,
  'name': ?instance.name,
};

const _$_CustomerObjectEnumMap = {_CustomerObject.customer: 'customer'};

DataList<T> _$DataListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => DataList<T>(
  object: $enumDecode(_$_SubListObjectEnumMap, json['object']),
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  hasMore: json['has_more'] as bool,
  url: json['url'] as String,
);

Map<String, dynamic> _$DataListToJson<T>(
  DataList<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'object': _$_SubListObjectEnumMap[instance.object]!,
  'data': instance.data.map(toJsonT).toList(),
  'has_more': instance.hasMore,
  'url': instance.url,
};

const _$_SubListObjectEnumMap = {_SubListObject.list: 'list'};

EventData<T> _$EventDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => EventData<T>(object: fromJsonT(json['object']));

Map<String, dynamic> _$EventDataToJson<T>(
  EventData<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'object': toJsonT(instance.object)};

SubscriptionEvent _$SubscriptionEventFromJson(Map<String, dynamic> json) =>
    SubscriptionEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Subscription>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => Subscription.fromJson(value as Map<String, dynamic>),
      ),
    );

Map<String, dynamic> _$SubscriptionEventToJson(SubscriptionEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
    };

const _$_EventObjectEnumMap = {_EventObject.event: 'event'};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<Customer>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => Customer.fromJson(value as Map<String, dynamic>),
      ),
    );

Map<String, dynamic> _$CustomerEventToJson(CustomerEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: json['type'] as String,
  data: EventData<Charge>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => Charge.fromJson(value as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$ChargeEventToJson(ChargeEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: json['type'] as String,
      data: EventData<PaymentIntent>.fromJson(
        json['data'] as Map<String, dynamic>,
        (value) => PaymentIntent.fromJson(value as Map<String, dynamic>),
      ),
    );

Map<String, dynamic> _$PaymentIntentEventToJson(PaymentIntentEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: json['type'] as String,
  data: EventData<Refund>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => Refund.fromJson(value as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$RefundEventToJson(RefundEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': instance.type,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
  Map<String, dynamic> json,
) => CheckoutSessionEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: json['type'] as String,
  data: EventData<CheckoutSession>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => CheckoutSession.fromJson(value as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$CheckoutSessionEventToJson(
  CheckoutSessionEvent instance,
) => <String, dynamic>{
  'object': _$_EventObjectEnumMap[instance.object]!,
  'id': instance.id,
  'data': instance.data.toJson((value) => value.toJson()),
  'type': instance.type,
};

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) =>
    PaymentIntent(
      object: $enumDecode(_$_PaymentIntentObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      amountReceived: (json['amount_received'] as num).toInt(),
      clientSecret: json['client_secret'] as String,
      currency: json['currency'] as String,
      status: json['status'] as String,
      automaticPaymentMethods: json['automatic_payment_methods'] == null
          ? const AutomaticPaymentMethods()
          : AutomaticPaymentMethods.fromJson(
              json['automatic_payment_methods'] as Map<String, dynamic>,
            ),
      canceledAt: _$JsonConverterFromJson<int, DateTime>(
        json['canceled_at'],
        const TimestampConverter().fromJson,
      ),
      created: _$JsonConverterFromJson<int, DateTime>(
        json['created'],
        const TimestampConverter().fromJson,
      ),
      customer: json['customer'] as String?,
      description: json['description'] as String?,
      latestCharge: json['latest_charge'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
          .toSet(),
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
        _$SetupFutureUsageEnumMap,
        json['setup_future_usage'],
      ),
      shipping: json['shipping'] == null
          ? null
          : ShippingSpecification.fromJson(
              json['shipping'] as Map<String, dynamic>,
            ),
      statementDescriptor: json['statement_descriptor'] as String?,
      statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    );

Map<String, dynamic> _$PaymentIntentToJson(
  PaymentIntent instance,
) => <String, dynamic>{
  'object': _$_PaymentIntentObjectEnumMap[instance.object]!,
  'id': instance.id,
  'amount': instance.amount,
  'amount_received': instance.amountReceived,
  'automatic_payment_methods': instance.automaticPaymentMethods.toJson(),
  'client_secret': instance.clientSecret,
  'currency': instance.currency,
  'status': instance.status,
  'canceled_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.canceledAt,
    const TimestampConverter().toJson,
  ),
  'created': ?_$JsonConverterToJson<int, DateTime>(
    instance.created,
    const TimestampConverter().toJson,
  ),
  'customer': ?instance.customer,
  'description': ?instance.description,
  'latest_charge': ?instance.latestCharge,
  'metadata': ?instance.metadata,
  'payment_method': ?instance.paymentMethod,
  'payment_method_types': ?instance.paymentMethodTypes
      ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
  'shipping': ?instance.shipping?.toJson(),
  'statement_descriptor': ?instance.statementDescriptor,
  'statement_descriptor_suffix': ?instance.statementDescriptorSuffix,
};

const _$_PaymentIntentObjectEnumMap = {
  _PaymentIntentObject.payment_intent: 'payment_intent',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

AutomaticPaymentMethods _$AutomaticPaymentMethodsFromJson(
  Map<String, dynamic> json,
) => AutomaticPaymentMethods(enabled: json['enabled'] as bool? ?? false);

Map<String, dynamic> _$AutomaticPaymentMethodsToJson(
  AutomaticPaymentMethods instance,
) => <String, dynamic>{'enabled': instance.enabled};

PortalSession _$PortalSessionFromJson(Map<String, dynamic> json) =>
    PortalSession(
      object: json['object'] as String,
      id: json['id'] as String,
      customer: json['customer'] as String,
      livemode: json['livemode'] as bool,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PortalSessionToJson(PortalSession instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'customer': instance.customer,
      'livemode': instance.livemode,
      'url': instance.url,
    };

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
  object: $enumDecode(_$_PriceObjectEnumMap, json['object']),
  id: json['id'] as String,
  active: json['active'] as bool,
  currency: json['currency'] as String,
  product: json['product'] as String,
  type: $enumDecode(_$PriceTypeEnumMap, json['type']),
  unitAmount: (json['unit_amount'] as num).toInt(),
);

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
  'object': _$_PriceObjectEnumMap[instance.object]!,
  'id': instance.id,
  'active': instance.active,
  'currency': instance.currency,
  'product': instance.product,
  'type': _$PriceTypeEnumMap[instance.type]!,
  'unit_amount': instance.unitAmount,
};

const _$_PriceObjectEnumMap = {_PriceObject.price: 'price'};

const _$PriceTypeEnumMap = {
  PriceType.one_time: 'one_time',
  PriceType.recurring: 'recurring',
};

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  object: $enumDecode(_$_ProductObjectEnumMap, json['object']),
  id: json['id'] as String,
  active: json['active'] as bool,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  name: json['name'] as String,
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'object': _$_ProductObjectEnumMap[instance.object]!,
  'id': instance.id,
  'active': instance.active,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
  'name': instance.name,
};

const _$_ProductObjectEnumMap = {_ProductObject.product: 'product'};

Refund _$RefundFromJson(Map<String, dynamic> json) => Refund(
  object: $enumDecode(_$_RefundObjectEnumMap, json['object']),
  id: json['id'] as String,
);

Map<String, dynamic> _$RefundToJson(Refund instance) => <String, dynamic>{
  'object': _$_RefundObjectEnumMap[instance.object]!,
  'id': instance.id,
};

const _$_RefundObjectEnumMap = {_RefundObject.refund: 'refund'};

ShippingSpecification _$ShippingSpecificationFromJson(
  Map<String, dynamic> json,
) => ShippingSpecification(
  address: Address.fromJson(json['address'] as Map<String, dynamic>),
  name: json['name'] as String,
  carrier: json['carrier'] as String?,
  phone: json['phone'] as String?,
  trackingNumber: json['tracking_number'] as String?,
);

Map<String, dynamic> _$ShippingSpecificationToJson(
  ShippingSpecification instance,
) => <String, dynamic>{
  'address': instance.address.toJson(),
  'name': instance.name,
  'carrier': ?instance.carrier,
  'phone': ?instance.phone,
  'tracking_number': ?instance.trackingNumber,
};

CreateCheckoutSessionRequest _$CreateCheckoutSessionRequestFromJson(
  Map<String, dynamic> json,
) => CreateCheckoutSessionRequest(
  successUrl: json['success_url'] as String,
  cancelUrl: json['cancel_url'] as String,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
      .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
      .toList(),
  mode: $enumDecodeNullable(_$SessionModeEnumMap, json['mode']),
  clientReferenceId: json['client_reference_id'] as String?,
  customerEmail: json['customer_email'] as String?,
  customer: json['customer'] as String?,
  lineItems: (json['line_items'] as List<dynamic>?)
      ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  billingAddressCollection: $enumDecodeNullable(
    _$BillingAddressCollectionEnumMap,
    json['billing_address_collection'],
  ),
  automaticTax: json['automatic_tax'] == null
      ? null
      : AutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>),
  taxIdCollection: json['tax_id_collection'] == null
      ? null
      : TaxIdCollection.fromJson(
          json['tax_id_collection'] as Map<String, dynamic>,
        ),
  paymentIntentData: json['payment_intent_data'] == null
      ? null
      : PaymentIntentData.fromJson(
          json['payment_intent_data'] as Map<String, dynamic>,
        ),
  subscriptionData: json['subscription_data'] == null
      ? null
      : SubscriptionData.fromJson(
          json['subscription_data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CreateCheckoutSessionRequestToJson(
  CreateCheckoutSessionRequest instance,
) => <String, dynamic>{
  'success_url': instance.successUrl,
  'cancel_url': instance.cancelUrl,
  'mode': ?_$SessionModeEnumMap[instance.mode],
  'payment_method_types': instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'client_reference_id': ?instance.clientReferenceId,
  'customer_email': ?instance.customerEmail,
  'customer': ?instance.customer,
  'line_items': ?instance.lineItems?.map((e) => e.toJson()).toList(),
  'billing_address_collection':
      ?_$BillingAddressCollectionEnumMap[instance.billingAddressCollection],
  'automatic_tax': ?instance.automaticTax?.toJson(),
  'tax_id_collection': ?instance.taxIdCollection?.toJson(),
  'payment_intent_data': ?instance.paymentIntentData?.toJson(),
  'subscription_data': ?instance.subscriptionData?.toJson(),
};

const _$SessionModeEnumMap = {
  SessionMode.payment: 'payment',
  SessionMode.setup: 'setup',
  SessionMode.subscription: 'subscription',
};

const _$BillingAddressCollectionEnumMap = {
  BillingAddressCollection.auto: 'auto',
  BillingAddressCollection.required: 'required',
};

LineItem _$LineItemFromJson(Map<String, dynamic> json) => LineItem(
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  quantity: (json['quantity'] as num?)?.toInt(),
  description: json['description'] as String?,
  price: json['price'] as String?,
  priceData: json['price_data'] == null
      ? null
      : PriceData.fromJson(json['price_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LineItemToJson(LineItem instance) => <String, dynamic>{
  'images': ?instance.images,
  'quantity': ?instance.quantity,
  'description': ?instance.description,
  'price_data': ?instance.priceData?.toJson(),
  'price': ?instance.price,
};

PriceData _$PriceDataFromJson(Map<String, dynamic> json) => PriceData(
  currency: json['currency'] as String,
  product: json['product'] as String?,
  unitAmount: (json['unit_amount'] as num?)?.toInt(),
  productData: json['product_data'] == null
      ? null
      : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PriceDataToJson(PriceData instance) => <String, dynamic>{
  'currency': instance.currency,
  'product': ?instance.product,
  'unit_amount': ?instance.unitAmount,
  'product_data': ?instance.productData?.toJson(),
};

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
  name: json['name'] as String,
  description: json['description'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': ?instance.description,
      'images': ?instance.images,
    };

AutomaticTax _$AutomaticTaxFromJson(Map<String, dynamic> json) =>
    AutomaticTax(enabled: json['enabled'] as bool);

Map<String, dynamic> _$AutomaticTaxToJson(AutomaticTax instance) =>
    <String, dynamic>{'enabled': instance.enabled};

TaxIdCollection _$TaxIdCollectionFromJson(Map<String, dynamic> json) =>
    TaxIdCollection(enabled: json['enabled'] as bool);

Map<String, dynamic> _$TaxIdCollectionToJson(TaxIdCollection instance) =>
    <String, dynamic>{'enabled': instance.enabled};

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
        _$SetupFutureUsageEnumMap,
        json['setup_future_usage'],
      ),
      applicationFeeAmount: (json['application_fee_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaymentIntentDataToJson(
  PaymentIntentData instance,
) => <String, dynamic>{
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
  'application_fee_amount': ?instance.applicationFeeAmount,
};

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) =>
    SubscriptionData(
      trialEnd: (json['trial_end'] as num?)?.toInt(),
      trialPeriodDays: (json['trial_period_days'] as num?)?.toInt(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      applicationFeePercent: (json['application_fee_percent'] as num?)
          ?.toDouble(),
    );

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) =>
    <String, dynamic>{
      'trial_end': ?instance.trialEnd,
      'trial_period_days': ?instance.trialPeriodDays,
      'metadata': ?instance.metadata,
      'application_fee_percent': ?instance.applicationFeePercent,
    };

CreateCustomerRequest _$CreateCustomerRequestFromJson(
  Map<String, dynamic> json,
) => CreateCustomerRequest(
  description: json['description'] as String?,
  email: json['email'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  name: json['name'] as String?,
  paymentMethod: json['payment_method'] as String?,
  phoneNumber: json['phone_number'] as String?,
);

Map<String, dynamic> _$CreateCustomerRequestToJson(
  CreateCustomerRequest instance,
) => <String, dynamic>{
  'description': ?instance.description,
  'email': ?instance.email,
  'metadata': ?instance.metadata,
  'name': ?instance.name,
  'payment_method': ?instance.paymentMethod,
  'phone_number': ?instance.phoneNumber,
};

CreatePaymentIntentRequest _$CreatePaymentIntentRequestFromJson(
  Map<String, dynamic> json,
) => CreatePaymentIntentRequest(
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  automaticPaymentMethods: json['automatic_payment_methods'] == null
      ? null
      : AutomaticPaymentMethods.fromJson(
          json['automatic_payment_methods'] as Map<String, dynamic>,
        ),
  confirm: json['confirm'] as bool?,
  customer: json['customer'] as String?,
  description: json['description'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  offSession: json['off_session'] as bool?,
  paymentMethod: json['payment_method'] as String?,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
      .toSet(),
  receiptEmail: json['receipt_email'] as String?,
  setupFutureUsage: $enumDecodeNullable(
    _$SetupFutureUsageEnumMap,
    json['setup_future_usage'],
  ),
  shipping: json['shipping'] == null
      ? null
      : ShippingSpecification.fromJson(
          json['shipping'] as Map<String, dynamic>,
        ),
  statementDescriptor: json['statement_descriptor'] as String?,
  statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
);

Map<String, dynamic> _$CreatePaymentIntentRequestToJson(
  CreatePaymentIntentRequest instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'automatic_payment_methods': ?instance.automaticPaymentMethods?.toJson(),
  'currency': instance.currency,
  'confirm': ?instance.confirm,
  'customer': ?instance.customer,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
  'off_session': ?instance.offSession,
  'payment_method': ?instance.paymentMethod,
  'payment_method_types': ?instance.paymentMethodTypes
      ?.map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
  'shipping': ?instance.shipping?.toJson(),
  'statement_descriptor': ?instance.statementDescriptor,
  'statement_descriptor_suffix': ?instance.statementDescriptorSuffix,
};

CreatePortalSessionRequest _$CreatePortalSessionRequestFromJson(
  Map<String, dynamic> json,
) => CreatePortalSessionRequest(
  customer: json['customer'] as String,
  returnUrl: json['return_url'] as String?,
);

Map<String, dynamic> _$CreatePortalSessionRequestToJson(
  CreatePortalSessionRequest instance,
) => <String, dynamic>{
  'customer': instance.customer,
  'return_url': ?instance.returnUrl,
};

CreateProductRequest _$CreateProductRequestFromJson(
  Map<String, dynamic> json,
) => CreateProductRequest(
  name: json['name'] as String?,
  active: json['active'] as bool?,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$CreateProductRequestToJson(
  CreateProductRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'active': ?instance.active,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
};

CreatePriceRequest _$CreatePriceRequestFromJson(Map<String, dynamic> json) =>
    CreatePriceRequest(
      product: json['product'] as String,
      unitAmount: (json['unit_amount'] as num).toInt(),
      currency: json['currency'] as String,
      recurring: PriceRecurring.fromJson(
        json['recurring'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CreatePriceRequestToJson(CreatePriceRequest instance) =>
    <String, dynamic>{
      'product': instance.product,
      'unit_amount': instance.unitAmount,
      'currency': instance.currency,
      'recurring': instance.recurring.toJson(),
    };

PriceRecurring _$PriceRecurringFromJson(Map<String, dynamic> json) =>
    PriceRecurring(
      interval: $enumDecode(_$RecurringIntervalEnumMap, json['interval']),
      intervalCount: (json['interval_count'] as num).toInt(),
    );

Map<String, dynamic> _$PriceRecurringToJson(PriceRecurring instance) =>
    <String, dynamic>{
      'interval': _$RecurringIntervalEnumMap[instance.interval]!,
      'interval_count': instance.intervalCount,
    };

const _$RecurringIntervalEnumMap = {
  RecurringInterval.day: 'day',
  RecurringInterval.week: 'week',
  RecurringInterval.month: 'month',
  RecurringInterval.year: 'year',
};

CreateRefundRequest _$CreateRefundRequestFromJson(Map<String, dynamic> json) =>
    CreateRefundRequest(
      charge: json['charge'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      paymentIntent: json['payment_intent'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$CreateRefundRequestToJson(
  CreateRefundRequest instance,
) => <String, dynamic>{
  'charge': ?instance.charge,
  'amount': ?instance.amount,
  'payment_intent': ?instance.paymentIntent,
  'reason': ?instance.reason,
};

ListPricesRequest _$ListPricesRequestFromJson(Map<String, dynamic> json) =>
    ListPricesRequest(
      active: json['active'] as bool?,
      currency: json['currency'] as String?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$ListPricesRequestToJson(ListPricesRequest instance) =>
    <String, dynamic>{
      'active': ?instance.active,
      'currency': ?instance.currency,
      'product': ?instance.product,
    };

ListProductsRequest _$ListProductsRequestFromJson(Map<String, dynamic> json) =>
    ListProductsRequest(active: json['active'] as bool?);

Map<String, dynamic> _$ListProductsRequestToJson(
  ListProductsRequest instance,
) => <String, dynamic>{'active': ?instance.active};

ListSubscriptionsRequest _$ListSubscriptionsRequestFromJson(
  Map<String, dynamic> json,
) => ListSubscriptionsRequest(
  customer: json['customer'] as String?,
  price: json['price'] as String?,
  status: $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']),
);

Map<String, dynamic> _$ListSubscriptionsRequestToJson(
  ListSubscriptionsRequest instance,
) => <String, dynamic>{
  'customer': ?instance.customer,
  'price': ?instance.price,
  'status': ?_$SubscriptionStatusEnumMap[instance.status],
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.incomplete: 'incomplete',
  SubscriptionStatus.incomplete_expired: 'incomplete_expired',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.past_due: 'past_due',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.unpaid: 'unpaid',
  SubscriptionStatus.all: 'all',
  SubscriptionStatus.ended: 'ended',
};

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
  Map<String, dynamic> json,
) => UpdateCustomerRequest(
  id: json['id'] as String,
  description: json['description'] as String?,
  email: json['email'] as String?,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  name: json['name'] as String?,
  paymentMethod: json['payment_method'] as String?,
  phoneNumber: json['phone_number'] as String?,
);

Map<String, dynamic> _$UpdateCustomerRequestToJson(
  UpdateCustomerRequest instance,
) => <String, dynamic>{
  'description': ?instance.description,
  'email': ?instance.email,
  'metadata': ?instance.metadata,
  'name': ?instance.name,
  'payment_method': ?instance.paymentMethod,
  'phone_number': ?instance.phoneNumber,
  'id': instance.id,
};

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
  object: $enumDecode(_$_SubscriptionObjectEnumMap, json['object']),
  id: json['id'] as String,
  created: (json['created'] as num).toInt(),
  customer: json['customer'] as String,
  status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
  items: DataList<SubscriptionItem>.fromJson(
    json['items'] as Map<String, dynamic>,
    (value) => SubscriptionItem.fromJson(value as Map<String, dynamic>),
  ),
  currentPeriodStart: const TimestampConverter().fromJson(
    (json['current_period_start'] as num).toInt(),
  ),
  currentPeriodEnd: const TimestampConverter().fromJson(
    (json['current_period_end'] as num).toInt(),
  ),
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionObjectEnumMap[instance.object]!,
      'id': instance.id,
      'created': instance.created,
      'customer': instance.customer,
      'current_period_start': const TimestampConverter().toJson(
        instance.currentPeriodStart,
      ),
      'current_period_end': const TimestampConverter().toJson(
        instance.currentPeriodEnd,
      ),
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'items': instance.items.toJson((value) => value.toJson()),
      'metadata': ?instance.metadata,
    };

const _$_SubscriptionObjectEnumMap = {
  _SubscriptionObject.subscription: 'subscription',
};

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) =>
    SubscriptionItem(
      object: $enumDecode(_$_SubscriptionItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      price: Price.fromJson(json['price'] as Map<String, dynamic>),
      subscription: json['subscription'] as String,
    );

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) =>
    <String, dynamic>{
      'object': _$_SubscriptionItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'price': instance.price.toJson(),
      'subscription': instance.subscription,
    };

const _$_SubscriptionItemObjectEnumMap = {
  _SubscriptionItemObject.subscription_item: 'subscription_item',
};
