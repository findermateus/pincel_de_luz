import '../database.dart';

class ContatoTable extends SupabaseTable<ContatoRow> {
  @override
  String get tableName => 'contato';

  @override
  ContatoRow createRow(Map<String, dynamic> data) => ContatoRow(data);
}

class ContatoRow extends SupabaseDataRow {
  ContatoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ContatoTable();

  int get idContato => getField<int>('id_contato')!;
  set idContato(int value) => setField<int>('id_contato', value);

  String get nomeContato => getField<String>('nome_contato')!;
  set nomeContato(String value) => setField<String>('nome_contato', value);

  String? get emailContato => getField<String>('email_contato');
  set emailContato(String? value) => setField<String>('email_contato', value);
}
