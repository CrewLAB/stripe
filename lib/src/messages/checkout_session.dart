part of '../../messages.dart';

enum PaymentMethodType {
  // ignore: constant_identifier_names
  acss_debit,
  affirm,
  // ignore: constant_identifier_names
  afterpay_clearpay,
  alipay,
  // ignore: constant_identifier_names
  au_becs_debit,
  // ignore: constant_identifier_names
  bacs_debit,
  bancontact,
  blik,
  boleto,
  card,
  cashapp,
  // ignore: constant_identifier_names
  customer_balance,
  eps,
  fpx,
  giropay,
  grabpay,
  ideal,
  klarna,
  konbini,
  link,
  oxxo,
  p24,
  paynow,
  pix,
  promptpay,
  // ignore: constant_identifier_names
  sepa_debit,
  sofort,
  // ignore: constant_identifier_names
  us_bank_account,
  // ignore: constant_identifier_names
  wechat_pay,
}

enum CustomerCreation {
  always,
  // ignore: constant_identifier_names
  if_required,
}

enum PaymentMethodCollection {
  always,
  // ignore: constant_identifier_names
  if_required,
}

enum PaymentStatus {
  // ignore: constant_identifier_names
  no_payment_required,
  paid,
  unpaid,
}

enum CheckoutSessionStatus {
  complete,
  expired,
  open,
}

enum SubmitType {
  auto,
  book,
  donate,
  pay,
  subscribe,
}

enum LiabilityType {
  account,
  self,
}

enum AutomaticTaxStatus {
  complete,
  failed,
  // ignore: constant_identifier_names
  requires_location_inputs,
}

enum TaxExempt {
  exempt,
  none,
  reverse,
}

enum TaxIdType {
  // ignore: constant_identifier_names
  ad_nrt,
  // ignore: constant_identifier_names
  ae_trn,
  // ignore: constant_identifier_names
  ar_cuit,
  // ignore: constant_identifier_names
  au_abn,
  // ignore: constant_identifier_names
  au_arn,
  // ignore: constant_identifier_names
  bg_uic,
  // ignore: constant_identifier_names
  bh_vat,
  // ignore: constant_identifier_names
  bo_tin,
  // ignore: constant_identifier_names
  br_cnpj,
  // ignore: constant_identifier_names
  br_cpf,
  // ignore: constant_identifier_names
  ca_bn,
  // ignore: constant_identifier_names
  ca_gst_hst,
  // ignore: constant_identifier_names
  ca_pst_bc,
  // ignore: constant_identifier_names
  ca_pst_mb,
  // ignore: constant_identifier_names
  ca_pst_sk,
  // ignore: constant_identifier_names
  ca_qst,
  // ignore: constant_identifier_names
  ch_uid,
  // ignore: constant_identifier_names
  ch_vat,
  // ignore: constant_identifier_names
  cl_tin,
  // ignore: constant_identifier_names
  cn_tin,
  // ignore: constant_identifier_names
  co_nit,
  // ignore: constant_identifier_names
  cr_tin,
  // ignore: constant_identifier_names
  de_stn,
  // ignore: constant_identifier_names
  do_rcn,
  // ignore: constant_identifier_names
  ec_ruc,
  // ignore: constant_identifier_names
  eg_tin,
  // ignore: constant_identifier_names
  es_cif,
  // ignore: constant_identifier_names
  eu_oss_vat,
  // ignore: constant_identifier_names
  eu_vat,
  // ignore: constant_identifier_names
  gb_vat,
  // ignore: constant_identifier_names
  ge_vat,
  // ignore: constant_identifier_names
  hk_br,
  // ignore: constant_identifier_names
  hr_oib,
  // ignore: constant_identifier_names
  hu_tin,
  // ignore: constant_identifier_names
  id_npwp,
  // ignore: constant_identifier_names
  il_vat,
  // ignore: constant_identifier_names
  in_gst,
  // ignore: constant_identifier_names
  is_vat,
  // ignore: constant_identifier_names
  jp_cn,
  // ignore: constant_identifier_names
  jp_rn,
  // ignore: constant_identifier_names
  jp_trn,
  // ignore: constant_identifier_names
  ke_pin,
  // ignore: constant_identifier_names
  kr_brn,
  // ignore: constant_identifier_names
  kz_bin,
  // ignore: constant_identifier_names
  li_uid,
  // ignore: constant_identifier_names
  mx_rfc,
  // ignore: constant_identifier_names
  my_frp,
  // ignore: constant_identifier_names
  my_itn,
  // ignore: constant_identifier_names
  my_sst,
  // ignore: constant_identifier_names
  ng_tin,
  // ignore: constant_identifier_names
  no_vat,
  // ignore: constant_identifier_names
  no_voec,
  // ignore: constant_identifier_names
  nz_gst,
  // ignore: constant_identifier_names
  om_vat,
  // ignore: constant_identifier_names
  pe_ruc,
  // ignore: constant_identifier_names
  ph_tin,
  // ignore: constant_identifier_names
  ro_tin,
  // ignore: constant_identifier_names
  rs_pib,
  // ignore: constant_identifier_names
  ru_inn,
  // ignore: constant_identifier_names
  ru_kpp,
  // ignore: constant_identifier_names
  sa_vat,
  // ignore: constant_identifier_names
  sg_gst,
  // ignore: constant_identifier_names
  sg_uen,
  // ignore: constant_identifier_names
  si_tin,
  // ignore: constant_identifier_names
  sv_nit,
  // ignore: constant_identifier_names
  th_vat,
  // ignore: constant_identifier_names
  tr_tin,
  // ignore: constant_identifier_names
  tw_vat,
  // ignore: constant_identifier_names
  ua_vat,
  // ignore: constant_identifier_names
  us_ein,
  // ignore: constant_identifier_names
  uy_ruc,
  // ignore: constant_identifier_names
  ve_rif,
  // ignore: constant_identifier_names
  vn_tin,
  // ignore: constant_identifier_names
  za_vat,
  unknown,
}

