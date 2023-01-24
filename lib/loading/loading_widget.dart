import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({
    Key? key,
    this.id,
    this.name,
  }) : super(key: key);

  final String? id;
  final String? name;

  @override
  _LoadingWidgetState createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));

      context.pushNamed(
        'InfoProduct',
        queryParams: {
          'productName': serializeParam(
            widget.name,
            ParamType.String,
          ),
          'pruductID': serializeParam(
            widget.id,
            ParamType.String,
          ),
        }.withoutNulls,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets2.lottiefiles.com/private_files/lf30_fup2uejx.json',
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.cover,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}
