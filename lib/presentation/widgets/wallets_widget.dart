
import 'package:fintech/data/remote/models/balance_model.dart';
import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/getx/get_cards_controller.dart';
import 'package:fintech/presentation/manager/getx/get_spending_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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
            child: SvgPicture.asset(
              Assets.svg.add,
              height: 19.0,
              width: 19.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GetBuilder<GetCardsController>(
              builder: (controller) => SizedBox(
                height: controller.successController.value.isNotEmpty ? 200.0 : 0.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                  itemCount: controller.successController.value.length,
                  itemBuilder: (context, index) => Container(
                    width: 190.0,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(right: 16.0, bottom: 24.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: index == 0 ? Colors.blue : Colors.blueGrey.withOpacity(0.1),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0,
                        ),
                      ],
                      color: index == 0 ? Colors.blue : Colors.blueGrey.withOpacity(0.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: SvgPicture.asset(
                                      controller.successController.value.elementAt(index).logo,
                                      color: index == 0 ? null : Colors.grey.withOpacity(0.6),
                                      height: 18.0,
                                      width: 18.0,
                                    ),
                                  ),
                                  Text(
                                    controller.successController.value.elementAt(index).type,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                      color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SvgPicture.asset(
                              Assets.svg.moreCircle,
                              color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                              height: 18.0,
                              width: 18.0,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
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
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.blueGrey.withOpacity(0.1),
                                      offset: const Offset(1.1, 1.1),
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Number\n${hideNumber(controller.successController.value.elementAt(index).number)}',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.manrope(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10.0,
                                    color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
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
                                  child: Text(
                                    'Exp.\n${DateFormat('dd/yy', 'en_US').format(DateTime.parse(controller.successController.value.elementAt(index).exp))}',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Current balance',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                            color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          NumberFormat.currency(locale: 'en_US', symbol: '\$').format(controller.successController.value.elementAt(index).balance),
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 24.0,
                            color: index == 0 ? Colors.white.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
              child: Text(
                'Total spending',
                textAlign: TextAlign.start,
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15.0, top: 16.0, right: 15.0, bottom: 5.0),
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
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
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: const Color(0xEAF2F3F3),
                ),
              ),
            ),
            GetBuilder<GetSpendingController>(
              builder: (controller) {
                List<BalanceModel> itemSpending = controller.successController.value?.spending ?? [];
                return SizedBox(
                  height: 78.0,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: itemSpending.length,
                    itemBuilder: (context, index) => SizedBox(
                      width: (MediaQuery.of(context).size.width - 32.0) / itemSpending.length,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: EdgeInsets.only(right: 1 + index == itemSpending.length ? 0.0 : 8.0, bottom: 8.0),
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
                                itemSpending.elementAt(index).type,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                  // color: const Color(0xEA000C14),
                                ),
                              ),
                            ),
                            Text(
                              NumberFormat.currency(locale: "en_US", symbol: "\$").format(itemSpending.elementAt(index).balance),
                              textAlign: TextAlign.start,
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                // color: const Color(0xEA000C14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            GetBuilder<GetSpendingController>(
              builder: (controller) => Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
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
                            controller.successController.value?.income.type ?? '',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.0,
                              // color: const Color(0xEA000C14),
                            ),
                          ),
                        ),
                        Text(
                          NumberFormat.currency(locale: "en_US", symbol: "\$").format(controller.successController.value?.income.balance ?? 0),
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                            // color: const Color(0xEA000C14),
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
            ),
          ],
        ),
      ),
    );
  }

  String hideNumber(int number) {
    List<String> listString = number.toString().replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ").split(' ')
      ..elementAt(1)
      ..elementAt(3);
    return '**** ${listString[1]} **** ${listString[3]}';
  }
}
