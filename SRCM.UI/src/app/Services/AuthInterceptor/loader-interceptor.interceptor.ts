import { Injectable } from '@angular/core';
import {
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpInterceptor,
  HttpResponse,
  HttpErrorResponse
} from '@angular/common/http';
import { Observable } from 'rxjs';
import { NbSpinnerService } from '@nebular/theme';
import { finalize, tap } from 'rxjs/operators';
import { DialongService } from '../Dialong/dialong.service';
import { ToasterService } from '../Toaster/toaster.service';
import { webToasterPosition } from '../Toaster/ToastSettings';
import { Router } from '@angular/router';

@Injectable()
export class LoaderInterceptorInterceptor implements HttpInterceptor {

  constructor(private spinnerService: NbSpinnerService,private _dl:ToasterService,private _router:Router) {}

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    this.spinnerService.load();
    debugger
    this._dl.showToast(webToasterPosition.toasterBottomLeftPosition,'info','Loading');
    return next.handle(request)
     .pipe(
      tap(
        (event: HttpEvent<any>) => {
          // Check if the response is an HTTP response
          if (event instanceof HttpResponse) {
            // Log the status code of the response
            console.log('API Status:', event.status);

          }
        },
        (error: any) => {
          // Check if the error is an HTTP error response
          if (error instanceof HttpErrorResponse) {
            // Log the status code of the error response
            // console.error('API Error Status:', error.status);
            if (error.status===401) {
              this._dl.showToast(webToasterPosition.toasterTopLeftPosition,'danger','Please login again');
              this._router.navigateByUrl('/auth');
            }
          }
        }
      ),
       finalize(() => {
         // Hide loader when response is received
         console.log('response',request);

         this.spinnerService.clear();
       })
     );
 }
  }

