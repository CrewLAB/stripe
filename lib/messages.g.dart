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

Liability _$LiabilityFromJson(Map<String, dynamic> json) => Liability(
  account: json['account'] as String?,
  type: $enumDecode(_$LiabilityTypeEnumMap, json['type']),
);

Map<String, dynamic> _$LiabilityToJson(Liability instance) => <String, dynamic>{
  'account': ?instance.account,
  'type': _$LiabilityTypeEnumMap[instance.type]!,
};

const _$LiabilityTypeEnumMap = {
  LiabilityType.account: 'account',
  LiabilityType.self: 'self',
};

AutomaticTaxResponse _$AutomaticTaxResponseFromJson(
  Map<String, dynamic> json,
) => AutomaticTaxResponse(
  enabled: json['enabled'] as bool,
  liability: json['liability'] == null
      ? null
      : Liability.fromJson(json['liability'] as Map<String, dynamic>),
  status: $enumDecodeNullable(_$AutomaticTaxStatusEnumMap, json['status']),
);

Map<String, dynamic> _$AutomaticTaxResponseToJson(
  AutomaticTaxResponse instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'liability': ?instance.liability?.toJson(),
  'status': ?_$AutomaticTaxStatusEnumMap[instance.status],
};

const _$AutomaticTaxStatusEnumMap = {
  AutomaticTaxStatus.complete: 'complete',
  AutomaticTaxStatus.failed: 'failed',
  AutomaticTaxStatus.requires_location_inputs: 'requires_location_inputs',
};

TotalDetails _$TotalDetailsFromJson(Map<String, dynamic> json) => TotalDetails(
  amountDiscount: (json['amount_discount'] as num).toInt(),
  amountShipping: (json['amount_shipping'] as num).toInt(),
  amountTax: (json['amount_tax'] as num).toInt(),
);

Map<String, dynamic> _$TotalDetailsToJson(TotalDetails instance) =>
    <String, dynamic>{
      'amount_discount': instance.amountDiscount,
      'amount_shipping': instance.amountShipping,
      'amount_tax': instance.amountTax,
    };

PhoneNumberCollection _$PhoneNumberCollectionFromJson(
  Map<String, dynamic> json,
) => PhoneNumberCollection(enabled: json['enabled'] as bool);

Map<String, dynamic> _$PhoneNumberCollectionToJson(
  PhoneNumberCollection instance,
) => <String, dynamic>{'enabled': instance.enabled};

CustomTextMessage _$CustomTextMessageFromJson(Map<String, dynamic> json) =>
    CustomTextMessage(message: json['message'] as String);

Map<String, dynamic> _$CustomTextMessageToJson(CustomTextMessage instance) =>
    <String, dynamic>{'message': instance.message};

