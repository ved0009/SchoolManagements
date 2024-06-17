import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
 import { ThemetagsimportModule } from '../themetagsimport/themetagsimport.module';
import { NbCardModule } from '@nebular/theme';
import { ThemeModule } from '../@theme/theme.module';
import { MenuTitlePipe } from './menu-title.pipe';



@NgModule({
  declarations: [
   
    MenuTitlePipe
  ],
  imports: [
    CommonModule,
    ThemetagsimportModule,NbCardModule,    ThemeModule,

  ]
})
export class ServicesModule { }
