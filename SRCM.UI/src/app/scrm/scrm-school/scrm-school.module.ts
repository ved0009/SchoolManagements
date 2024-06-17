import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ScrmSchoolRoutingModule } from './scrm-school-routing.module';
import { ScrmSchoolComponent } from './scrm-school.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ThemeModule } from '../../@theme/theme.module';
import { NbMenuModule } from '@nebular/theme';


@NgModule({
  declarations: [
    ScrmSchoolComponent,
    DashboardComponent,


  ],
  imports: [
    CommonModule,
    ScrmSchoolRoutingModule,
    ThemeModule,
    NbMenuModule,
  ]
})
export class ScrmSchoolModule { }
