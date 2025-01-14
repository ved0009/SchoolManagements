import { Injectable } from '@angular/core';
import { NbToastrService } from '@nebular/theme';
 import { webToasterPosition } from './ToastSettings';

@Injectable({
  providedIn: 'root'
})
export class ToasterService {

  constructor(private toastrService: NbToastrService) { }
  /* position by default TopRight, status (success, warning,'danger' for error),type ( ex: successHead)  */

  showToast(position: any,status: any,type: any) {
    this.toastrService.show(
      status || status,
      type,
      {position , status });
  }
  SomeThingWrong(){
    this.toastrService.danger('Something went wrong','Error');
  }

  RecordFound(){
    this.toastrService.success('Record found','Success');
  }
  SuccessRecord(){
    this.toastrService.success('New request generated','Success');
  }
  Norecordfound(){
    this.toastrService.info('No record found','Info');
  }


}
