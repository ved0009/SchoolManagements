import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { TeacherRoutingModule } from './teacher-routing.module';
import { TeacherComponent } from '../teacher/teacher.component';
import { ThemeModule } from '../../@theme/theme.module';
import { NbMenuModule } from '@nebular/theme';
import { DashboardModule } from '../../pages/dashboard/dashboard.module';
import { ECommerceModule } from '../../pages/e-commerce/e-commerce.module';
import { MiscellaneousModule } from '../../pages/miscellaneous/miscellaneous.module';


@NgModule({
  declarations: [
    TeacherComponent
  ],
  imports: [
    CommonModule,
    TeacherRoutingModule,
    ThemeModule,
    NbMenuModule,
    DashboardModule,
    ECommerceModule,
    MiscellaneousModule,
  ]
})
export class TeacherModule { }
