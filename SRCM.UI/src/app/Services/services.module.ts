import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
 import { ThemetagsimportModule } from '../themetagsimport/themetagsimport.module';
import { NbCardModule } from '@nebular/theme';
import { ThemeModule } from '../@theme/theme.module';



@NgModule({
  declarations: [
   ],
  imports: [
    CommonModule,
    ThemetagsimportModule,NbCardModule,    ThemeModule,

  ]
})
export class ServicesModule { }
