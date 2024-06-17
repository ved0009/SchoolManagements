import { Component } from '@angular/core';
import { MENU_ITEMS, MENU_ITEMS_TEACHER } from '../pages-menu';

@Component({
  selector: 'ngx-teacher',
  templateUrl: './teacher.component.html',
  styleUrls: ['./teacher.component.scss']
})
export class TeacherComponent {
  menu = MENU_ITEMS_TEACHER;

}
