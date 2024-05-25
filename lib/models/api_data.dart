class Employee {
  String? slNo;
  String? pfNo;
  String? name;
  String? designation;
  DateTime? dateOfJoining;
  String? newBasic;
  String? days;
  String? basicPay;
  String? agp;
  String? da;
  String? hra;
  String? tpt;
  String? other;
  String? gross;
  String? deductions;
  String? total;
  String? net;

  Employee({
    this.slNo,
    this.pfNo,
    this.name,
    this.designation,
    this.dateOfJoining,
    this.newBasic,
    this.days,
    this.basicPay,
    this.agp,
    this.da,
    this.hra,
    this.tpt,
    this.other,
    this.gross,
    this.deductions,
    this.total,
    this.net,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      slNo: json['Sl.No.'].toString(),
      pfNo: json['PF No.'].toString(),
      name: json['Name'].toString(),
      designation: json['Designation'].toString(),
      dateOfJoining: DateTime.parse(json['Date Of Joining'] as String),
      newBasic: json['New Basic'].toString(),
      days: json['Days'].toString(),
      basicPay: json['Basic pay'].toString(),
      agp: json['AGP'].toString(),
      da: json['D.A.'].toString(),
      hra: json['H.R.A'].toString(),
      tpt: json['TPT.'].toString(),
      other: json['Other'].toString(),
      gross: json['Gross'] is int
          ? json['Gross'].toString()
          : json['Gross'].toString(),
      deductions: json['Deductions'].toString(),
      total: json['Total'].toString(),
      net: json['Net'] is int ? json['Net'].toString() : json['Net'].toString(),
    );
  }
}
