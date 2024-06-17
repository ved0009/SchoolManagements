import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from './admin-routing.module';
import { AdminComponent } from './admin.component';
import { RoutingManagementComponent } from './routing-management/routing-management.component';
import { ThemeModule } from '../@theme/theme.module';
import { ThemetagsimportModule } from '../themetagsimport/themetagsimport.module';
import { NbButtonModule, NbCardModule, NbDialogModule, NbIconModule, NbInputModule, NbLayoutModule, NbMenuModule, NbTreeGridModule } from '@nebular/theme';
import { NbEvaIconsModule } from '@nebular/eva-icons';


@NgModule({
  declarations: [
    AdminComponent,
    RoutingManagementComponent
  ],
  imports: [
    CommonModule,
    AdminRoutingModule,
    ThemeModule,
    NbMenuModule,
    ThemetagsimportModule,
    NbTreeGridModule,
    NbLayoutModule,
    NbCardModule,
    NbIconModule,
    NbButtonModule,
    NbDialogModule.forRoot(),
    NbInputModule,
    NbEvaIconsModule
  ]
})
export class AdminModule { }
