import '../database.dart';

class ResultinfoTable extends SupabaseTable<ResultinfoRow> {
  @override
  String get tableName => 'resultinfo';

  @override
  ResultinfoRow createRow(Map<String, dynamic> data) => ResultinfoRow(data);
}

class ResultinfoRow extends SupabaseDataRow {
  ResultinfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ResultinfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get store => getField<String>('store');
  set store(String? value) => setField<String>('store', value);

  String? get amount => getField<String>('amount');
  set amount(String? value) => setField<String>('amount', value);

  String? get sum => getField<String>('sum');
  set sum(String? value) => setField<String>('sum', value);
}
