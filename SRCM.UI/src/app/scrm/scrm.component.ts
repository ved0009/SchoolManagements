import { Component } from "@angular/core";
import { MENU_ITEMS } from "./pages-menu";
import { MasterClientService } from "../Services/MasterClient/master-client.service";
interface ResponseItem {
  id: number;
  moduleName: string;
  title: string;
  icon: string;
  link: string;
  children: number;
  orderby: number;
}

interface NbMenuItem {
  title: string;
  icon: string;
  link?: string;
  home?: boolean;
  expanded?: boolean;
  children?: NbMenuItem[];
}
@Component({
  selector: "ngx-scrm",
  templateUrl: "./scrm.component.html",
  styleUrls: ["./scrm.component.scss"],
})



export class ScrmComponent {
  menu = MENU_ITEMS;
  menuData: any;

  constructor(private _api: MasterClientService) {}
  ngOnInit(): void {
    console.log("lists");
    this._api.GetList("Common", "GetUserMenus").subscribe((res) => {
      if (res.success === true) {
        this.menuData =  res.responseData;
        console.log('resdata',res.responseData);

  // Transform the response data
    this.menu = this.transformDataToMenuItems(this.menuData);
   console.log('menu data ',this.menu);


      } else {
        console.log("Error occured");
      }
    });
  }





  // Function to transform the response data into the desired format
    transformDataToMenuItems = (data: ResponseItem[]): NbMenuItem[] => {
    // Group by moduleName
    const grouped: { [key: string]: NbMenuItem[] } = data.reduce((acc, item) => {
      if (!acc[item.moduleName]) {
        acc[item.moduleName] = [];
      }
      acc[item.moduleName].push({
        title: item.title,
        link: `/${item.link}`,
        icon: item.icon,
      });
      return acc;
    }, {} as { [key: string]: NbMenuItem[] });

    // Create the final MENU_ITEMS array
    const menuItems: NbMenuItem[] = [
      {
        title: "Dashboard",
        icon: "grid-outline",
        link: "/scrm/admin/dashboard",
        home: true,
        expanded: true,
      },
    ];

    // Add grouped items to the menu
    for (const [moduleName, children] of Object.entries(grouped)) {
      menuItems.push({
        title: moduleName,
        icon: "award-outline",
        expanded: true,
        children: children as NbMenuItem[],
      });
    }

    return menuItems;
  };



}
