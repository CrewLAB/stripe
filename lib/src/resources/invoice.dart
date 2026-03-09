import 'dart:async';

import 'package:stripe/messages.dart';

import '../client.dart';
import '_resource.dart';

class InvoiceResource extends Resource<Invoice> {
  InvoiceResource(Client client) : super(client);

  Future<Invoice> retrieve(String invoiceId) async {
    final map = await get('invoices/$invoiceId');
    return Invoice.fromJson(map);
  }

  Future<DataList<Invoice>> list([ListInvoicesRequest? request]) async {
    final map = await get('invoices', queryParameters: request?.toJson());
    return DataList<Invoice>.fromJson(
        map, (value) => Invoice.fromJson(value as Map<String, dynamic>));
  }
}
