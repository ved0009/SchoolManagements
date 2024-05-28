import { Injectable } from '@angular/core';
import { NbDialogService } from '@nebular/theme';
import { ScrmDialongComponent } from '../../@theme/components/scrm-dialong/scrm-dialong.component';

@Injectable({
  providedIn: 'root'
})
export class DialongService {
  constructor(private dialogService: NbDialogService) { }

  confirm(title: string, message: string): Promise<boolean> {
    return new Promise<boolean>((resolve) => {
      const dialogRef = this.dialogService.open(ScrmDialongComponent, {
        context: {
          title,
          message,
        },
      });

      dialogRef.componentRef.instance.confirm.subscribe(() => {
        dialogRef.close();
        resolve(true);
      });

      dialogRef.componentRef.instance.cancel.subscribe(() => {
        dialogRef.close();
        resolve(false);
      });
    });
  }
}
