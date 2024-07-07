import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salary_slip/models/api_data.dart';
import 'package:salary_slip/provider/loginprovider.dart';

class PayDetails extends StatelessWidget {
  static const payDetailRoute = "/pay/detail";
  final Employee data;
  const PayDetails({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payslip',
          style: GoogleFonts.getFont(
            'Noto Sans',
            fontWeight: FontWeight.w300,
            fontSize: 8.5.w,
            color: const Color(0xFF000000),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/vectors/vector_x2.svg",
            height: 3.h,
            width: 6.w,
          ),
        ),
      ),
      body: Payslipscreen(
        data: data,
      ),
    );
  }
}

class Payslipscreen extends StatelessWidget {
  final Employee data;
  const Payslipscreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var uuid = context.watch<Login>().user?.uid;
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(17, 0, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(26.6, 15, 26.6, 13),
                    child: Text(
                      'Guru Tegh Bahadur Institute of Technology',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Noto Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 6.w,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 16.5, 1),
                          child: Text(
                            'February 2024',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w300,
                              fontSize: 7.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0x70000000)),
                              borderRadius: BorderRadius.circular(2.5.w),
                              color: const Color(0xFF020735),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(3, 3),
                                  blurRadius: 2.7,
                                ),
                              ],
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(13, 7, 18.4, 8),
                              child: Text(
                                'Download',
                                style: GoogleFonts.getFont(
                                  'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 4.5.w,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name  -    ',
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 5.w,
                            color: const Color(0xFF000000),
                          ),
                        ),
                        Text(
                          data.name ?? "",
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 5.25.w,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 18.2, 0),
                          child: Text(
                            'UID Number  - ',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 5.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        Text(
                          uuid?.substring(0, 15) ?? "",
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 15.px,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15.1, 0),
                          child: Text(
                            'PF Number  - ',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 5.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        Text(
                          data.pfNumber ?? "",
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 5.25.w,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                          child: Text(
                            'Designation  - ',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 5.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        Text(
                          data.designation ?? "",
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 5.25.w,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          child: Text(
                            'Earnings',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 5.25.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(3.5.w),
                            color: const Color(0xFFC1DBFA),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(5, 5),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(21, 8, 21.5, 11),
                              child: Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(),
                                  1: FixedColumnWidth(0.0),
                                  2: FlexColumnWidth(),
                                },
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Basic Pay",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.basicPay}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "A.G.P",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.agp}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "D.A.",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.da}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "H.R.A",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.hra}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "TPT",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.tpt}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Others",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.other}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Gross Earnings",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "=",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.gross}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //******************earning end********************
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          child: Text(
                            'Attendance',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 5.25.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(3.5.w),
                            color: const Color(0xFFACEBB6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(5, 5),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Container(
                            padding:
                                const EdgeInsets.fromLTRB(21, 17, 23.3, 16),
                            child: Table(
                              columnWidths: const {
                                0: FixedColumnWidth(240.0),
                                1: FlexColumnWidth()
                              },
                              children: [
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6.0),
                                    child: Text(
                                      "Number of days in a month",
                                      style: GoogleFonts.getFont(
                                        'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 4.5.w,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6.0),
                                    child: Align(
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        data.totaldays ?? "",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6.0),
                                    child: Text(
                                      "Number of days absent",
                                      style: GoogleFonts.getFont(
                                        'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 4.5.w,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6.0),
                                    child: Align(
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        data.dayabsent ?? "",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6.0),
                                    child: Text(
                                      "Number of days present",
                                      style: GoogleFonts.getFont(
                                        'Noto Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 4.5.w,
                                        color: const Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 6.0, bottom: 6.0),
                                    child: Align(
                                      alignment: AlignmentDirectional.centerEnd,
                                      child: Text(
                                        data.daypresent ?? "",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //********************attendance end**********************
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          child: Text(
                            'Deductions',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 5.25.w,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF000000)),
                            borderRadius: BorderRadius.circular(3.5.w),
                            color: const Color(0xFFFFC7C7),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x40000000),
                                offset: Offset(5, 5),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 4, 21.5, 4),
                              child: Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(),
                                  1: FixedColumnWidth(0.0),
                                  2: FlexColumnWidth(),
                                },
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Employee PF",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.employeepf}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Taxes",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.taxes}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Advance/Loan(s)",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.5.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.advloans}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, bottom: 5.0),
                                      child: Text(
                                        "Gross Deductions",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 4.25.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 1.0, bottom: 5.0),
                                      child: Text(
                                        "=",
                                        style: GoogleFonts.getFont(
                                          'Noto Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 6.w,
                                          color: const Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 3.5, bottom: 5.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.centerEnd,
                                        child: Text(
                                          "₹${data.grossdeductions}",
                                          style: GoogleFonts.getFont(
                                            'Noto Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 5.w,
                                            color: const Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 13.6, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 14, 5),
                          child: Text(
                            'Net Salary',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 6.w,
                              color: const Color(0xFF020735),
                            ),
                          ),
                        ),
                        Text(
                          '=',
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 8.w,
                            color: const Color(0xFF020735),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 4.9, 0),
                              ),
                              Text(
                                "₹${data.net}",
                                style: GoogleFonts.getFont(
                                  'Noto Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 6.w,
                                  color: const Color(0xFF020735),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 28.7, 13),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: Text(
                            'Net Salary in words -',
                            style: GoogleFonts.getFont(
                              'Noto Sans',
                              fontWeight: FontWeight.w400,
                              fontSize: 6.w,
                              color: const Color(0xFF020735),
                            ),
                          ),
                        ),
                        Text(
                          data.salwords ?? " ",
                          style: GoogleFonts.getFont(
                            'Noto Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 4.5.w,
                            color: const Color(0xFF020735),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(2.2, 5, 3.2, 10),
                    child: Text(
                      'This is computer generated document does not require any signature. For any query please contact Director/ Administrative Officer.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Noto Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 2.5.w,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
