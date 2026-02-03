part of '../../messages.dart';

enum _InvoiceObject { invoice }

/// The status of the invoice
enum InvoiceStatus {
  draft,
  open,
  paid,
  uncollectible,
  void_,
}

/// Indicates the reason why the invoice was created
enum InvoiceBillingReason {
  // ignore: constant_identifier_names
  automatic_pending_invoice_item_invoice,
  manual,
  // ignore: constant_identifier_names
  quote_accept,
  subscription,
  // ignore: constant_identifier_names
  subscription_create,
  // ignore: constant_identifier_names
  subscription_cycle,
  // ignore: constant_identifier_names
  subscription_threshold,
  // ignore: constant_identifier_names
  subscription_update,
  upcoming,
}

/// Collection method for the invoice
enum InvoiceCollectionMethod {
  // ignore: constant_identifier_names
  charge_automatically,
  // ignore: constant_identifier_names
  send_invoice,
}

/// Customer tax exempt status
enum CustomerTaxExempt {
  exempt,
  none,
  reverse,
}

/// Automatic tax status
enum AutomaticTaxStatus {
  complete,
  failed,
  // ignore: constant_identifier_names
  requires_location_inputs,
}

/// Automatic tax disabled reason
enum AutomaticTaxDisabledReason {
  // ignore: constant_identifier_names
  finalization_requires_location_inputs,
  // ignore: constant_identifier_names
  finalization_system_error,
}

/// Issuer type
enum IssuerType {
  account,
  self,
}

/// https://stripe.com/docs/api/invoices/object#invoice_object-automatic_tax
@JsonSerializable()
class InvoiceAutomaticTax {
  /// Whether Stripe automatically computes tax on this invoice.
  final bool enabled;

  /// The account that's liable for tax.
  final InvoiceTaxLiability? liability;

  /// The tax provider powering automatic tax.
  final String? provider;

  /// The status of the most recent automated tax calculation for this invoice.
  final AutomaticTaxStatus? status;

  /// If Stripe disabled automatic tax, this enum describes why.
  @JsonKey(name: 'disabled_reason')
  final AutomaticTaxDisabledReason? disabledReason;

  InvoiceAutomaticTax({
    required this.enabled,
    this.liability,
    this.provider,
    this.status,
    this.disabledReason,
  });

  factory InvoiceAutomaticTax.fromJson(Map<String, dynamic> json) =>
      _$InvoiceAutomaticTaxFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceAutomaticTaxToJson(this);
}

/// Tax liability information
@JsonSerializable()
class InvoiceTaxLiability {
  /// The connected account being referenced when type is account.
  final String? account;

  /// Type of the account referenced.
  final IssuerType type;

  InvoiceTaxLiability({
    this.account,
    required this.type,
  });

  factory InvoiceTaxLiability.fromJson(Map<String, dynamic> json) =>
      _$InvoiceTaxLiabilityFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceTaxLiabilityToJson(this);
}

/// https://stripe.com/docs/api/invoices/object#invoice_object-status_transitions
@JsonSerializable()
class InvoiceStatusTransitions {
  /// The time that the invoice draft was finalized.
  @JsonKey(name: 'finalized_at')
  @TimestampConverter()
  final DateTime? finalizedAt;

  /// The time that the invoice was marked uncollectible.
  @JsonKey(name: 'marked_uncollectible_at')
  @TimestampConverter()
  final DateTime? markedUncollectibleAt;

  /// The time that the invoice was paid.
  @JsonKey(name: 'paid_at')
  @TimestampConverter()
  final DateTime? paidAt;

  /// The time that the invoice was voided.
  @JsonKey(name: 'voided_at')
  @TimestampConverter()
  final DateTime? voidedAt;

  InvoiceStatusTransitions({
    this.finalizedAt,
    this.markedUncollectibleAt,
    this.paidAt,
    this.voidedAt,
  });

  factory InvoiceStatusTransitions.fromJson(Map<String, dynamic> json) =>
      _$InvoiceStatusTransitionsFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceStatusTransitionsToJson(this);
}

/// Issuer information for the invoice
@JsonSerializable()
class InvoiceIssuer {
  /// The connected account being referenced when type is account.
  final String? account;

  /// Type of the account referenced.
  final IssuerType type;

  InvoiceIssuer({
    this.account,
    required this.type,
  });

  factory InvoiceIssuer.fromJson(Map<String, dynamic> json) =>
      _$InvoiceIssuerFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceIssuerToJson(this);
}

/// Customer shipping information
@JsonSerializable()
class InvoiceCustomerShipping {
  /// Customer shipping address.
  final Address? address;

  /// Customer name.
  final String name;

  /// Customer phone (including extension).
  final String? phone;

