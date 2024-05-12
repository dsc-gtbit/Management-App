import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SizedBox(
        width: SizeUtils.width,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 23.v),
          child: Column(
            children: [
              _buildGuruTegh(context),
              SizedBox(height: 10.v),
              _buildEarnings(context),
              SizedBox(height: 11.v),
              _buildAttendance(context),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                ),
              ),
              SizedBox(height: 3.v),
              _buildEmployeePF(context),
              SizedBox(height: 15.v),
              _buildNetSalary(context),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "Net Salary in words -",
                    style: CustomTextStyles.headlineSmallGray90001,
                  ),
                ),
              ),
              Container(
                width: 343.h,
                margin: EdgeInsets.only(left: 30.h),
                child: Text(
                  "Seven Lakhs Seven Thousand Seven Hundred Seventy Seven only",
                  //maxLines: null,
                  style: CustomTextStyles.titleLargeGray90001,
                ),
              ),
              SizedBox(height: 20.v),
              Container(
                width: 312.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 30.h,
                ),
                child: Text(
                  "This is computer generated document does not require any signature.\nFor any query please contact Director/ Administrative Officer.",
                  maxLines: null,
                  //overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 75.v,
      leading: Padding(
        padding: const EdgeInsets.all(11.0),
        child: SvgPicture.asset('assets/images/img_arrow_left.svg'),
      ),
      title: AppbarTitle(
        text: "Payslip",
        margin: EdgeInsets.only(left: 52.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildGuruTegh(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 260.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 52.h,
            ),
            child: Text(
              "Guru Tegh Bahadur\nInstitute of Technology",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineMediumRegular,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "February 2024",
                  style: theme.textTheme.headlineMedium,
                ),
                CustomOutlinedButton(
                  width: 94.h,
                  height: 34.h,
                  text: "Download",
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "Name  - ",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  "Abc Xyz",
                  style: theme.textTheme.titleLarge,
                ),
              )
            ],
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 84.h),
            child: Row(
              children: [
                Text(
                  "UID Number  - ",
                  style: theme.textTheme.titleLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "0000000000000",
                    style: theme.textTheme.titleLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 94.h),
            child: Row(
              children: [
                Text(
                  "PF Number  - ",
                  style: theme.textTheme.titleLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "0000000000000",
                    style: theme.textTheme.titleLarge,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "Designation  - ",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "TGT",
                  style: theme.textTheme.titleLarge,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEarnings(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Earnings",
            style: theme.textTheme.titleLarge,
          ),
          Container(
            margin: EdgeInsets.only(right: 30.h),
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "Basic pay",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Spacer(
                        flex: 70,
                      ),
                      Text(
                        "+",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Spacer(
                        flex: 42,
                      ),
                      Text(
                        "₹",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "0000.00",
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "A.G.P.",
                    plusText: "           +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "D.A.",
                    plusText: "             +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "H.R.A.",
                    plusText: "          +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "TPT",
                    plusText: "             +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "Other",
                    plusText: "          +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "Gross Earnings",
                    plusText: "=",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAttendance(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Attendance",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 1.v),
          Container(
            margin: EdgeInsets.only(right: 30.h),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildNumberOfDays(
                  context,
                  numberOfDaysAbsent: "Total number of days in a month",
                  zeroToThree: "00",
                ),
                SizedBox(height: 6.v),
                _buildNumberOfDays(
                  context,
                  numberOfDaysAbsent: "Number of days absent",
                  zeroToThree: "00",
                ),
                SizedBox(height: 6.v),
                _buildNumberOfDays(
                  context,
                  numberOfDaysAbsent: "Number of days present",
                  zeroToThree: "00",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildEmployeePF(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deductions",
            style: theme.textTheme.titleLarge,
          ),
          Container(
            margin: EdgeInsets.only(right: 30.h),
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "Employee PF",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Spacer(
                        flex: 54,
                      ),
                      Text(
                        " +",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Spacer(
                        flex: 42,
                      ),
                      Text(
                        "₹",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "0000.00",
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "Taxes",
                    plusText: "              +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "Advance/Loan(s)",
                    plusText: " +",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: _buildDa(
                    context,
                    nameText: "Gross Deductions",
                    plusText: "=",
                    currencyText: "₹",
                    amountText: "0000.00",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNetSalary(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 17.h,
          right: 47.h,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.v),
              child: Text(
                "Net Salary",
                style: CustomTextStyles.headlineSmallGray90001,
              ),
            ),
            Spacer(
              flex: 60,
            ),
            Text(
              "=",
              style: theme.textTheme.headlineLarge,
            ),
            Spacer(
              flex: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.v),
              child: Text(
                "₹",
                style: CustomTextStyles.headlineSmallGray90001,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                top: 5.v,
                bottom: 5.v,
              ),
              child: Text(
                "0000.00",
                style: CustomTextStyles.headlineSmallGray90001,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildDa(
    BuildContext context, {
    required String nameText,
    required String plusText,
    required String currencyText,
    required String amountText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 5.v,
          ),
          child: Text(
            nameText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(
          flex: 57,
        ),
        Text(
          plusText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(
          flex: 75,
        ),
        Text(
          currencyText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
          child: Text(
            amountText,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildNumberOfDays(
    BuildContext context, {
    required String numberOfDaysAbsent,
    required String zeroToThree,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5.v),
          child: Text(
            numberOfDaysAbsent,
            maxLines: 2,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Text(
          zeroToThree,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
