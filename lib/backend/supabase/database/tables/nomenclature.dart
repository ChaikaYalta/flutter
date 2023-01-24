import '../database.dart';

class NomenclatureTable extends SupabaseTable<NomenclatureRow> {
  @override
  String get tableName => 'nomenclature';

  @override
  NomenclatureRow createRow(Map<String, dynamic> data) => NomenclatureRow(data);
}

class NomenclatureRow extends SupabaseDataRow {
  NomenclatureRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NomenclatureTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get nameId => getField<String>('name_id');
  set nameId(String? value) => setField<String>('name_id', value);

  String? get nameType => getField<String>('name_type');
  set nameType(String? value) => setField<String>('name_type', value);
}
