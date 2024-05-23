import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Payslip',
        home: Scaffold(
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
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/vectors/vector_x2.svg",
                height: 3.h,
                width: 6.w,
              ),
            ),
          ),
          body: const Payslipscreen(),
        ),
      );
    });
  }
}

class Payslipscreen extends StatelessWidget {
  const Payslipscreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                          'Abc Xyz',
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
                          '000000000000000',
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
                          '000000000000000',
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
                          'TGT',
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                  //earning end
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
                                        "00",
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
                                        "00",
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
                                        "00",
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
                  //attendance end
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                          "₹00000.00",
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
                                child: Text(
                                  '₹',
                                  style: GoogleFonts.getFont(
                                    'Noto Sans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 6.w,
                                    color: const Color(0xFF020735),
                                  ),
                                ),
                              ),
                              Text(
                                '000000.00',
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
                          'Seven Lakhs Seven Thousand Seven Hundred Seventy Seven only',
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
