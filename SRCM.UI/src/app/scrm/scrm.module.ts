import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ScrmRoutingModule } from './scrm-routing.module';
import { ScrmComponent } from './scrm.component';
import { ScrmAdminComponent } from './scrm-admin/scrm-admin.component';
import { ThemeModule } from '../@theme/theme.module';
import {  NbCardModule, NbMenuModule, NbTreeGridModule  } from '@nebular/theme';
import { DashboardModule } from '../pages/dashboard/dashboard.module';
import { ECommerceModule } from '../pages/e-commerce/e-commerce.module';
import { MiscellaneousModule } from '../pages/miscellaneous/miscellaneous.module';

@NgModule({
  declarations: [
    ScrmComponent,
    ScrmAdminComponent,

  ],
  imports: [
    CommonModule,
    ScrmRoutingModule,
    ThemeModule,
    NbMenuModule,
    NbCardModule,
    DashboardModule,
    ECommerceModule,
    MiscellaneousModule,

  ]
})
export class ScrmModule { }
