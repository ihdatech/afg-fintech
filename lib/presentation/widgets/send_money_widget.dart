import 'package:fintech/presentation/manager/assets/assets.gen.dart';
import 'package:fintech/presentation/manager/cubit/get_products/get_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SendMoneyWidget extends StatelessWidget {
  const SendMoneyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 5.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xEA666D72),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Text(
              r'Send money',
              textAlign: TextAlign.center,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              r'Select card',
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 37.0,
            margin: const EdgeInsets.only(bottom: 24.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ElevatedButton.icon(
                  onPressed: index == 0 ? () {} : null,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                    textStyle: MaterialStateProperty.all(GoogleFonts.manrope(fontWeight: FontWeight.w600, fontSize: 12.0)),
                  ),
                  icon: Assets.svg.visa.svg(color: index == 0 ? null : Colors.black54),
                  label: const Text(r'Physical ebl card'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              r'Choose recipient',
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            padding: const EdgeInsets.only(left: 10.0, top: 18.0, right: 10.0, bottom: 18.0),
            margin: const EdgeInsets.only(bottom: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xEAFFFFFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  r'Type name/card/phone number/email',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    fontSize: 10.0,
                    color: const Color(0xEA999EA1),
                  ),
                ),
                Assets.svg.securitySafe.svg(),
              ],
            ),
          ),
          BlocBuilder<GetProductsCubit, GetProductsState>(
            builder: (context, state) => state.maybeWhen(
              success: (success) => Container(
                height: 60.0,
                margin: const EdgeInsets.only(bottom: 24.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: success.length,
                  itemBuilder: (context, index) => Container(
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
                ),
              ),
              orElse: () => const SizedBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              r'Amount',
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            margin: const EdgeInsets.only(bottom: 64.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xEAFFFFFF),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    r'$75.00',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w600,
                      fontSize: 36.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Assets.svg.moneySendIlustration.svg(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 20,
                  margin: const EdgeInsets.only(right: 8.0),
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                Text(
                  r'Agree with ideate’s terms and conditions',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xEA199EFF)),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
              ),
              child: Text(
                r'Send money',
                textAlign: TextAlign.start,
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