enum AmountTaxDisplay {
  // ignore: constant_identifier_names
  exclude_tax,
  // ignore: constant_identifier_names
  include_inclusive_tax,
}

enum CustomFieldType {
  dropdown,
  numeric,
  text,
}

enum ConsentCollectionPromotions {
  auto,
  none,
}

enum ConsentCollectionTermsOfService {
  none,
  required,
}

enum PaymentMethodReuseAgreementPosition {
  auto,
  hidden,
}

// Supporting classes

@JsonSerializable()
class Liability {
  final String? account;
  final LiabilityType type;

  Liability({
    this.account,
    required this.type,
  });

  factory Liability.fromJson(Map<String, dynamic> json) =>
      _$LiabilityFromJson(json);
  Map<String, dynamic> toJson() => _$LiabilityToJson(this);
}

@JsonSerializable()
class AutomaticTaxResponse {
  final bool enabled;
  final Liability? liability;
  final AutomaticTaxStatus? status;

  AutomaticTaxResponse({
    required this.enabled,
    this.liability,
    this.status,
  });

  factory AutomaticTaxResponse.fromJson(Map<String, dynamic> json) =>
      _$AutomaticTaxResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AutomaticTaxResponseToJson(this);
}

@JsonSerializable()
class TotalDetails {
  final int amountDiscount;
  final int amountShipping;
  final int amountTax;

  TotalDetails({
    required this.amountDiscount,
    required this.amountShipping,
    required this.amountTax,
  });

  factory TotalDetails.fromJson(Map<String, dynamic> json) =>
      _$TotalDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$TotalDetailsToJson(this);
}

@JsonSerializable()
class PhoneNumberCollection {
  final bool enabled;

  PhoneNumberCollection({
    required this.enabled,
  });

  factory PhoneNumberCollection.fromJson(Map<String, dynamic> json) =>
      _$PhoneNumberCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$PhoneNumberCollectionToJson(this);
}

@JsonSerializable()
class CustomTextMessage {
  final String message;

  CustomTextMessage({
    required this.message,
  });