  InvoiceCustomerShipping({
    this.address,
    required this.name,
    this.phone,
  });

  factory InvoiceCustomerShipping.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCustomerShippingFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceCustomerShippingToJson(this);
}

/// The period for an invoice line item
@JsonSerializable()
class InvoiceLineItemPeriod {
  /// The end of the period, which must be greater than or equal to the start.
  @TimestampConverter()
  final DateTime end;

  /// The start of the period.
  @TimestampConverter()
  final DateTime start;

  InvoiceLineItemPeriod({
    required this.end,
    required this.start,
  });

  factory InvoiceLineItemPeriod.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceLineItemPeriodToJson(this);
}

/// Pricing information for an invoice line item
@JsonSerializable()
class InvoiceLineItemPricing {
  /// The ID of the price this item is associated with.
  final String? price;

  /// The ID of the product this item is associated with.
  final String? product;

  /// The type of the pricing details.
  final String? type;

  /// The unit amount in decimal format.
  @JsonKey(name: 'unit_amount_decimal')
  final String? unitAmountDecimal;

  InvoiceLineItemPricing({
    this.price,
    this.product,
    this.type,
    this.unitAmountDecimal,
  });

  factory InvoiceLineItemPricing.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemPricingFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceLineItemPricingToJson(this);
}

/// Pricing details for the line item when type is price_details
@JsonSerializable()
class InvoiceLineItemPriceDetails {
  /// The ID of the price this item is associated with.
  final String price;

  /// The ID of the product this item is associated with.
  final String product;

  InvoiceLineItemPriceDetails({
    required this.price,
    required this.product,
  });

  factory InvoiceLineItemPriceDetails.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemPriceDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceLineItemPriceDetailsToJson(this);
}

// ignore: constant_identifier_names
enum _InvoiceLineItemObject { line_item }

/// https://stripe.com/docs/api/invoices/line_item
@JsonSerializable()
class InvoiceLineItem {
  final _InvoiceLineItemObject object;

  /// Unique identifier for the object.
  final String id;

  /// The amount, in cents.
  final int amount;

  /// Three-letter ISO currency code, in lowercase.
  final String currency;

  /// An arbitrary string attached to the object.
  final String? description;

  /// If true, discounts will apply to this line item.
  final bool discountable;

  /// The ID of the invoice that contains this line item.
  final String? invoice;

  /// Has the value true if the object exists in live mode.
  final bool livemode;

  /// Set of key-value pairs for storing additional information.
  final Map<String, dynamic>? metadata;

  /// The period this line_item covers.
  final InvoiceLineItemPeriod period;

  /// The price object associated with this line item.
  final Price? price;

  /// The pricing information of the line item.
  final InvoiceLineItemPricing? pricing;

  /// The quantity of the subscription, if applicable.
  final int? quantity;

  /// The subtotal of the line item before any discounts or taxes.
  final int subtotal;

  InvoiceLineItem({
    required this.object,
    required this.id,
    required this.amount,
    required this.currency,
    this.description,
    required this.discountable,
    this.invoice,
    required this.livemode,
    this.metadata,
    required this.period,
    this.price,
    this.pricing,
    this.quantity,
    required this.subtotal,
  });

  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceLineItemToJson(this);
}

/// Custom fields displayed on the invoice
@JsonSerializable()
class InvoiceCustomField {
  /// The name of the custom field.
  final String name;

  /// The value of the custom field.
  final String value;

  InvoiceCustomField({
    required this.name,
    required this.value,
  });

  factory InvoiceCustomField.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCustomFieldFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceCustomFieldToJson(this);
}

/// Payment settings for the invoice
@JsonSerializable()
class InvoicePaymentSettings {
  /// ID of the mandate to be used for this invoice.
  @JsonKey(name: 'default_mandate')
  final String? defaultMandate;

  /// Payment-method-specific configuration.
  @JsonKey(name: 'payment_method_options')
  final Map<String, dynamic>? paymentMethodOptions;

  /// The list of payment method types to provide to the invoice's PaymentIntent.
  @JsonKey(name: 'payment_method_types')
  final List<String>? paymentMethodTypes;

  InvoicePaymentSettings({
    this.defaultMandate,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
  });

  factory InvoicePaymentSettings.fromJson(Map<String, dynamic> json) =>
      _$InvoicePaymentSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$InvoicePaymentSettingsToJson(this);
}

/// https://stripe.com/docs/api/invoices/object
@JsonSerializable()
class Invoice extends Message {
  final _InvoiceObject object;

  /// Unique identifier for the object.
  final String id;

  /// The country of the business associated with this invoice.
  @JsonKey(name: 'account_country')
  final String? accountCountry;

  /// The public name of the business associated with this invoice.
  @JsonKey(name: 'account_name')
  final String? accountName;

