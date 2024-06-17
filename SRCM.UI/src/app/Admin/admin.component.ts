import { Component } from '@angular/core';
import { MENU_ITEMS_ADMIN } from '../scrm/pages-menu';

@Component({
  selector: 'ngx-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent {
menu = MENU_ITEMS_ADMIN;
}
