import { Component } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { filter } from 'rxjs/operators';

@Component({
  selector: 'ngx-admin-column',
  templateUrl: './admin-column.component.html',
  styleUrls: ['./admin-column.component.scss']
})
export class AdminColumnComponent {
  trdindex: string;
  frthindex: string;

  constructor(private _router: Router) {
    this._router.events
      .pipe(filter((event) => event instanceof NavigationEnd))
      .subscribe(() => {
        this.updateRouteIndices();
      });
  }

  ngOnInit() {
    this.updateRouteIndices();
  }

  updateRouteIndices() {
    const urlSegments = this._router.url.split("/");
    this.trdindex = urlSegments[3];
    this.frthindex = urlSegments[4];
    console.log(this.trdindex, this.frthindex);
  }

}
