abstract class Employees {
  // Creating Abstract Methods
  void CalSalary();

  void calPF() {
    print("PF DEduction");
  }
}

class FTEmp extends Employees {
  void CalSalary() {
    print("Yo Full Time Employees!!");
  }
}

class PTEmp extends Employees {
  void CalSalary() {
    print("Yo Part time Employees!!");
  }
}

class ContractEmp extends Employees {
  void CalSalary() {
    print("Yo Interns!!");
  }

  void calPF() {
    print("PF DEduction of Interns");
  }
}

main() {
  FTEmp FullTime = new FTEmp();
  FullTime.CalSalary();
  ContractEmp cEmp = ContractEmp();
  cEmp.calPF();
}
