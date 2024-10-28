import '../database.dart';

class MensagemTable extends SupabaseTable<MensagemRow> {
  @override
  String get tableName => 'mensagem';

  @override
  MensagemRow createRow(Map<String, dynamic> data) => MensagemRow(data);
}

class MensagemRow extends SupabaseDataRow {
  MensagemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagemTable();

  int get idMensagem => getField<int>('id_mensagem')!;
  set idMensagem(int value) => setField<int>('id_mensagem', value);

  int? get contato => getField<int>('contato');
  set contato(int? value) => setField<int>('contato', value);

  String? get assunto => getField<String>('assunto');
  set assunto(String? value) => setField<String>('assunto', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);
}
