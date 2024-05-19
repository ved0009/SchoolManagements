 import { AfterViewInit, Component, Input, OnDestroy } from "@angular/core";
import { Router } from "@angular/router";
import { MasterClientService } from "../../../../Services/MasterClient/master-client.service";
import { ToasterService } from "../../../../Services/Toaster/toaster.service";
import { webToasterPosition } from "../../../../Services/Toaster/ToastSettings";
import { NbThemeService } from "@nebular/theme";
import { delay } from "rxjs/operators";

@Component({
  selector: "ngx-all-classes",
  templateUrl: "./all-classes.component.html",
  styleUrls: ["./all-classes.component.scss"],
})
export class AllClassesComponent   {

  private value = 0;

  @Input()
  set chartValue(value: number) {
    this.value = value;

    if (this.option.series) {
      this.option.series[0].data[0].value = value;
      this.option.series[0].data[1].value = 100 - value;
      this.option.series[1].data[0].value = value;
    }
  }

  option: any = {};
  themeSubscription: any;

  classLists: any;
  constructor(
    private router: Router,
    private _api: MasterClientService,
    private _toaster: ToasterService,
    private theme: NbThemeService
  ) {}
  classDetail = [
    { Profile: "../assets/images/jack.png", tClass: "1st", StudentCount: "3" },
    { Profile: "../assets/images/nick.png", tClass: "2nd", StudentCount: "4" },
    { Profile: "../assets/images/lee.png", tClass: "3rd", StudentCount: "6" },
    {
      Profile: "../assets/images/images.jpg",
      tClass: "4th",
      StudentCount: "3",
    },
  ];
  showSearch: boolean = false;
  ngOnInit(): void {
    this.getAllClass();
  }

  getAllClass() {
    this._api.GetList("Classes", "GetAllClassess").subscribe({
      next: (res) => {
        if (res.statusCode === 200 && res.success) {
          this.classLists = res.responseData;
          console.log('class',this.classLists);

        } else {
          this._toaster.showToast(webToasterPosition.toasterTopLeftPosition,'info','No record found');
        }
      },
      error: (err) => {
        this._toaster.showToast(webToasterPosition.toasterTopLeftPosition,'danger',err.message);
      },
    });
  }
  add(){

  }

  edit(item:any){
    this.router.navigateByUrl('/scrm/School/Class/editClass/' + item.id);
  }
}
