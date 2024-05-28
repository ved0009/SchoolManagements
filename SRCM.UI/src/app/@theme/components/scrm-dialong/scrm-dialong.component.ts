import { Component, EventEmitter, Input, Output } from '@angular/core';

@Component({
  selector: 'ngx-scrm-dialong',
  templateUrl: './scrm-dialong.component.html',
  styleUrls: ['./scrm-dialong.component.scss']
})
export class ScrmDialongComponent {
  @Input() title: string;
  @Input() message: string;
  @Output() confirm = new EventEmitter<void>();
  @Output() cancel = new EventEmitter<void>();

  onConfirm() {
    this.confirm.emit();
  }

  onCancel() {
    this.cancel.emit();
  }
}