  /// The account tax IDs associated with the invoice.
  @JsonKey(name: 'account_tax_ids')
  final List<String>? accountTaxIds;

  /// Final amount due at this time for this invoice.
  @JsonKey(name: 'amount_due')
  final int amountDue;

  /// Amount that was overpaid on the invoice.
  @JsonKey(name: 'amount_overpaid')
  final int amountOverpaid;

  /// The amount, in cents, that was paid.
  @JsonKey(name: 'amount_paid')
  final int amountPaid;

  /// The difference between amount_due and amount_paid, in cents.
  @JsonKey(name: 'amount_remaining')
  final int amountRemaining;

  /// This is the sum of all the shipping amounts.
  @JsonKey(name: 'amount_shipping')
  final int amountShipping;

  /// ID of the Connect Application that created the invoice.
  final String? application;

  /// Number of payment attempts made for this invoice.
  @JsonKey(name: 'attempt_count')
  final int attemptCount;

  /// Whether an attempt has been made to pay the invoice.
  final bool attempted;

  /// Controls whether Stripe performs automatic collection of the invoice.
  @JsonKey(name: 'auto_advance')
  final bool autoAdvance;

  /// Settings and latest results for automatic tax lookup for this invoice.
  @JsonKey(name: 'automatic_tax')
  final InvoiceAutomaticTax automaticTax;

  /// The time when this invoice is currently scheduled to be automatically finalized.
  @JsonKey(name: 'automatically_finalizes_at')
  @TimestampConverter()
  final DateTime? automaticallyFinalizesAt;

  /// Indicates the reason why the invoice was created.
  @JsonKey(name: 'billing_reason')
  final InvoiceBillingReason? billingReason;

  /// Either charge_automatically, or send_invoice.
  @JsonKey(name: 'collection_method')
  final InvoiceCollectionMethod collectionMethod;

  /// Time at which the object was created.
  @TimestampConverter()
  final DateTime created;

  /// Three-letter ISO currency code, in lowercase.
  final String currency;

  /// Custom fields displayed on the invoice.
  @JsonKey(name: 'custom_fields')
  final List<InvoiceCustomField>? customFields;

  /// The ID of the customer who will be billed.
  final String customer;

  /// The ID of the account representing the customer.
  @JsonKey(name: 'customer_account')
  final String? customerAccount;

  /// The customer's address.
  @JsonKey(name: 'customer_address')
  final Address? customerAddress;

  /// The customer's email.
  @JsonKey(name: 'customer_email')
  final String? customerEmail;

  /// The customer's name.
  @JsonKey(name: 'customer_name')
  final String? customerName;

  /// The customer's phone number.
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;

  /// The customer's shipping information.
  @JsonKey(name: 'customer_shipping')
  final InvoiceCustomerShipping? customerShipping;

  /// The customer's tax exempt status.
  @JsonKey(name: 'customer_tax_exempt')
  final CustomerTaxExempt? customerTaxExempt;

  /// ID of the default payment method for the invoice.
  @JsonKey(name: 'default_payment_method')
  final String? defaultPaymentMethod;

  /// ID of the default payment source for the invoice.
  @JsonKey(name: 'default_source')
  final String? defaultSource;

  /// An arbitrary string attached to the object.
  final String? description;

  /// The discounts applied to the invoice.
  final List<String>? discounts;

  /// The date on which payment for this invoice is due.
  @JsonKey(name: 'due_date')
  @TimestampConverter()
  final DateTime? dueDate;

  /// The date when this invoice is in effect.
  @JsonKey(name: 'effective_at')
  @TimestampConverter()
  final DateTime? effectiveAt;

  /// Ending customer balance after the invoice is finalized.
  @JsonKey(name: 'ending_balance')
  final int? endingBalance;

  /// Footer displayed on the invoice.
  final String? footer;

  /// The URL for the hosted invoice page.
  @JsonKey(name: 'hosted_invoice_url')
  final String? hostedInvoiceUrl;

  /// The link to download the PDF for the invoice.
  @JsonKey(name: 'invoice_pdf')
  final String? invoicePdf;

  /// The connected account that issues the invoice.
  final InvoiceIssuer issuer;

  /// The ID of the most recent non-draft revision of this invoice.
  @JsonKey(name: 'latest_revision')
  final String? latestRevision;

  /// The individual line items that make up the invoice.
  final DataList<InvoiceLineItem> lines;

  /// Has the value true if the object exists in live mode.
  final bool livemode;

  /// Set of key-value pairs for storing additional information.
  final Map<String, dynamic>? metadata;

  /// The time at which payment will next be attempted.
  @JsonKey(name: 'next_payment_attempt')
  @TimestampConverter()
  final DateTime? nextPaymentAttempt;

