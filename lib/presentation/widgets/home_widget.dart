import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/cubit/get_products/get_products_cubit.dart';
import 'package:fintech/presentation/widgets/send_money_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              margin: const EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xEAF5F5F8),
              ),
              child: Assets.svg.defaultPerson.svg(),
            ),
            Text(
              r'Good day,Zesan',
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: const Color(0xEA000C14),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xEAFFFFFF),
        elevation: 0.0,
        actions: <Widget>[
          FloatingActionButton.small(
            tooltip: 'Search',
            heroTag: UniqueKey(),
            onPressed: () {},
            backgroundColor: const Color(0xEAD1ECFF),
            elevation: 0.0,
            child: Assets.svg.search.svg(
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
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(top: 24.0, bottom: 24.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.blue,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          r'Ebl titanium account',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        Text(
                          r'Arian zesan',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          r'$6,190.00',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 36.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          r'Total balance',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        r'Added card:05',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        r'Ac. no. 2234521',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Features',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See more',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ElevatedButton.icon(
                        onPressed: () => showModalBottomSheet<void>(
                          backgroundColor: const Color(0xEAF2F3F3),
                          builder: (context) => const SendMoneyWidget(),
                          context: context,
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(5.0))),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xEAF2F3F3)),
                          elevation: MaterialStateProperty.all(0.0),
                        ),
                        icon: Assets.svg.moneySend.svg(),
                        label: Text(
                          r'Send',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: const Color(0xEA000C14),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xEAF2F3F3)),
                        ),
                        icon: Assets.svg.moneyRecive.svg(),
                        label: Text(
                          r'Receive',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: const Color(0xEA000C14),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xEAF2F3F3)),
                        elevation: MaterialStateProperty.all(0.0),
                      ),
                      icon: Assets.svg.award.svg(),
                      label: Text(
                        r'Rewards',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: const Color(0xEA000C14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    r'Recent Product',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          r'All',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 16.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            BlocBuilder<GetProductsCubit, GetProductsState>(
              builder: (context, state) => state.maybeWhen(
                success: (success) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: success.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          margin: const EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            color: Colors.grey.withOpacity(0.2),
                            image: DecorationImage(
                              image: NetworkImage('https://test-api.afg-indo.com/storage/product_images/${success.elementAt(index).image}'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    success.elementAt(index).name,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                      color: const Color(0xEA000C14),
                                    ),
                                  ),
                                  Text(
                                    NumberFormat.currency(locale: "en_US", symbol: success.elementAt(index).price > 3 ? "+ \$" : "- \$").format(success.elementAt(index).price),
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                      color: success.elementAt(index).price > 3 ? const Color(0xEA199EFF) : const Color(0xEAFF1919),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                DateFormat('d MMM y').format(DateTime.parse(success.elementAt(index).date)),
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
                      ],
                    ),
                  ),
                ),
                orElse: () => const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
