import '../database.dart';

class PricesTable extends SupabaseTable<PricesRow> {
  @override
  String get tableName => 'prices';

  @override
  PricesRow createRow(Map<String, dynamic> data) => PricesRow(data);
}

class PricesRow extends SupabaseDataRow {
  PricesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PricesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get productID => getField<String>('productID');
  set productID(String? value) => setField<String>('productID', value);
}
