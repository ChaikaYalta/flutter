import '../backend/supabase/supabase.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoProductWidget extends StatefulWidget {
  const InfoProductWidget({
    Key? key,
    this.pruductID,
    this.productName,
  }) : super(key: key);

  final String? pruductID;
  final String? productName;

  @override
  _InfoProductWidgetState createState() => _InfoProductWidgetState();
}

class _InfoProductWidgetState extends State<InfoProductWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<PricesRow>>(
      future: PricesTable().queryRows(
        queryFn: (q) => q.eq(
          'productID',
          widget.pruductID,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: SpinKitCubeGrid(
                color: Color(0xA54B39EF),
                size: 100,
              ),
            ),
          );
        }
        List<PricesRow> infoProductPricesRowList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Color(0x00FFFFFF),
              borderRadius: 30,
              buttonSize: 60,
              fillColor: Color(0x00FFFFFF),
              icon: Icon(
                Icons.chevron_left_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                context.pushNamed('Products');
              },
            ),
            title: Text(
              'Остатки',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                      child: Text(
                        widget.productName!,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).gray200,
                              fontSize: 18,
                            ),
                      ),
                    ),
                    Expanded(
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor: FlutterFlowTheme.of(context).gray200,
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText1,
                              indicatorColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              tabs: [
                                Tab(
                                  text: 'Остатки',
                                ),
                                Tab(
                                  text: 'Динамика цен',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: FutureBuilder<
                                              List<ResultinfoRow>>(
                                            future: ResultinfoTable().queryRows(
                                              queryFn: (q) => q,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ResultinfoRow>
                                                  listViewResultinfoRowList =
                                                  snapshot.data!;
                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewResultinfoRowList
                                                        .length,
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewResultinfoRow =
                                                      listViewResultinfoRowList[
                                                          listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 5, 0, 5),
                                                    child: Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x33FFFFFF),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4,
                                                            color: Color(
                                                                0x33000000),
                                                            offset:
                                                                Offset(0, 2),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10,
                                                                    10, 10, 10),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Склад:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .gray200,
                                                                      ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      listViewResultinfoRow
                                                                          .store!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).gray200,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Остаток:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .gray200,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  listViewResultinfoRow
                                                                      .amount!
                                                                      .maybeHandleOverflow(
                                                                          maxChars:
                                                                              5),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .gray200,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FutureBuilder<List<PricesRow>>(
                                          future: PricesTable().queryRows(
                                            queryFn: (q) => q
                                                .eq(
                                                  'productID',
                                                  widget.pruductID,
                                                )
                                                .order('date'),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<PricesRow>
                                                listViewPricesRowList =
                                                snapshot.data!;
                                            return ListView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  listViewPricesRowList.length,
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewPricesRow =
                                                    listViewPricesRowList[
                                                        listViewIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Container(
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x32FFFFFF),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Дата ${dateTimeFormat(
                                                              'd/M/y',
                                                              listViewPricesRow
                                                                  .date,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            )}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .gray200,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Text(
                                                            'Цена: ${listViewPricesRow.price?.toString()}₽',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .gray200,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