  factory CustomTextMessage.fromJson(Map<String, dynamic> json) =>
      _$CustomTextMessageFromJson(json);
  Map<String, dynamic> toJson() => _$CustomTextMessageToJson(this);
}

@JsonSerializable()
class CustomText {
  final CustomTextMessage? afterSubmit;
  final CustomTextMessage? shippingAddress;
  final CustomTextMessage? submit;
  final CustomTextMessage? termsOfServiceAcceptance;

  CustomText({
    this.afterSubmit,
    this.shippingAddress,
    this.submit,
    this.termsOfServiceAcceptance,
  });

  factory CustomText.fromJson(Map<String, dynamic> json) =>
      _$CustomTextFromJson(json);
  Map<String, dynamic> toJson() => _$CustomTextToJson(this);
}

@JsonSerializable()
class InvoiceCustomField {
  final String name;
  final String value;

  InvoiceCustomField({
    required this.name,
    required this.value,
  });

  factory InvoiceCustomField.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCustomFieldFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceCustomFieldToJson(this);
}

@JsonSerializable()
class Issuer {
  final String? account;
  final LiabilityType type;

  Issuer({
    this.account,
    required this.type,
  });

  factory Issuer.fromJson(Map<String, dynamic> json) => _$IssuerFromJson(json);
  Map<String, dynamic> toJson() => _$IssuerToJson(this);
}

@JsonSerializable()
class RenderingOptions {
  final AmountTaxDisplay? amountTaxDisplay;
  final String? template;

  RenderingOptions({
    this.amountTaxDisplay,
    this.template,
  });

  factory RenderingOptions.fromJson(Map<String, dynamic> json) =>
      _$RenderingOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$RenderingOptionsToJson(this);
}

@JsonSerializable()
class InvoiceData {
  final List<String>? accountTaxIds;
  final List<InvoiceCustomField>? customFields;
  final String? description;
  final String? footer;
  final Issuer? issuer;
  final Map<String, dynamic>? metadata;
  final RenderingOptions? renderingOptions;

  InvoiceData({
    this.accountTaxIds,
    this.customFields,
    this.description,
    this.footer,
    this.issuer,
    this.metadata,
    this.renderingOptions,
  });

  factory InvoiceData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDataFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceDataToJson(this);
}

@JsonSerializable()
class InvoiceCreation {
  final bool enabled;
  final InvoiceData? invoiceData;

  InvoiceCreation({
    required this.enabled,
    this.invoiceData,
  });

  factory InvoiceCreation.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreationFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceCreationToJson(this);
}

@JsonSerializable()
class TaxId {
  final TaxIdType type;
  final String? value;

  TaxId({
    required this.type,
    this.value,
  });

  factory TaxId.fromJson(Map<String, dynamic> json) => _$TaxIdFromJson(json);
  Map<String, dynamic> toJson() => _$TaxIdToJson(this);
}

@JsonSerializable()
class CustomerDetails {
  final Address? address;
  final String? email;
  final String? name;
  final String? phone;
  final TaxExempt? taxExempt;
  final List<TaxId>? taxIds;

  CustomerDetails({
    this.address,
    this.email,
    this.name,
    this.phone,
    this.taxExempt,
    this.taxIds,
  });

  factory CustomerDetails.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerDetailsToJson(this);
}

@JsonSerializable()
class Recovery {
  final bool? allowPromotionCodes;
  final bool enabled;
  final int? expiresAt;
  final String? url;

  Recovery({
    this.allowPromotionCodes,
    required this.enabled,
    this.expiresAt,
    this.url,
  });

  factory Recovery.fromJson(Map<String, dynamic> json) =>
      _$RecoveryFromJson(json);
  Map<String, dynamic> toJson() => _$RecoveryToJson(this);
}

@JsonSerializable()
class AfterExpiration {
  final Recovery? recovery;

  AfterExpiration({
    this.recovery,
  });

  factory AfterExpiration.fromJson(Map<String, dynamic> json) =>
      _$AfterExpirationFromJson(json);
  Map<String, dynamic> toJson() => _$AfterExpirationToJson(this);
}

