import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ScrmAdminRoutingModule } from './scrm-admin-routing.module';
import { ProjectAdminDashboardComponent } from './project-admin-dashboard/project-admin-dashboard.component';
import { ProfileComponent } from './profile/profile.component';
import { ThemetagsimportModule } from '../../themetagsimport/themetagsimport.module';
import { ReactiveFormsModule } from '@angular/forms';


@NgModule({
  declarations: [
    ProjectAdminDashboardComponent,
    ProfileComponent
  ],
  imports: [
    CommonModule,
    ScrmAdminRoutingModule,
    ThemetagsimportModule,
    ReactiveFormsModule
  ]
})
export class ScrmAdminModule { }
