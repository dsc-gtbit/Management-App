class Employee {
  String? slNo;
  String? pfNumber;
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
  String? taxes; // earlier it was 'deductions' instead of 'taxes'
  String?
      grossdeductions; // earlier it was 'total' instead of 'grossdeductions'
  String? net;
  String? totaldays; //added
  String? daypresent; //added
  String? dayabsent; //added
  String? employeepf; //added
  String? advloans; //added
  String? salwords; //added

  Employee({
    this.slNo,
    this.pfNumber,
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
    this.taxes, // earlier it was 'deductions' instead of 'taxes'
    this.grossdeductions, // earlier it was 'total' instead of 'grossdeductions'
    this.net,
    this.dayabsent, //added
    this.daypresent, //added
    this.totaldays, //added
    this.employeepf, //added
    this.advloans, //added
    this.salwords, //added
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      slNo: json['Sl.No.'].toString(),
      pfNumber: json['PF No.'].toString(),
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
      taxes: json['Taxes']
          .toString(), // earlier it was 'deductions' instead of 'taxes'
      grossdeductions: json['grossdeductions']
          .toString(), // earlier it was 'total' instead of 'grossdeductions'
      net: json['Net'] is int ? json['Net'].toString() : json['Net'].toString(),
      dayabsent: json['Dayabsent'].toString(), //added
      totaldays: json['Totaldays'].toString(), //added
      daypresent: json['Daypresent'].toString(), //added
      employeepf: json['EmployeePF'].toString(), //added
      advloans: json['Advance/Loan(s)'].toString(), //added
      salwords: json['Salary in words'].toString(), //added
    );
  }
}
