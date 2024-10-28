import '../database.dart';

class SobreNosTable extends SupabaseTable<SobreNosRow> {
  @override
  String get tableName => 'sobreNos';

  @override
  SobreNosRow createRow(Map<String, dynamic> data) => SobreNosRow(data);
}

class SobreNosRow extends SupabaseDataRow {
  SobreNosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SobreNosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get textData => getField<String>('textData');
  set textData(String? value) => setField<String>('textData', value);
}