  /// A unique, identifying string that appears on emails sent to the customer.
  final String? number;

  /// The account for which the funds of the invoice payment are intended.
  @JsonKey(name: 'on_behalf_of')
  final String? onBehalfOf;

  /// Configuration settings for the PaymentIntent.
  @JsonKey(name: 'payment_settings')
  final InvoicePaymentSettings paymentSettings;

  /// End of the usage period during which invoice items were added.
  @JsonKey(name: 'period_end')
  @TimestampConverter()
  final DateTime periodEnd;

  /// Start of the usage period during which invoice items were added.
  @JsonKey(name: 'period_start')
  @TimestampConverter()
  final DateTime periodStart;

  /// Total amount of all post-payment credit notes issued for this invoice.
  @JsonKey(name: 'post_payment_credit_notes_amount')
  final int postPaymentCreditNotesAmount;

  /// Total amount of all pre-payment credit notes issued for this invoice.
  @JsonKey(name: 'pre_payment_credit_notes_amount')
  final int prePaymentCreditNotesAmount;

  /// This is the transaction number that appears on email receipts.
  @JsonKey(name: 'receipt_number')
  final String? receiptNumber;

  /// Starting customer balance before the invoice is finalized.
  @JsonKey(name: 'starting_balance')
  final int startingBalance;

  /// Extra information about an invoice for the customer's credit card statement.
  @JsonKey(name: 'statement_descriptor')
  final String? statementDescriptor;

  /// The status of the invoice.
  final InvoiceStatus? status;

  /// The timestamps at which the invoice status was updated.
  @JsonKey(name: 'status_transitions')
  final InvoiceStatusTransitions statusTransitions;

  /// The subscription that this invoice was prepared for, if any.
  final String? subscription;

  /// Total of all subscriptions, invoice items, and prorations on the invoice.
  final int subtotal;

  /// The integer amount in cents representing the subtotal before any discount or tax.
  @JsonKey(name: 'subtotal_excluding_tax')
  final int? subtotalExcludingTax;

  /// ID of the test clock this invoice belongs to.
  @JsonKey(name: 'test_clock')
  final String? testClock;

  /// Total after discounts and taxes.
  final int total;

  /// The integer amount in cents representing the total excluding all tax.
  @JsonKey(name: 'total_excluding_tax')
  final int? totalExcludingTax;

  /// Invoices are automatically paid or sent 1 hour after webhooks are delivered.
  @JsonKey(name: 'webhooks_delivered_at')
  @TimestampConverter()
  final DateTime? webhooksDeliveredAt;

  Invoice({
    required this.object,
    required this.id,
    this.accountCountry,
    this.accountName,
    this.accountTaxIds,
    required this.amountDue,
    required this.amountOverpaid,
    required this.amountPaid,
    required this.amountRemaining,
    required this.amountShipping,
    this.application,
    required this.attemptCount,
    required this.attempted,
    required this.autoAdvance,
    required this.automaticTax,
    this.automaticallyFinalizesAt,
    this.billingReason,
    required this.collectionMethod,
    required this.created,
    required this.currency,
    this.customFields,
    required this.customer,
    this.customerAccount,
    this.customerAddress,
    this.customerEmail,
    this.customerName,
    this.customerPhone,
    this.customerShipping,
    this.customerTaxExempt,
    this.defaultPaymentMethod,
    this.defaultSource,
    this.description,
    this.discounts,
    this.dueDate,
    this.effectiveAt,
    this.endingBalance,
    this.footer,
    this.hostedInvoiceUrl,
    this.invoicePdf,
    required this.issuer,
    this.latestRevision,
    required this.lines,
    required this.livemode,
    this.metadata,
    this.nextPaymentAttempt,
    this.number,
    this.onBehalfOf,
    required this.paymentSettings,
    required this.periodEnd,
    required this.periodStart,
    required this.postPaymentCreditNotesAmount,
    required this.prePaymentCreditNotesAmount,
    this.receiptNumber,
    required this.startingBalance,
    this.statementDescriptor,
    this.status,
    required this.statusTransitions,
    this.subscription,
    required this.subtotal,
    this.subtotalExcludingTax,
    this.testClock,
    required this.total,
    this.totalExcludingTax,
    this.webhooksDeliveredAt,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}

/// Invoice event for webhook handling
@JsonSerializable()
class InvoiceEvent extends Event<Invoice> {
  InvoiceEvent({
    required _EventObject object,
    required String id,
    required EventType type,
    required EventData<Invoice> data,
  }) : super(object: object, id: id, data: data, type: type);

  factory InvoiceEvent.fromJson(Map<String, dynamic> json) =>
      _$InvoiceEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceEventToJson(this);
}
