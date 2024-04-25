import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ScrmAdminRoutingModule } from './scrm-admin-routing.module';
import { ProjectAdminDashboardComponent } from './project-admin-dashboard/project-admin-dashboard.component';


@NgModule({
  declarations: [
    ProjectAdminDashboardComponent
  ],
  imports: [
    CommonModule,
    ScrmAdminRoutingModule
  ]
})
export class ScrmAdminModule { }
