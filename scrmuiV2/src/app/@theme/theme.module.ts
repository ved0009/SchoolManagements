import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ButtonModule } from 'primeng/button';
import { InputTextModule } from 'primeng/inputtext';
import { CardModule } from "primeng/card";
 import {InputGroupModule} from 'primeng/inputgroup'



@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    ButtonModule,
    InputTextModule,
    CardModule,
    InputGroupModule

  ],
  exports:[
    ButtonModule,
    InputTextModule,
    CardModule,
    InputGroupModule
  ]
})
export class ThemeModule { }
