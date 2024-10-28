import '/backend/supabase/supabase.dart';
import '/components/confirmation_modal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sobre_nos_widget.dart' show SobreNosWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SobreNosModel extends FlutterFlowModel<SobreNosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DigiteAqui widget.
  FocusNode? digiteAquiFocusNode;
  TextEditingController? digiteAquiTextController;
  String? Function(BuildContext, String?)? digiteAquiTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    digiteAquiFocusNode?.dispose();
    digiteAquiTextController?.dispose();
  }
}