@JsonSerializable()
class Consent {
  final String? promotions;
  final String? termsOfService;

  Consent({
    this.promotions,
    this.termsOfService,
  });

  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentToJson(this);
}

@JsonSerializable()
class PaymentMethodReuseAgreement {
  final PaymentMethodReuseAgreementPosition position;

  PaymentMethodReuseAgreement({
    required this.position,
  });

  factory PaymentMethodReuseAgreement.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodReuseAgreementFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodReuseAgreementToJson(this);
}

@JsonSerializable()
class ConsentCollection {
  final PaymentMethodReuseAgreement? paymentMethodReuseAgreement;
  final ConsentCollectionPromotions? promotions;
  final ConsentCollectionTermsOfService? termsOfService;

  ConsentCollection({
    this.paymentMethodReuseAgreement,
    this.promotions,
    this.termsOfService,
  });

  factory ConsentCollection.fromJson(Map<String, dynamic> json) =>
      _$ConsentCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$ConsentCollectionToJson(this);
}

@JsonSerializable()
class CustomFieldDropdownOption {
  final String label;
  final String value;

  CustomFieldDropdownOption({
    required this.label,
    required this.value,
  });

  factory CustomFieldDropdownOption.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldDropdownOptionFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldDropdownOptionToJson(this);
}

@JsonSerializable()
class CustomFieldDropdown {
  final String? defaultValue;
  final List<CustomFieldDropdownOption> options;
  final String? value;

  CustomFieldDropdown({
    this.defaultValue,
    required this.options,
    this.value,
  });

  factory CustomFieldDropdown.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldDropdownFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldDropdownToJson(this);
}

@JsonSerializable()
class CustomFieldLabel {
  final String? custom;
  final String type;

  CustomFieldLabel({
    this.custom,
    required this.type,
  });

  factory CustomFieldLabel.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldLabelFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldLabelToJson(this);
}

@JsonSerializable()
class CustomFieldNumeric {
  final String? defaultValue;
  final int? maximumLength;
  final int? minimumLength;
  final String? value;

  CustomFieldNumeric({
    this.defaultValue,
    this.maximumLength,
    this.minimumLength,
    this.value,
  });

  factory CustomFieldNumeric.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldNumericFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldNumericToJson(this);
}

@JsonSerializable()
class CustomFieldText {
  final String? defaultValue;
  final int? maximumLength;
  final int? minimumLength;
  final String? value;

  CustomFieldText({
    this.defaultValue,
    this.maximumLength,
    this.minimumLength,
    this.value,
  });

  factory CustomFieldText.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldTextFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldTextToJson(this);
}

@JsonSerializable()
class CustomField {
  final CustomFieldDropdown? dropdown;
  final String key;
  final CustomFieldLabel label;
  final CustomFieldNumeric? numeric;
  final bool? optional;
  final CustomFieldText? text;
  final CustomFieldType type;

  CustomField({
    this.dropdown,
    required this.key,
    required this.label,
    this.numeric,
    this.optional,
    this.text,
    required this.type,
  });

  factory CustomField.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldToJson(this);
}

@JsonSerializable()
class ShippingAddressCollection {
  final List<String> allowedCountries;

  ShippingAddressCollection({
    required this.allowedCountries,
  });

  factory ShippingAddressCollection.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressCollectionFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingAddressCollectionToJson(this);
}

@JsonSerializable()
class ShippingTax {
  final int amount;
  final String rate;

  ShippingTax({
    required this.amount,
    required this.rate,
  });

  factory ShippingTax.fromJson(Map<String, dynamic> json) =>
      _$ShippingTaxFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingTaxToJson(this);
}

@JsonSerializable()
class ShippingCost {
  final int amountSubtotal;
  final int amountTax;
  final int amountTotal;
  final String? shippingRate;
  final List<ShippingTax>? taxes;

  ShippingCost({
    required this.amountSubtotal,
    required this.amountTax,
    required this.amountTotal,
    this.shippingRate,
    this.taxes,
  });

