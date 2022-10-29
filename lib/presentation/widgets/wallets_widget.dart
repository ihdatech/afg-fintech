import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletsWidget extends StatelessWidget {
  const WalletsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wallets',
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 24.0,
            color: const Color(0xEA000C14),
          ),
        ),
        backgroundColor: const Color(0xEAFFFFFF),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          FloatingActionButton.small(
            tooltip: 'Search',
            heroTag: UniqueKey(),
            onPressed: () {},
            backgroundColor: const Color(0xEAD1ECFF),
            elevation: 0.0,
            child: Assets.svg.add.svg(
              height: 19.0,
              width: 19.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 165.0,
              margin: const EdgeInsets.only(top: 24.0, bottom: 24.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(right: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: index == 0 ? Colors.blue : Colors.blueGrey.withOpacity(0.1),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Assets.svg.mastercard.svg(
                                width: 18.0,
                                height: 18.0,
                                color: index == 0 ? null : Colors.grey.withOpacity(0.6),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Physical ebl card',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                ),
                              ),
                            ),
                            Assets.svg.moreCircle.svg(
                              width: 18.0,
                              height: 18.0,
                              color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(top: 8.0, right: 16.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    width: 1.0,
                                  ),
                                  right: BorderSide(
                                    color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    width: 1.0,
                                  ),
                                  bottom: BorderSide(
                                    color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Number',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    ),
                                  ),
                                  Text(
                                    '**** 2437 **** 2424',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 32.0, top: 8.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    width: 1.0,
                                  ),
                                  bottom: BorderSide(
                                    color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    'Exp.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    ),
                                  ),
                                  Text(
                                    '12/29',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Current balance',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                                color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                              ),
                            ),
                            Text(
                              r'$2,960.00',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 24.0,
                                color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text(
              'Total spending',
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, top: 16.0, right: 15.0, bottom: 5.0),
              margin: const EdgeInsets.only(bottom: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Day',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                      color: const Color(0xEA999EA1),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Week',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                          color: const Color(0xEA000C14),
                        ),
                      ),
                      Container(
                        height: 8.0,
                        width: 8.0,
                        margin: const EdgeInsets.only(top: 3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: const Color(0xEA199EFF),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Month',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                      color: const Color(0xEA999EA1),
                    ),
                  ),
                  Text(
                    'Custom range',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                      color: const Color(0xEA999EA1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 240.0,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: const Color(0xEAF2F3F3),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xEAF2F3F3),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            r'Weekly spend',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              color: const Color(0xEA000C14),
                            ),
                          ),
                        ),
                        Text(
                          r'$1,454.00',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: const Color(0xEA000C14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xEAF2F3F3),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            r'Shopping',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              color: const Color(0xEA000C14),
                            ),
                          ),
                        ),
                        Text(
                          r'$890.00',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: const Color(0xEA000C14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xEAF2F3F3),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            r'Others',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              color: const Color(0xEA000C14),
                            ),
                          ),
                        ),
                        Text(
                          r'$564.00',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            color: const Color(0xEA000C14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: const Color(0xEAF2F3F3),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          r'Weekly income',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                            color: const Color(0xEA000C14),
                          ),
                        ),
                      ),
                      Text(
                        r'$2,960.00',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                          color: const Color(0xEA000C14),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xEAF2F3F3)),
                      elevation: MaterialStateProperty.all(0.0),
                      padding: MaterialStateProperty.all(const EdgeInsets.only(left: 8.0, top: 10, right: 8.0, bottom: 10.0)),
                    ),
                    child: Text(
                      'See details',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                        color: const Color(0xEA000C14),
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
