import { Pipe, PipeTransform } from '@angular/core';
import { NbMenuService } from '@nebular/theme';

@Pipe({
  name: 'menuDetails'
})
export class MenuDetailsPipe implements PipeTransform {


  transform(value : string): string {
    if (!value) return value;

    // Convert the string into title case
    value = value.replace(/([a-z])([A-Z])/g, '$1 $2');  // Separate camelCase words
    value = value.replace(/([A-Z]+)/g, ' $1');          // Separate ALLCAPS words

    return value.replace(/\b\w/g, char => char.toUpperCase()).trim();
  }

}
