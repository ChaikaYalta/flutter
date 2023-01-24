import '../database.dart';

class SpisanieTable extends SupabaseTable<SpisanieRow> {
  @override
  String get tableName => 'spisanie';

  @override
  SpisanieRow createRow(Map<String, dynamic> data) => SpisanieRow(data);
}

class SpisanieRow extends SupabaseDataRow {
  SpisanieRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpisanieTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  List<dynamic> get info => getListField<dynamic>('info');
  set info(List<dynamic>? value) => setListField<dynamic>('info', value);
}
