import { Component } from "@angular/core";
import { NavigationEnd, Router } from "@angular/router";
import { filter } from "rxjs/operators";

@Component({
  selector: "ngx-scrm-columns",
  styleUrls: ["./scrm-columns.component.scss"],
  template: `
    <nb-layout windowMode>
      <nb-layout-header fixed>
        <ngx-scrm-header class="py-0"></ngx-scrm-header>
      </nb-layout-header>

      <nb-sidebar class="menu-sidebar" tag="menu-sidebar" responsive>
        <ng-content select="nb-menu"></ng-content>
      </nb-sidebar>

      <nb-layout-column>
        <nb-card accent="primary">
          <nb-card-header>
            <p class="h6 text-blod">
              <i class="fa fa-home text-success"></i> {{ trdindex |menuDetails}}
              <i class="fa fa-caret-right text-success"></i> {{ frthindex | menuDetails}}
              <i class="fa fa-globe text-info "></i>
            </p>
          </nb-card-header>
          <nb-card-body>
          <ng-content select="router-outlet"></ng-content>
          </nb-card-body>
        </nb-card>


      </nb-layout-column>

      <nb-layout-footer fixed class="ngx-footer">
        <ngx-scrm-footer></ngx-scrm-footer>
      </nb-layout-footer>
    </nb-layout>
  `,
})
export class ScrmColumnsComponent {
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
