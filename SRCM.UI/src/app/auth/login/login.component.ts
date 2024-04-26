import { Component } from "@angular/core";
import { FormBuilder, FormControl, FormGroup, Validators } from "@angular/forms";

@Component({
  selector: "ngx-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.scss"],
})
export class LoginComponent {
  loginform : FormGroup;

  constructor(private _fb:FormBuilder) {


  }

  ngOnInit(): void {
    this.loginform = this._fb.group({
      username: new FormControl('',Validators.required),
      password: new FormControl('',Validators.required),
    });
  }

  login() {
    console.log(this.loginform.value);

  }
}
