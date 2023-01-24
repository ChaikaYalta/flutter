import '../database.dart';

class SpisanieNewTable extends SupabaseTable<SpisanieNewRow> {
  @override
  String get tableName => 'spisanie_new';

  @override
  SpisanieNewRow createRow(Map<String, dynamic> data) => SpisanieNewRow(data);
}

class SpisanieNewRow extends SupabaseDataRow {
  SpisanieNewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpisanieNewTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