  factory ShippingCost.fromJson(Map<String, dynamic> json) =>
      _$ShippingCostFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingCostToJson(this);
}

@JsonSerializable()
class ShippingDetails {
  final Address? address;
  final String? carrier;
  final String? name;
  final String? phone;
  final String? trackingNumber;

  ShippingDetails({
    this.address,
    this.carrier,
    this.name,
    this.phone,
    this.trackingNumber,
  });

  factory ShippingDetails.fromJson(Map<String, dynamic> json) =>
      _$ShippingDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingDetailsToJson(this);
}

@JsonSerializable()
class ShippingOption {
  final int shippingAmount;
  final String shippingRate;

  ShippingOption({
    required this.shippingAmount,
    required this.shippingRate,
  });

  factory ShippingOption.fromJson(Map<String, dynamic> json) =>
      _$ShippingOptionFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingOptionToJson(this);
}

/// https://stripe.com/docs/api/checkout/sessions/object
@JsonSerializable()
class CheckoutSession extends Message {
  /// Doesn't work with enum because there is a dot in it.
  final String object;
  final String id;

  final AfterExpiration? afterExpiration;
  final bool? allowPromotionCodes;
  final int? amountSubtotal;
  final int? amountTotal;
  final AutomaticTaxResponse? automaticTax;
  final BillingAddressCollection? billingAddressCollection;
  final String? cancelUrl;
  final String? clientReferenceId;
  final Consent? consent;
  final ConsentCollection? consentCollection;
  final int? created;
  final String? currency;
  final String? customer;
  final CustomerCreation? customerCreation;
  final CustomerDetails? customerDetails;
  final String? customerEmail;
  final List<CustomField>? customFields;
  final CustomText? customText;
  final int? expiresAt;
  final String? invoice;
  final InvoiceCreation? invoiceCreation;
  final bool? livemode;
  final String? locale;
  final Map<String, dynamic>? metadata;
  final SessionMode? mode;
  final String? paymentIntent;
  final String? paymentLink;
  final PaymentMethodCollection? paymentMethodCollection;
  final Map<String, dynamic>? paymentMethodOptions;
  final List<PaymentMethodType> paymentMethodTypes;
  final PaymentStatus? paymentStatus;
  final PhoneNumberCollection? phoneNumberCollection;
  final String? recoveredFrom;
  final String? setupIntent;
  final ShippingAddressCollection? shippingAddressCollection;
  final ShippingCost? shippingCost;
  final ShippingDetails? shippingDetails;
  final List<ShippingOption>? shippingOptions;
  final CheckoutSessionStatus? status;
  final SubmitType? submitType;
  final String? subscription;
  final String? successUrl;
  final TotalDetails? totalDetails;
  final String? url;

  CheckoutSession({
    required this.object,
    required this.id,
    required this.paymentMethodTypes,
    this.afterExpiration,
    this.allowPromotionCodes,
    this.amountSubtotal,
    this.amountTotal,
    this.automaticTax,
    this.billingAddressCollection,
    this.cancelUrl,
    this.clientReferenceId,
    this.consent,
    this.consentCollection,
    this.created,
    this.currency,
    this.customer,
    this.customerCreation,
    this.customerDetails,
    this.customerEmail,
    this.customFields,
    this.customText,
    this.expiresAt,
    this.invoice,
    this.invoiceCreation,
    this.livemode,
    this.locale,
    this.metadata,
    this.mode,
    this.paymentIntent,
    this.paymentLink,
    this.paymentMethodCollection,
    this.paymentMethodOptions,
    this.paymentStatus,
    this.phoneNumberCollection,
    this.recoveredFrom,
    this.setupIntent,
    this.shippingAddressCollection,
    this.shippingCost,
    this.shippingDetails,
    this.shippingOptions,
    this.status,
    this.submitType,
    this.subscription,
    this.successUrl,
    this.totalDetails,
    this.url,
  });

  factory CheckoutSession.fromJson(Map<String, dynamic> json) =>
      _$CheckoutSessionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CheckoutSessionToJson(this);
}