CustomText _$CustomTextFromJson(Map<String, dynamic> json) => CustomText(
  afterSubmit: json['after_submit'] == null
      ? null
      : CustomTextMessage.fromJson(
          json['after_submit'] as Map<String, dynamic>,
        ),
  shippingAddress: json['shipping_address'] == null
      ? null
      : CustomTextMessage.fromJson(
          json['shipping_address'] as Map<String, dynamic>,
        ),
  submit: json['submit'] == null
      ? null
      : CustomTextMessage.fromJson(json['submit'] as Map<String, dynamic>),
  termsOfServiceAcceptance: json['terms_of_service_acceptance'] == null
      ? null
      : CustomTextMessage.fromJson(
          json['terms_of_service_acceptance'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CustomTextToJson(
  CustomText instance,
) => <String, dynamic>{
  'after_submit': ?instance.afterSubmit?.toJson(),
  'shipping_address': ?instance.shippingAddress?.toJson(),
  'submit': ?instance.submit?.toJson(),
  'terms_of_service_acceptance': ?instance.termsOfServiceAcceptance?.toJson(),
};

InvoiceCustomField _$InvoiceCustomFieldFromJson(Map<String, dynamic> json) =>
    InvoiceCustomField(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$InvoiceCustomFieldToJson(InvoiceCustomField instance) =>
    <String, dynamic>{'name': instance.name, 'value': instance.value};

Issuer _$IssuerFromJson(Map<String, dynamic> json) => Issuer(
  account: json['account'] as String?,
  type: $enumDecode(_$LiabilityTypeEnumMap, json['type']),
);

Map<String, dynamic> _$IssuerToJson(Issuer instance) => <String, dynamic>{
  'account': ?instance.account,
  'type': _$LiabilityTypeEnumMap[instance.type]!,
};

RenderingOptions _$RenderingOptionsFromJson(Map<String, dynamic> json) =>
    RenderingOptions(
      amountTaxDisplay: $enumDecodeNullable(
        _$AmountTaxDisplayEnumMap,
        json['amount_tax_display'],
      ),
      template: json['template'] as String?,
    );

Map<String, dynamic> _$RenderingOptionsToJson(
  RenderingOptions instance,
) => <String, dynamic>{
  'amount_tax_display': ?_$AmountTaxDisplayEnumMap[instance.amountTaxDisplay],
  'template': ?instance.template,
};

const _$AmountTaxDisplayEnumMap = {
  AmountTaxDisplay.exclude_tax: 'exclude_tax',
  AmountTaxDisplay.include_inclusive_tax: 'include_inclusive_tax',
};

InvoiceData _$InvoiceDataFromJson(Map<String, dynamic> json) => InvoiceData(
  accountTaxIds: (json['account_tax_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => InvoiceCustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
  description: json['description'] as String?,
  footer: json['footer'] as String?,
  issuer: json['issuer'] == null
      ? null
      : Issuer.fromJson(json['issuer'] as Map<String, dynamic>),
  metadata: json['metadata'] as Map<String, dynamic>?,
  renderingOptions: json['rendering_options'] == null
      ? null
      : RenderingOptions.fromJson(
          json['rendering_options'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$InvoiceDataToJson(InvoiceData instance) =>
    <String, dynamic>{
      'account_tax_ids': ?instance.accountTaxIds,
      'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
      'description': ?instance.description,
      'footer': ?instance.footer,
      'issuer': ?instance.issuer?.toJson(),
      'metadata': ?instance.metadata,
      'rendering_options': ?instance.renderingOptions?.toJson(),
    };

InvoiceCreation _$InvoiceCreationFromJson(Map<String, dynamic> json) =>
    InvoiceCreation(
      enabled: json['enabled'] as bool,
      invoiceData: json['invoice_data'] == null
          ? null
          : InvoiceData.fromJson(json['invoice_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InvoiceCreationToJson(InvoiceCreation instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'invoice_data': ?instance.invoiceData?.toJson(),
    };

TaxId _$TaxIdFromJson(Map<String, dynamic> json) => TaxId(
  type: $enumDecode(_$TaxIdTypeEnumMap, json['type']),
  value: json['value'] as String?,
);

Map<String, dynamic> _$TaxIdToJson(TaxId instance) => <String, dynamic>{
  'type': _$TaxIdTypeEnumMap[instance.type]!,
  'value': ?instance.value,
};

const _$TaxIdTypeEnumMap = {
  TaxIdType.ad_nrt: 'ad_nrt',
  TaxIdType.ae_trn: 'ae_trn',
  TaxIdType.ar_cuit: 'ar_cuit',
  TaxIdType.au_abn: 'au_abn',
  TaxIdType.au_arn: 'au_arn',
  TaxIdType.bg_uic: 'bg_uic',
  TaxIdType.bh_vat: 'bh_vat',
  TaxIdType.bo_tin: 'bo_tin',
  TaxIdType.br_cnpj: 'br_cnpj',
  TaxIdType.br_cpf: 'br_cpf',
  TaxIdType.ca_bn: 'ca_bn',
  TaxIdType.ca_gst_hst: 'ca_gst_hst',
  TaxIdType.ca_pst_bc: 'ca_pst_bc',
  TaxIdType.ca_pst_mb: 'ca_pst_mb',
  TaxIdType.ca_pst_sk: 'ca_pst_sk',
  TaxIdType.ca_qst: 'ca_qst',
  TaxIdType.ch_uid: 'ch_uid',
  TaxIdType.ch_vat: 'ch_vat',
  TaxIdType.cl_tin: 'cl_tin',
  TaxIdType.cn_tin: 'cn_tin',
  TaxIdType.co_nit: 'co_nit',
  TaxIdType.cr_tin: 'cr_tin',
  TaxIdType.de_stn: 'de_stn',
  TaxIdType.do_rcn: 'do_rcn',
  TaxIdType.ec_ruc: 'ec_ruc',
  TaxIdType.eg_tin: 'eg_tin',
  TaxIdType.es_cif: 'es_cif',
  TaxIdType.eu_oss_vat: 'eu_oss_vat',
  TaxIdType.eu_vat: 'eu_vat',
  TaxIdType.gb_vat: 'gb_vat',
  TaxIdType.ge_vat: 'ge_vat',
  TaxIdType.hk_br: 'hk_br',
  TaxIdType.hr_oib: 'hr_oib',
  TaxIdType.hu_tin: 'hu_tin',
  TaxIdType.id_npwp: 'id_npwp',
  TaxIdType.il_vat: 'il_vat',
  TaxIdType.in_gst: 'in_gst',
  TaxIdType.is_vat: 'is_vat',
  TaxIdType.jp_cn: 'jp_cn',
  TaxIdType.jp_rn: 'jp_rn',
  TaxIdType.jp_trn: 'jp_trn',
  TaxIdType.ke_pin: 'ke_pin',
  TaxIdType.kr_brn: 'kr_brn',
  TaxIdType.kz_bin: 'kz_bin',
  TaxIdType.li_uid: 'li_uid',
  TaxIdType.mx_rfc: 'mx_rfc',
  TaxIdType.my_frp: 'my_frp',
  TaxIdType.my_itn: 'my_itn',
  TaxIdType.my_sst: 'my_sst',
  TaxIdType.ng_tin: 'ng_tin',
  TaxIdType.no_vat: 'no_vat',
  TaxIdType.no_voec: 'no_voec',
  TaxIdType.nz_gst: 'nz_gst',
  TaxIdType.om_vat: 'om_vat',
  TaxIdType.pe_ruc: 'pe_ruc',
  TaxIdType.ph_tin: 'ph_tin',
  TaxIdType.ro_tin: 'ro_tin',
  TaxIdType.rs_pib: 'rs_pib',
  TaxIdType.ru_inn: 'ru_inn',
  TaxIdType.ru_kpp: 'ru_kpp',
  TaxIdType.sa_vat: 'sa_vat',
  TaxIdType.sg_gst: 'sg_gst',
  TaxIdType.sg_uen: 'sg_uen',
  TaxIdType.si_tin: 'si_tin',
  TaxIdType.sv_nit: 'sv_nit',
  TaxIdType.th_vat: 'th_vat',
  TaxIdType.tr_tin: 'tr_tin',
  TaxIdType.tw_vat: 'tw_vat',
  TaxIdType.ua_vat: 'ua_vat',
  TaxIdType.us_ein: 'us_ein',
  TaxIdType.uy_ruc: 'uy_ruc',
  TaxIdType.ve_rif: 've_rif',
  TaxIdType.vn_tin: 'vn_tin',
  TaxIdType.za_vat: 'za_vat',
  TaxIdType.unknown: 'unknown',
};

CustomerDetails _$CustomerDetailsFromJson(Map<String, dynamic> json) =>
    CustomerDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      taxExempt: $enumDecodeNullable(_$TaxExemptEnumMap, json['tax_exempt']),
      taxIds: (json['tax_ids'] as List<dynamic>?)
          ?.map((e) => TaxId.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerDetailsToJson(CustomerDetails instance) =>
    <String, dynamic>{
      'address': ?instance.address?.toJson(),
      'email': ?instance.email,
      'name': ?instance.name,
      'phone': ?instance.phone,
      'tax_exempt': ?_$TaxExemptEnumMap[instance.taxExempt],
      'tax_ids': ?instance.taxIds?.map((e) => e.toJson()).toList(),
    };

const _$TaxExemptEnumMap = {
  TaxExempt.exempt: 'exempt',
  TaxExempt.none: 'none',
  TaxExempt.reverse: 'reverse',
};

Recovery _$RecoveryFromJson(Map<String, dynamic> json) => Recovery(
  allowPromotionCodes: json['allow_promotion_codes'] as bool?,
  enabled: json['enabled'] as bool,
  expiresAt: (json['expires_at'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$RecoveryToJson(Recovery instance) => <String, dynamic>{
  'allow_promotion_codes': ?instance.allowPromotionCodes,
  'enabled': instance.enabled,
  'expires_at': ?instance.expiresAt,
  'url': ?instance.url,
};

AfterExpiration _$AfterExpirationFromJson(Map<String, dynamic> json) =>
    AfterExpiration(
      recovery: json['recovery'] == null
          ? null
          : Recovery.fromJson(json['recovery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AfterExpirationToJson(AfterExpiration instance) =>
    <String, dynamic>{'recovery': ?instance.recovery?.toJson()};

Consent _$ConsentFromJson(Map<String, dynamic> json) => Consent(
  promotions: json['promotions'] as String?,
  termsOfService: json['terms_of_service'] as String?,
);

Map<String, dynamic> _$ConsentToJson(Consent instance) => <String, dynamic>{
  'promotions': ?instance.promotions,
  'terms_of_service': ?instance.termsOfService,
};

PaymentMethodReuseAgreement _$PaymentMethodReuseAgreementFromJson(
  Map<String, dynamic> json,
) => PaymentMethodReuseAgreement(
  position: $enumDecode(
    _$PaymentMethodReuseAgreementPositionEnumMap,
    json['position'],
  ),
);

Map<String, dynamic> _$PaymentMethodReuseAgreementToJson(
  PaymentMethodReuseAgreement instance,
) => <String, dynamic>{
  'position': _$PaymentMethodReuseAgreementPositionEnumMap[instance.position]!,
};

const _$PaymentMethodReuseAgreementPositionEnumMap = {
  PaymentMethodReuseAgreementPosition.auto: 'auto',
  PaymentMethodReuseAgreementPosition.hidden: 'hidden',
};

ConsentCollection _$ConsentCollectionFromJson(Map<String, dynamic> json) =>
    ConsentCollection(
      paymentMethodReuseAgreement:
          json['payment_method_reuse_agreement'] == null
          ? null
          : PaymentMethodReuseAgreement.fromJson(
              json['payment_method_reuse_agreement'] as Map<String, dynamic>,
            ),
      promotions: $enumDecodeNullable(
        _$ConsentCollectionPromotionsEnumMap,
        json['promotions'],
      ),
      termsOfService: $enumDecodeNullable(
        _$ConsentCollectionTermsOfServiceEnumMap,
        json['terms_of_service'],
      ),
    );

Map<String, dynamic> _$ConsentCollectionToJson(ConsentCollection instance) =>
    <String, dynamic>{
      'payment_method_reuse_agreement': ?instance.paymentMethodReuseAgreement
          ?.toJson(),
      'promotions': ?_$ConsentCollectionPromotionsEnumMap[instance.promotions],
      'terms_of_service':
          ?_$ConsentCollectionTermsOfServiceEnumMap[instance.termsOfService],
    };

const _$ConsentCollectionPromotionsEnumMap = {
  ConsentCollectionPromotions.auto: 'auto',
  ConsentCollectionPromotions.none: 'none',
};

const _$ConsentCollectionTermsOfServiceEnumMap = {
  ConsentCollectionTermsOfService.none: 'none',
  ConsentCollectionTermsOfService.required: 'required',
};

CustomFieldDropdownOption _$CustomFieldDropdownOptionFromJson(
  Map<String, dynamic> json,
) => CustomFieldDropdownOption(
  label: json['label'] as String,
  value: json['value'] as String,
);

Map<String, dynamic> _$CustomFieldDropdownOptionToJson(
  CustomFieldDropdownOption instance,
) => <String, dynamic>{'label': instance.label, 'value': instance.value};

CustomFieldDropdown _$CustomFieldDropdownFromJson(Map<String, dynamic> json) =>
    CustomFieldDropdown(
      defaultValue: json['default_value'] as String?,
      options: (json['options'] as List<dynamic>)
          .map(
            (e) =>
                CustomFieldDropdownOption.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$CustomFieldDropdownToJson(
  CustomFieldDropdown instance,
) => <String, dynamic>{
  'default_value': ?instance.defaultValue,
  'options': instance.options.map((e) => e.toJson()).toList(),
  'value': ?instance.value,
};

CustomFieldLabel _$CustomFieldLabelFromJson(Map<String, dynamic> json) =>
    CustomFieldLabel(
      custom: json['custom'] as String?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CustomFieldLabelToJson(CustomFieldLabel instance) =>
    <String, dynamic>{'custom': ?instance.custom, 'type': instance.type};

CustomFieldNumeric _$CustomFieldNumericFromJson(Map<String, dynamic> json) =>
    CustomFieldNumeric(
      defaultValue: json['default_value'] as String?,
      maximumLength: (json['maximum_length'] as num?)?.toInt(),
      minimumLength: (json['minimum_length'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$CustomFieldNumericToJson(CustomFieldNumeric instance) =>
    <String, dynamic>{
      'default_value': ?instance.defaultValue,
      'maximum_length': ?instance.maximumLength,
      'minimum_length': ?instance.minimumLength,
      'value': ?instance.value,
    };

CustomFieldText _$CustomFieldTextFromJson(Map<String, dynamic> json) =>
    CustomFieldText(
      defaultValue: json['default_value'] as String?,
      maximumLength: (json['maximum_length'] as num?)?.toInt(),
      minimumLength: (json['minimum_length'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$CustomFieldTextToJson(CustomFieldText instance) =>
    <String, dynamic>{
      'default_value': ?instance.defaultValue,
      'maximum_length': ?instance.maximumLength,
      'minimum_length': ?instance.minimumLength,
      'value': ?instance.value,
    };

CustomField _$CustomFieldFromJson(Map<String, dynamic> json) => CustomField(
  dropdown: json['dropdown'] == null
      ? null
      : CustomFieldDropdown.fromJson(json['dropdown'] as Map<String, dynamic>),
  key: json['key'] as String,
  label: CustomFieldLabel.fromJson(json['label'] as Map<String, dynamic>),
  numeric: json['numeric'] == null
      ? null
      : CustomFieldNumeric.fromJson(json['numeric'] as Map<String, dynamic>),
  optional: json['optional'] as bool?,
  text: json['text'] == null
      ? null
      : CustomFieldText.fromJson(json['text'] as Map<String, dynamic>),
  type: $enumDecode(_$CustomFieldTypeEnumMap, json['type']),
);

Map<String, dynamic> _$CustomFieldToJson(CustomField instance) =>
    <String, dynamic>{
      'dropdown': ?instance.dropdown?.toJson(),
      'key': instance.key,
      'label': instance.label.toJson(),
      'numeric': ?instance.numeric?.toJson(),
      'optional': ?instance.optional,
      'text': ?instance.text?.toJson(),
      'type': _$CustomFieldTypeEnumMap[instance.type]!,
    };

const _$CustomFieldTypeEnumMap = {
  CustomFieldType.dropdown: 'dropdown',
  CustomFieldType.numeric: 'numeric',
  CustomFieldType.text: 'text',
};

ShippingAddressCollection _$ShippingAddressCollectionFromJson(
  Map<String, dynamic> json,
) => ShippingAddressCollection(
  allowedCountries: (json['allowed_countries'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ShippingAddressCollectionToJson(
  ShippingAddressCollection instance,
) => <String, dynamic>{'allowed_countries': instance.allowedCountries};

ShippingTax _$ShippingTaxFromJson(Map<String, dynamic> json) => ShippingTax(
  amount: (json['amount'] as num).toInt(),
  rate: json['rate'] as String,
);

Map<String, dynamic> _$ShippingTaxToJson(ShippingTax instance) =>
    <String, dynamic>{'amount': instance.amount, 'rate': instance.rate};

ShippingCost _$ShippingCostFromJson(Map<String, dynamic> json) => ShippingCost(
  amountSubtotal: (json['amount_subtotal'] as num).toInt(),
  amountTax: (json['amount_tax'] as num).toInt(),
  amountTotal: (json['amount_total'] as num).toInt(),
  shippingRate: json['shipping_rate'] as String?,
  taxes: (json['taxes'] as List<dynamic>?)
      ?.map((e) => ShippingTax.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ShippingCostToJson(ShippingCost instance) =>
    <String, dynamic>{
      'amount_subtotal': instance.amountSubtotal,
      'amount_tax': instance.amountTax,
      'amount_total': instance.amountTotal,
      'shipping_rate': ?instance.shippingRate,
      'taxes': ?instance.taxes?.map((e) => e.toJson()).toList(),
    };

ShippingDetails _$ShippingDetailsFromJson(Map<String, dynamic> json) =>
    ShippingDetails(
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      carrier: json['carrier'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      trackingNumber: json['tracking_number'] as String?,
    );

Map<String, dynamic> _$ShippingDetailsToJson(ShippingDetails instance) =>
    <String, dynamic>{
      'address': ?instance.address?.toJson(),
      'carrier': ?instance.carrier,
      'name': ?instance.name,
      'phone': ?instance.phone,
      'tracking_number': ?instance.trackingNumber,
    };

ShippingOption _$ShippingOptionFromJson(Map<String, dynamic> json) =>
    ShippingOption(
      shippingAmount: (json['shipping_amount'] as num).toInt(),
      shippingRate: json['shipping_rate'] as String,
    );

Map<String, dynamic> _$ShippingOptionToJson(ShippingOption instance) =>
    <String, dynamic>{
      'shipping_amount': instance.shippingAmount,
      'shipping_rate': instance.shippingRate,
    };

CheckoutSession _$CheckoutSessionFromJson(
  Map<String, dynamic> json,
) => CheckoutSession(
  object: json['object'] as String,
  id: json['id'] as String,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
      .map((e) => $enumDecode(_$PaymentMethodTypeEnumMap, e))
      .toList(),
  afterExpiration: json['after_expiration'] == null
      ? null
      : AfterExpiration.fromJson(
          json['after_expiration'] as Map<String, dynamic>,
        ),
  allowPromotionCodes: json['allow_promotion_codes'] as bool?,
  amountSubtotal: (json['amount_subtotal'] as num?)?.toInt(),
  amountTotal: (json['amount_total'] as num?)?.toInt(),
  automaticTax: json['automatic_tax'] == null
      ? null
      : AutomaticTaxResponse.fromJson(
          json['automatic_tax'] as Map<String, dynamic>,
        ),
  billingAddressCollection: $enumDecodeNullable(
    _$BillingAddressCollectionEnumMap,
    json['billing_address_collection'],
  ),
  cancelUrl: json['cancel_url'] as String?,
  clientReferenceId: json['client_reference_id'] as String?,
  consent: json['consent'] == null
      ? null
      : Consent.fromJson(json['consent'] as Map<String, dynamic>),
  consentCollection: json['consent_collection'] == null
      ? null
      : ConsentCollection.fromJson(
          json['consent_collection'] as Map<String, dynamic>,
        ),
  created: (json['created'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  customer: json['customer'] as String?,
  customerCreation: $enumDecodeNullable(
    _$CustomerCreationEnumMap,
    json['customer_creation'],
  ),
  customerDetails: json['customer_details'] == null
      ? null
      : CustomerDetails.fromJson(
          json['customer_details'] as Map<String, dynamic>,
        ),
  customerEmail: json['customer_email'] as String?,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => CustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
  customText: json['custom_text'] == null
      ? null
      : CustomText.fromJson(json['custom_text'] as Map<String, dynamic>),
  expiresAt: (json['expires_at'] as num?)?.toInt(),
  invoice: json['invoice'] as String?,
  invoiceCreation: json['invoice_creation'] == null
      ? null
      : InvoiceCreation.fromJson(
          json['invoice_creation'] as Map<String, dynamic>,
        ),
  livemode: json['livemode'] as bool?,
  locale: json['locale'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  mode: $enumDecodeNullable(_$SessionModeEnumMap, json['mode']),
  paymentIntent: json['payment_intent'] as String?,
  paymentLink: json['payment_link'] as String?,
  paymentMethodCollection: $enumDecodeNullable(
    _$PaymentMethodCollectionEnumMap,
    json['payment_method_collection'],
  ),
  paymentMethodOptions: json['payment_method_options'] as Map<String, dynamic>?,
  paymentStatus: $enumDecodeNullable(
    _$PaymentStatusEnumMap,
    json['payment_status'],
  ),
  phoneNumberCollection: json['phone_number_collection'] == null
      ? null
      : PhoneNumberCollection.fromJson(
          json['phone_number_collection'] as Map<String, dynamic>,
        ),
  recoveredFrom: json['recovered_from'] as String?,
  setupIntent: json['setup_intent'] as String?,
  shippingAddressCollection: json['shipping_address_collection'] == null
      ? null
      : ShippingAddressCollection.fromJson(
          json['shipping_address_collection'] as Map<String, dynamic>,
        ),
  shippingCost: json['shipping_cost'] == null
      ? null
      : ShippingCost.fromJson(json['shipping_cost'] as Map<String, dynamic>),
  shippingDetails: json['shipping_details'] == null
      ? null
      : ShippingDetails.fromJson(
          json['shipping_details'] as Map<String, dynamic>,
        ),
  shippingOptions: (json['shipping_options'] as List<dynamic>?)
      ?.map((e) => ShippingOption.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: $enumDecodeNullable(_$CheckoutSessionStatusEnumMap, json['status']),
  submitType: $enumDecodeNullable(_$SubmitTypeEnumMap, json['submit_type']),
  subscription: json['subscription'] as String?,
  successUrl: json['success_url'] as String?,
  totalDetails: json['total_details'] == null
      ? null
      : TotalDetails.fromJson(json['total_details'] as Map<String, dynamic>),
  url: json['url'] as String?,
);

Map<String, dynamic> _$CheckoutSessionToJson(
  CheckoutSession instance,
) => <String, dynamic>{
  'object': instance.object,
  'id': instance.id,
  'after_expiration': ?instance.afterExpiration?.toJson(),
  'allow_promotion_codes': ?instance.allowPromotionCodes,
  'amount_subtotal': ?instance.amountSubtotal,
  'amount_total': ?instance.amountTotal,
  'automatic_tax': ?instance.automaticTax?.toJson(),
  'billing_address_collection':
      ?_$BillingAddressCollectionEnumMap[instance.billingAddressCollection],
  'cancel_url': ?instance.cancelUrl,
  'client_reference_id': ?instance.clientReferenceId,
  'consent': ?instance.consent?.toJson(),
  'consent_collection': ?instance.consentCollection?.toJson(),
  'created': ?instance.created,
  'currency': ?instance.currency,
  'customer': ?instance.customer,
  'customer_creation': ?_$CustomerCreationEnumMap[instance.customerCreation],
  'customer_details': ?instance.customerDetails?.toJson(),
  'customer_email': ?instance.customerEmail,
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
  'custom_text': ?instance.customText?.toJson(),
  'expires_at': ?instance.expiresAt,
  'invoice': ?instance.invoice,
  'invoice_creation': ?instance.invoiceCreation?.toJson(),
  'livemode': ?instance.livemode,
  'locale': ?instance.locale,
  'metadata': ?instance.metadata,
  'mode': ?_$SessionModeEnumMap[instance.mode],
  'payment_intent': ?instance.paymentIntent,
  'payment_link': ?instance.paymentLink,
  'payment_method_collection':
      ?_$PaymentMethodCollectionEnumMap[instance.paymentMethodCollection],
  'payment_method_options': ?instance.paymentMethodOptions,
  'payment_method_types': instance.paymentMethodTypes
      .map((e) => _$PaymentMethodTypeEnumMap[e]!)
      .toList(),
  'payment_status': ?_$PaymentStatusEnumMap[instance.paymentStatus],
  'phone_number_collection': ?instance.phoneNumberCollection?.toJson(),
  'recovered_from': ?instance.recoveredFrom,
  'setup_intent': ?instance.setupIntent,
  'shipping_address_collection': ?instance.shippingAddressCollection?.toJson(),
  'shipping_cost': ?instance.shippingCost?.toJson(),
  'shipping_details': ?instance.shippingDetails?.toJson(),
  'shipping_options': ?instance.shippingOptions
      ?.map((e) => e.toJson())
      .toList(),
  'status': ?_$CheckoutSessionStatusEnumMap[instance.status],
  'submit_type': ?_$SubmitTypeEnumMap[instance.submitType],
  'subscription': ?instance.subscription,
  'success_url': ?instance.successUrl,
  'total_details': ?instance.totalDetails?.toJson(),
  'url': ?instance.url,
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

const _$BillingAddressCollectionEnumMap = {
  BillingAddressCollection.auto: 'auto',
  BillingAddressCollection.required: 'required',
};

const _$CustomerCreationEnumMap = {
  CustomerCreation.always: 'always',
  CustomerCreation.if_required: 'if_required',
};

const _$SessionModeEnumMap = {
  SessionMode.payment: 'payment',
  SessionMode.setup: 'setup',
  SessionMode.subscription: 'subscription',
};

const _$PaymentMethodCollectionEnumMap = {
  PaymentMethodCollection.always: 'always',
  PaymentMethodCollection.if_required: 'if_required',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.no_payment_required: 'no_payment_required',
  PaymentStatus.paid: 'paid',
  PaymentStatus.unpaid: 'unpaid',
};

const _$CheckoutSessionStatusEnumMap = {
  CheckoutSessionStatus.complete: 'complete',
  CheckoutSessionStatus.expired: 'expired',
  CheckoutSessionStatus.open: 'open',
};

const _$SubmitTypeEnumMap = {
  SubmitType.auto: 'auto',
  SubmitType.book: 'book',
  SubmitType.donate: 'donate',
  SubmitType.pay: 'pay',
  SubmitType.subscribe: 'subscribe',
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
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
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
      'type': _$EventTypeEnumMap[instance.type]!,
    };

const _$_EventObjectEnumMap = {_EventObject.event: 'event'};

const _$EventTypeEnumMap = {
  EventType.invoicePaid: 'invoice.paid',
  EventType.invoicePaymentFailed: 'invoice.payment_failed',
  EventType.invoicePaymentSucceeded: 'invoice.payment_succeeded',
  EventType.customerCreated: 'customer.created',
  EventType.customerUpdated: 'customer.updated',
  EventType.customerDeleted: 'customer.deleted',
  EventType.customerSubscriptionCreated: 'customer.subscription.created',
  EventType.customerSubscriptionUpdated: 'customer.subscription.updated',
  EventType.customerSubscriptionDeleted: 'customer.subscription.deleted',
  EventType.customerSubscriptionTrialWillEnd:
      'customer.subscription.trial_will_end',
  EventType.paymentIntentSucceeded: 'payment_intent.succeeded',
  EventType.paymentIntentPaymentFailed: 'payment_intent.payment_failed',
  EventType.checkoutSessionCompleted: 'checkout.session.completed',
  EventType.checkoutSessionExpired: 'checkout.session.expired',
  EventType.checkoutSessionAsyncPaymentSucceeded:
      'checkout.session.async_payment_succeeded',
  EventType.checkoutSessionAsyncPaymentFailed:
      'checkout.session.async_payment_failed',
};

CustomerEvent _$CustomerEventFromJson(Map<String, dynamic> json) =>
    CustomerEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
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
      'type': _$EventTypeEnumMap[instance.type]!,
    };

ChargeEvent _$ChargeEventFromJson(Map<String, dynamic> json) => ChargeEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: $enumDecode(_$EventTypeEnumMap, json['type']),
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
      'type': _$EventTypeEnumMap[instance.type]!,
    };

PaymentIntentEvent _$PaymentIntentEventFromJson(Map<String, dynamic> json) =>
    PaymentIntentEvent(
      object: $enumDecode(_$_EventObjectEnumMap, json['object']),
      id: json['id'] as String,
      type: $enumDecode(_$EventTypeEnumMap, json['type']),
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
      'type': _$EventTypeEnumMap[instance.type]!,
    };

RefundEvent _$RefundEventFromJson(Map<String, dynamic> json) => RefundEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: $enumDecode(_$EventTypeEnumMap, json['type']),
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
      'type': _$EventTypeEnumMap[instance.type]!,
    };

CheckoutSessionEvent _$CheckoutSessionEventFromJson(
  Map<String, dynamic> json,
) => CheckoutSessionEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: $enumDecode(_$EventTypeEnumMap, json['type']),
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
  'type': _$EventTypeEnumMap[instance.type]!,
};

InvoiceAutomaticTax _$InvoiceAutomaticTaxFromJson(Map<String, dynamic> json) =>
    InvoiceAutomaticTax(
      enabled: json['enabled'] as bool,
      liability: json['liability'] == null
          ? null
          : InvoiceTaxLiability.fromJson(
              json['liability'] as Map<String, dynamic>,
            ),
      provider: json['provider'] as String?,
      status: $enumDecodeNullable(_$AutomaticTaxStatusEnumMap, json['status']),
      disabledReason: $enumDecodeNullable(
        _$AutomaticTaxDisabledReasonEnumMap,
        json['disabled_reason'],
      ),
    );

Map<String, dynamic> _$InvoiceAutomaticTaxToJson(
  InvoiceAutomaticTax instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'liability': ?instance.liability?.toJson(),
  'provider': ?instance.provider,
  'status': ?_$AutomaticTaxStatusEnumMap[instance.status],
  'disabled_reason':
      ?_$AutomaticTaxDisabledReasonEnumMap[instance.disabledReason],
};

const _$AutomaticTaxDisabledReasonEnumMap = {
  AutomaticTaxDisabledReason.finalization_requires_location_inputs:
      'finalization_requires_location_inputs',
  AutomaticTaxDisabledReason.finalization_system_error:
      'finalization_system_error',
};

InvoiceTaxLiability _$InvoiceTaxLiabilityFromJson(Map<String, dynamic> json) =>
    InvoiceTaxLiability(
      account: json['account'] as String?,
      type: $enumDecode(_$IssuerTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$InvoiceTaxLiabilityToJson(
  InvoiceTaxLiability instance,
) => <String, dynamic>{
  'account': ?instance.account,
  'type': _$IssuerTypeEnumMap[instance.type]!,
};

const _$IssuerTypeEnumMap = {
  IssuerType.account: 'account',
  IssuerType.self: 'self',
};

InvoiceStatusTransitions _$InvoiceStatusTransitionsFromJson(
  Map<String, dynamic> json,
) => InvoiceStatusTransitions(
  finalizedAt: _$JsonConverterFromJson<int, DateTime>(
    json['finalized_at'],
    const TimestampConverter().fromJson,
  ),
  markedUncollectibleAt: _$JsonConverterFromJson<int, DateTime>(
    json['marked_uncollectible_at'],
    const TimestampConverter().fromJson,
  ),
  paidAt: _$JsonConverterFromJson<int, DateTime>(
    json['paid_at'],
    const TimestampConverter().fromJson,
  ),
  voidedAt: _$JsonConverterFromJson<int, DateTime>(
    json['voided_at'],
    const TimestampConverter().fromJson,
  ),
);

Map<String, dynamic> _$InvoiceStatusTransitionsToJson(
  InvoiceStatusTransitions instance,
) => <String, dynamic>{
  'finalized_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.finalizedAt,
    const TimestampConverter().toJson,
  ),
  'marked_uncollectible_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.markedUncollectibleAt,
    const TimestampConverter().toJson,
  ),
  'paid_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.paidAt,
    const TimestampConverter().toJson,
  ),
  'voided_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.voidedAt,
    const TimestampConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

InvoiceIssuer _$InvoiceIssuerFromJson(Map<String, dynamic> json) =>
    InvoiceIssuer(
      account: json['account'] as String?,
      type: $enumDecode(_$IssuerTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$InvoiceIssuerToJson(InvoiceIssuer instance) =>
    <String, dynamic>{
      'account': ?instance.account,
      'type': _$IssuerTypeEnumMap[instance.type]!,
    };

InvoiceCustomerShipping _$InvoiceCustomerShippingFromJson(
  Map<String, dynamic> json,
) => InvoiceCustomerShipping(
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  name: json['name'] as String,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$InvoiceCustomerShippingToJson(
  InvoiceCustomerShipping instance,
) => <String, dynamic>{
  'address': ?instance.address?.toJson(),
  'name': instance.name,
  'phone': ?instance.phone,
};

InvoiceLineItemPeriod _$InvoiceLineItemPeriodFromJson(
  Map<String, dynamic> json,
) => InvoiceLineItemPeriod(
  end: const TimestampConverter().fromJson((json['end'] as num).toInt()),
  start: const TimestampConverter().fromJson((json['start'] as num).toInt()),
);

Map<String, dynamic> _$InvoiceLineItemPeriodToJson(
  InvoiceLineItemPeriod instance,
) => <String, dynamic>{
  'end': const TimestampConverter().toJson(instance.end),
  'start': const TimestampConverter().toJson(instance.start),
};

InvoiceLineItemPricing _$InvoiceLineItemPricingFromJson(
  Map<String, dynamic> json,
) => InvoiceLineItemPricing(
  price: json['price'] as String?,
  product: json['product'] as String?,
  type: json['type'] as String?,
  unitAmountDecimal: json['unit_amount_decimal'] as String?,
);

Map<String, dynamic> _$InvoiceLineItemPricingToJson(
  InvoiceLineItemPricing instance,
) => <String, dynamic>{
  'price': ?instance.price,
  'product': ?instance.product,
  'type': ?instance.type,
  'unit_amount_decimal': ?instance.unitAmountDecimal,
};

InvoiceLineItemPriceDetails _$InvoiceLineItemPriceDetailsFromJson(
  Map<String, dynamic> json,
) => InvoiceLineItemPriceDetails(
  price: json['price'] as String,
  product: json['product'] as String,
);

Map<String, dynamic> _$InvoiceLineItemPriceDetailsToJson(
  InvoiceLineItemPriceDetails instance,
) => <String, dynamic>{'price': instance.price, 'product': instance.product};

InvoiceLineItem _$InvoiceLineItemFromJson(Map<String, dynamic> json) =>
    InvoiceLineItem(
      object: $enumDecode(_$_InvoiceLineItemObjectEnumMap, json['object']),
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
      description: json['description'] as String?,
      discountable: json['discountable'] as bool,
      invoice: json['invoice'] as String?,
      livemode: json['livemode'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>?,
      period: InvoiceLineItemPeriod.fromJson(
        json['period'] as Map<String, dynamic>,
      ),
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      pricing: json['pricing'] == null
          ? null
          : InvoiceLineItemPricing.fromJson(
              json['pricing'] as Map<String, dynamic>,
            ),
      quantity: (json['quantity'] as num?)?.toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
    );

Map<String, dynamic> _$InvoiceLineItemToJson(InvoiceLineItem instance) =>
    <String, dynamic>{
      'object': _$_InvoiceLineItemObjectEnumMap[instance.object]!,
      'id': instance.id,
      'amount': instance.amount,
      'currency': instance.currency,
      'description': ?instance.description,
      'discountable': instance.discountable,
      'invoice': ?instance.invoice,
      'livemode': instance.livemode,
      'metadata': ?instance.metadata,
      'period': instance.period.toJson(),
      'price': ?instance.price?.toJson(),
      'pricing': ?instance.pricing?.toJson(),
      'quantity': ?instance.quantity,
      'subtotal': instance.subtotal,
    };

const _$_InvoiceLineItemObjectEnumMap = {
  _InvoiceLineItemObject.line_item: 'line_item',
};

InvoicePaymentSettings _$InvoicePaymentSettingsFromJson(
  Map<String, dynamic> json,
) => InvoicePaymentSettings(
  defaultMandate: json['default_mandate'] as String?,
  paymentMethodOptions: json['payment_method_options'] as Map<String, dynamic>?,
  paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$InvoicePaymentSettingsToJson(
  InvoicePaymentSettings instance,
) => <String, dynamic>{
  'default_mandate': ?instance.defaultMandate,
  'payment_method_options': ?instance.paymentMethodOptions,
  'payment_method_types': ?instance.paymentMethodTypes,
};

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
  object: $enumDecode(_$_InvoiceObjectEnumMap, json['object']),
  id: json['id'] as String,
  accountCountry: json['account_country'] as String?,
  accountName: json['account_name'] as String?,
  accountTaxIds: (json['account_tax_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  amountDue: (json['amount_due'] as num).toInt(),
  amountOverpaid: (json['amount_overpaid'] as num).toInt(),
  amountPaid: (json['amount_paid'] as num).toInt(),
  amountRemaining: (json['amount_remaining'] as num).toInt(),
  amountShipping: (json['amount_shipping'] as num).toInt(),
  application: json['application'] as String?,
  attemptCount: (json['attempt_count'] as num).toInt(),
  attempted: json['attempted'] as bool,
  autoAdvance: json['auto_advance'] as bool,
  automaticTax: InvoiceAutomaticTax.fromJson(
    json['automatic_tax'] as Map<String, dynamic>,
  ),
  automaticallyFinalizesAt: _$JsonConverterFromJson<int, DateTime>(
    json['automatically_finalizes_at'],
    const TimestampConverter().fromJson,
  ),
  billingReason: $enumDecodeNullable(
    _$InvoiceBillingReasonEnumMap,
    json['billing_reason'],
  ),
  collectionMethod: $enumDecode(
    _$InvoiceCollectionMethodEnumMap,
    json['collection_method'],
  ),
  created: const TimestampConverter().fromJson(
    (json['created'] as num).toInt(),
  ),
  currency: json['currency'] as String,
  customFields: (json['custom_fields'] as List<dynamic>?)
      ?.map((e) => InvoiceCustomField.fromJson(e as Map<String, dynamic>))
      .toList(),
  customer: json['customer'] as String,
  customerAccount: json['customer_account'] as String?,
  customerAddress: json['customer_address'] == null
      ? null
      : Address.fromJson(json['customer_address'] as Map<String, dynamic>),
  customerEmail: json['customer_email'] as String?,
  customerName: json['customer_name'] as String?,
  customerPhone: json['customer_phone'] as String?,
  customerShipping: json['customer_shipping'] == null
      ? null
      : InvoiceCustomerShipping.fromJson(
          json['customer_shipping'] as Map<String, dynamic>,
        ),
  customerTaxExempt: $enumDecodeNullable(
    _$CustomerTaxExemptEnumMap,
    json['customer_tax_exempt'],
  ),
  defaultPaymentMethod: json['default_payment_method'] as String?,
  defaultSource: json['default_source'] as String?,
  description: json['description'] as String?,
  discounts: (json['discounts'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  dueDate: _$JsonConverterFromJson<int, DateTime>(
    json['due_date'],
    const TimestampConverter().fromJson,
  ),
  effectiveAt: _$JsonConverterFromJson<int, DateTime>(
    json['effective_at'],
    const TimestampConverter().fromJson,
  ),
  endingBalance: (json['ending_balance'] as num?)?.toInt(),
  footer: json['footer'] as String?,
  hostedInvoiceUrl: json['hosted_invoice_url'] as String?,
  invoicePdf: json['invoice_pdf'] as String?,
  issuer: InvoiceIssuer.fromJson(json['issuer'] as Map<String, dynamic>),
  latestRevision: json['latest_revision'] as String?,
  lines: DataList<InvoiceLineItem>.fromJson(
    json['lines'] as Map<String, dynamic>,
    (value) => InvoiceLineItem.fromJson(value as Map<String, dynamic>),
  ),
  livemode: json['livemode'] as bool,
  metadata: json['metadata'] as Map<String, dynamic>?,
  nextPaymentAttempt: _$JsonConverterFromJson<int, DateTime>(
    json['next_payment_attempt'],
    const TimestampConverter().fromJson,
  ),
  number: json['number'] as String?,
  onBehalfOf: json['on_behalf_of'] as String?,
  paymentSettings: InvoicePaymentSettings.fromJson(
    json['payment_settings'] as Map<String, dynamic>,
  ),
  periodEnd: const TimestampConverter().fromJson(
    (json['period_end'] as num).toInt(),
  ),
  periodStart: const TimestampConverter().fromJson(
    (json['period_start'] as num).toInt(),
  ),
  postPaymentCreditNotesAmount:
      (json['post_payment_credit_notes_amount'] as num).toInt(),
  prePaymentCreditNotesAmount: (json['pre_payment_credit_notes_amount'] as num)
      .toInt(),
  receiptNumber: json['receipt_number'] as String?,
  startingBalance: (json['starting_balance'] as num).toInt(),
  statementDescriptor: json['statement_descriptor'] as String?,
  status: $enumDecodeNullable(_$InvoiceStatusEnumMap, json['status']),
  statusTransitions: InvoiceStatusTransitions.fromJson(
    json['status_transitions'] as Map<String, dynamic>,
  ),
  subscription: json['subscription'] as String?,
  subtotal: (json['subtotal'] as num).toInt(),
  subtotalExcludingTax: (json['subtotal_excluding_tax'] as num?)?.toInt(),
  testClock: json['test_clock'] as String?,
  total: (json['total'] as num).toInt(),
  totalExcludingTax: (json['total_excluding_tax'] as num?)?.toInt(),
  webhooksDeliveredAt: _$JsonConverterFromJson<int, DateTime>(
    json['webhooks_delivered_at'],
    const TimestampConverter().fromJson,
  ),
);

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
  'object': _$_InvoiceObjectEnumMap[instance.object]!,
  'id': instance.id,
  'account_country': ?instance.accountCountry,
  'account_name': ?instance.accountName,
  'account_tax_ids': ?instance.accountTaxIds,
  'amount_due': instance.amountDue,
  'amount_overpaid': instance.amountOverpaid,
  'amount_paid': instance.amountPaid,
  'amount_remaining': instance.amountRemaining,
  'amount_shipping': instance.amountShipping,
  'application': ?instance.application,
  'attempt_count': instance.attemptCount,
  'attempted': instance.attempted,
  'auto_advance': instance.autoAdvance,
  'automatic_tax': instance.automaticTax.toJson(),
  'automatically_finalizes_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.automaticallyFinalizesAt,
    const TimestampConverter().toJson,
  ),
  'billing_reason': ?_$InvoiceBillingReasonEnumMap[instance.billingReason],
  'collection_method':
      _$InvoiceCollectionMethodEnumMap[instance.collectionMethod]!,
  'created': const TimestampConverter().toJson(instance.created),
  'currency': instance.currency,
  'custom_fields': ?instance.customFields?.map((e) => e.toJson()).toList(),
  'customer': instance.customer,
  'customer_account': ?instance.customerAccount,
  'customer_address': ?instance.customerAddress?.toJson(),
  'customer_email': ?instance.customerEmail,
  'customer_name': ?instance.customerName,
  'customer_phone': ?instance.customerPhone,
  'customer_shipping': ?instance.customerShipping?.toJson(),
  'customer_tax_exempt':
      ?_$CustomerTaxExemptEnumMap[instance.customerTaxExempt],
  'default_payment_method': ?instance.defaultPaymentMethod,
  'default_source': ?instance.defaultSource,
  'description': ?instance.description,
  'discounts': ?instance.discounts,
  'due_date': ?_$JsonConverterToJson<int, DateTime>(
    instance.dueDate,
    const TimestampConverter().toJson,
  ),
  'effective_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.effectiveAt,
    const TimestampConverter().toJson,
  ),
  'ending_balance': ?instance.endingBalance,
  'footer': ?instance.footer,
  'hosted_invoice_url': ?instance.hostedInvoiceUrl,
  'invoice_pdf': ?instance.invoicePdf,
  'issuer': instance.issuer.toJson(),
  'latest_revision': ?instance.latestRevision,
  'lines': instance.lines.toJson((value) => value.toJson()),
  'livemode': instance.livemode,
  'metadata': ?instance.metadata,
  'next_payment_attempt': ?_$JsonConverterToJson<int, DateTime>(
    instance.nextPaymentAttempt,
    const TimestampConverter().toJson,
  ),
  'number': ?instance.number,
  'on_behalf_of': ?instance.onBehalfOf,
  'payment_settings': instance.paymentSettings.toJson(),
  'period_end': const TimestampConverter().toJson(instance.periodEnd),
  'period_start': const TimestampConverter().toJson(instance.periodStart),
  'post_payment_credit_notes_amount': instance.postPaymentCreditNotesAmount,
  'pre_payment_credit_notes_amount': instance.prePaymentCreditNotesAmount,
  'receipt_number': ?instance.receiptNumber,
  'starting_balance': instance.startingBalance,
  'statement_descriptor': ?instance.statementDescriptor,
  'status': ?_$InvoiceStatusEnumMap[instance.status],
  'status_transitions': instance.statusTransitions.toJson(),
  'subscription': ?instance.subscription,
  'subtotal': instance.subtotal,
  'subtotal_excluding_tax': ?instance.subtotalExcludingTax,
  'test_clock': ?instance.testClock,
  'total': instance.total,
  'total_excluding_tax': ?instance.totalExcludingTax,
  'webhooks_delivered_at': ?_$JsonConverterToJson<int, DateTime>(
    instance.webhooksDeliveredAt,
    const TimestampConverter().toJson,
  ),
};

const _$_InvoiceObjectEnumMap = {_InvoiceObject.invoice: 'invoice'};

const _$InvoiceBillingReasonEnumMap = {
  InvoiceBillingReason.automatic_pending_invoice_item_invoice:
      'automatic_pending_invoice_item_invoice',
  InvoiceBillingReason.manual: 'manual',
  InvoiceBillingReason.quote_accept: 'quote_accept',
  InvoiceBillingReason.subscription: 'subscription',
  InvoiceBillingReason.subscription_create: 'subscription_create',
  InvoiceBillingReason.subscription_cycle: 'subscription_cycle',
  InvoiceBillingReason.subscription_threshold: 'subscription_threshold',
  InvoiceBillingReason.subscription_update: 'subscription_update',
  InvoiceBillingReason.upcoming: 'upcoming',
};

const _$InvoiceCollectionMethodEnumMap = {
  InvoiceCollectionMethod.charge_automatically: 'charge_automatically',
  InvoiceCollectionMethod.send_invoice: 'send_invoice',
};

const _$CustomerTaxExemptEnumMap = {
  CustomerTaxExempt.exempt: 'exempt',
  CustomerTaxExempt.none: 'none',
  CustomerTaxExempt.reverse: 'reverse',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.open: 'open',
  InvoiceStatus.paid: 'paid',
  InvoiceStatus.uncollectible: 'uncollectible',
  InvoiceStatus.void_: 'void_',
};

InvoiceEvent _$InvoiceEventFromJson(Map<String, dynamic> json) => InvoiceEvent(
  object: $enumDecode(_$_EventObjectEnumMap, json['object']),
  id: json['id'] as String,
  type: $enumDecode(_$EventTypeEnumMap, json['type']),
  data: EventData<Invoice>.fromJson(
    json['data'] as Map<String, dynamic>,
    (value) => Invoice.fromJson(value as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _$InvoiceEventToJson(InvoiceEvent instance) =>
    <String, dynamic>{
      'object': _$_EventObjectEnumMap[instance.object]!,
      'id': instance.id,
      'data': instance.data.toJson((value) => value.toJson()),
      'type': _$EventTypeEnumMap[instance.type]!,
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
      metadata: json['metadata'] as Map<String, dynamic>?,
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

const _$SetupFutureUsageEnumMap = {
  SetupFutureUsage.on_session: 'on_session',
  SetupFutureUsage.off_session: 'off_session',
};

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

PriceRecurring _$PriceRecurringFromJson(Map<String, dynamic> json) =>
    PriceRecurring(
      interval: $enumDecode(_$RecurringIntervalEnumMap, json['interval']),
      intervalCount: (json['interval_count'] as num).toInt(),
      trialPeriodDays: (json['trial_period_days'] as num?)?.toInt(),
      usageType: $enumDecode(_$UsageTypeEnumMap, json['usage_type']),
    );

Map<String, dynamic> _$PriceRecurringToJson(PriceRecurring instance) =>
    <String, dynamic>{
      'interval': _$RecurringIntervalEnumMap[instance.interval]!,
      'interval_count': instance.intervalCount,
      'trial_period_days': ?instance.trialPeriodDays,
      'usage_type': _$UsageTypeEnumMap[instance.usageType]!,
    };

const _$RecurringIntervalEnumMap = {
  RecurringInterval.day: 'day',
  RecurringInterval.week: 'week',
  RecurringInterval.month: 'month',
  RecurringInterval.year: 'year',
};

const _$UsageTypeEnumMap = {
  UsageType.licensed: 'licensed',
  UsageType.metered: 'metered',
};

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
  object: $enumDecode(_$_PriceObjectEnumMap, json['object']),
  id: json['id'] as String,
  active: json['active'] as bool,
  currency: json['currency'] as String,
  product: json['product'] as String,
  type: $enumDecode(_$PriceTypeEnumMap, json['type']),
  unitAmount: (json['unit_amount'] as num).toInt(),
  nickname: json['nickname'] as String?,
  recurring: json['recurring'] == null
      ? null
      : PriceRecurring.fromJson(json['recurring'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
  'object': _$_PriceObjectEnumMap[instance.object]!,
  'id': instance.id,
  'active': instance.active,
  'currency': instance.currency,
  'product': instance.product,
  'type': _$PriceTypeEnumMap[instance.type]!,
  'unit_amount': instance.unitAmount,
  'nickname': ?instance.nickname,
  'recurring': ?instance.recurring?.toJson(),
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
  created: (json['created'] as num).toInt(),
  defaultPrice: json['default_price'] as String?,
  description: json['description'] as String?,
  name: json['name'] as String,
  updated: (json['updated'] as num).toInt(),
);

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
  'object': _$_ProductObjectEnumMap[instance.object]!,
  'id': instance.id,
  'active': instance.active,
  'created': instance.created,
  'default_price': ?instance.defaultPrice,
  'description': ?instance.description,
  'name': instance.name,
  'updated': instance.updated,
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
  customerId: json['customer_id'] as String?,
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
  'customer_id': ?instance.customerId,
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

TransferData _$TransferDataFromJson(Map<String, dynamic> json) => TransferData(
  destination: json['destination'] as String,
  amount: (json['amount'] as num?)?.toInt(),
);

Map<String, dynamic> _$TransferDataToJson(TransferData instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'amount': ?instance.amount,
    };

PaymentIntentMetadata _$PaymentIntentMetadataFromJson(
  Map<String, dynamic> json,
) => PaymentIntentMetadata(
  product: json['product'] as String?,
  payment: json['payment'] as String?,
  groupId: (json['group_id'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaymentIntentMetadataToJson(
  PaymentIntentMetadata instance,
) => <String, dynamic>{
  'product': ?instance.product,
  'payment': ?instance.payment,
  'group_id': ?instance.groupId,
};

PaymentIntentData _$PaymentIntentDataFromJson(Map<String, dynamic> json) =>
    PaymentIntentData(
      receiptEmail: json['receipt_email'] as String?,
      setupFutureUsage: $enumDecodeNullable(
        _$SetupFutureUsageEnumMap,
        json['setup_future_usage'],
      ),
      applicationFeeAmount: (json['application_fee_amount'] as num?)?.toInt(),
      metadata: json['metadata'] == null
          ? null
          : PaymentIntentMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>,
            ),
      transferData: json['transfer_data'] == null
          ? null
          : TransferData.fromJson(
              json['transfer_data'] as Map<String, dynamic>,
            ),
      onBehalfOf: json['on_behalf_of'] as String?,
    );

Map<String, dynamic> _$PaymentIntentDataToJson(
  PaymentIntentData instance,
) => <String, dynamic>{
  'receipt_email': ?instance.receiptEmail,
  'setup_future_usage': ?_$SetupFutureUsageEnumMap[instance.setupFutureUsage],
  'application_fee_amount': ?instance.applicationFeeAmount,
  'metadata': ?instance.metadata?.toJson(),
  'transfer_data': ?instance.transferData?.toJson(),
  'on_behalf_of': ?instance.onBehalfOf,
};

SubscriptionMetadata _$SubscriptionMetadataFromJson(
  Map<String, dynamic> json,
) => SubscriptionMetadata(groupId: (json['group_id'] as num?)?.toInt());

Map<String, dynamic> _$SubscriptionMetadataToJson(
  SubscriptionMetadata instance,
) => <String, dynamic>{'group_id': ?instance.groupId};

SubscriptionData _$SubscriptionDataFromJson(
  Map<String, dynamic> json,
) => SubscriptionData(
  trialEnd: (json['trial_end'] as num?)?.toInt(),
  trialPeriodDays: (json['trial_period_days'] as num?)?.toInt(),
  metadata: json['metadata'] == null
      ? null
      : SubscriptionMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  applicationFeePercent: (json['application_fee_percent'] as num?)?.toDouble(),
  transferData: json['transfer_data'] == null
      ? null
      : TransferData.fromJson(json['transfer_data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubscriptionDataToJson(SubscriptionData instance) =>
    <String, dynamic>{
      'trial_end': ?instance.trialEnd,
      'trial_period_days': ?instance.trialPeriodDays,
      'metadata': ?instance.metadata?.toJson(),
      'application_fee_percent': ?instance.applicationFeePercent,
      'transfer_data': ?instance.transferData?.toJson(),
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
      recurring: json['recurring'] == null
          ? null
          : PriceRecurring.fromJson(json['recurring'] as Map<String, dynamic>),
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$CreatePriceRequestToJson(CreatePriceRequest instance) =>
    <String, dynamic>{
      'product': instance.product,
      'unit_amount': instance.unitAmount,
      'currency': instance.currency,
      'recurring': ?instance.recurring?.toJson(),
      'nickname': ?instance.nickname,
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

UpdatePriceRequest _$UpdatePriceRequestFromJson(Map<String, dynamic> json) =>
    UpdatePriceRequest(
      id: json['id'] as String,
      active: json['active'] as bool?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$UpdatePriceRequestToJson(UpdatePriceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': ?instance.active,
      'metadata': ?instance.metadata,
      'nickname': ?instance.nickname,
    };

UpdateProductRequest _$UpdateProductRequestFromJson(
  Map<String, dynamic> json,
) => UpdateProductRequest(
  id: json['id'] as String,
  name: json['name'] as String?,
  active: json['active'] as bool?,
  defaultPrice: json['default_price'] as String?,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$UpdateProductRequestToJson(
  UpdateProductRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': ?instance.name,
  'active': ?instance.active,
  'default_price': ?instance.defaultPrice,
  'description': ?instance.description,
  'metadata': ?instance.metadata,
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
  collectionMethod: $enumDecodeNullable(
    _$SubscriptionCollectionMethodEnumMap,
    json['collection_method'],
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
      'collection_method':
          ?_$SubscriptionCollectionMethodEnumMap[instance.collectionMethod],
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'items': instance.items.toJson((value) => value.toJson()),
      'metadata': ?instance.metadata,
    };

const _$_SubscriptionObjectEnumMap = {
  _SubscriptionObject.subscription: 'subscription',
};

const _$SubscriptionCollectionMethodEnumMap = {
  SubscriptionCollectionMethod.charge_automatically: 'charge_automatically',
  SubscriptionCollectionMethod.send_invoice: 'send_invoice',
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
