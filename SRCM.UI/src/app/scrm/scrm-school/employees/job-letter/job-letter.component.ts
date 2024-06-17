import { Component } from '@angular/core';
import { MasterClientService } from '../../../../Services/MasterClient/master-client.service';
import { ToasterService } from '../../../../Services/Toaster/toaster.service';
import { webToasterPosition } from '../../../../Services/Toaster/ToastSettings';

@Component({
  selector: 'ngx-job-letter',
  templateUrl: './job-letter.component.html',
  styleUrls: ['./job-letter.component.scss']
})
export class JobLetterComponent {

  searchTerm: string = '';
  employeeOptions: Array<{ id: string, name: string }> = [];
  filteredOptions: Array<{ id: string, name: string }> = [];
  selectedEmployee: any;
  isPrint: boolean = false;

  constructor(private _api: MasterClientService,
    private toaster: ToasterService,

  ) { }

  ngOnInit(): void {
    this._api.Get('Employee','GetEmployee').subscribe(res => {
      debugger
      this.employeeOptions = res.responseData;
      this.filteredOptions = res.responseData;


    });
  }

  query: string = '';
  employees: any[] = [];



  searchEmployee() {
    if (this.query) {
      this._api.Get('Employee','GetEmployee').subscribe(res => {

        this.employees =  res.responseData;
      });
    } else {
      this.employees = [];
    }
  }

  selectEmployee(employee: any) {

    this._api.Get('Employee',`GetEmployeeById/${employee.id}`).subscribe({
      next: (res) => {

        this.selectedEmployee = res.responseData;
        this.isPrint=true;

        console.log("Subject lists", this.selectedEmployee);
      },
      error: (err) => {
        this.toaster.showToast(
          webToasterPosition.toasterTopLeftPosition,
          "danger",
          err.message
        );
      },
    });
  }
  printJobLetter(){
    alert("Print")
  }
  back(){
    this.isPrint=false;
  }
}
