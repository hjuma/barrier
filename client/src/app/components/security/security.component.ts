import { Component, OnInit, EventEmitter } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ValidationErrors } from '@angular/forms';
import { Router } from '@angular/router';
import { User } from '../../core/models/user';
import { Role } from '../../core/models/role';
import { BusinessUnit } from '../../core/models/business-unit';
import { UserService } from '../../core/services/user.service';
import { ReferenceDataService } from '../../core/services/reference-data.service';
import { ToasterService } from 'angular2-toaster';
import { PasswordValidation } from './password-validation';
import { Roles } from '../../core/constants/roles';

@Component({
  selector: 'app-security',
  templateUrl: './security.component.html',
  styleUrls: ['./security.component.scss']
})
export class SecurityComponent implements OnInit {
  userForm: FormGroup;
  users: Array<User>;
  currentUser: User;
  businessUnits: Array<BusinessUnit>;
  roles: Array<Role>;
  isNew: boolean;
  status: boolean;
  submitted: boolean;

  constructor(
    private formBuilder: FormBuilder,
    private referenceDataService: ReferenceDataService,
    private router: Router, private userService: UserService, private toasterService: ToasterService) {
  }

  ngOnInit() {
    this.initializeForm();
    this.initializeUserList();
    this.initializeBusinessUnits();
    this.isNew = true;
    this.roles = Roles;
    this.status = true;
  }

  private initializeBusinessUnits() {
    this.referenceDataService.getAllBusinessUnits().subscribe(businessUnits => {
      this.businessUnits = businessUnits;
    });
  }

  private initializeUserList() {
    this.userService.getUsers().subscribe(response => {
      this.users = response;
    });
  }

  addUser() {
    this.userForm.markAsPristine();
    this.userForm.markAsUntouched();
    this.isNew = true;
    this.currentUser = this.initializeCurrentUser();
    this.status = true;
    this.currentUser.status = 'active';
  }

  private initializeCurrentUser() {
    return {
      id: null,
      business_unit_id: null,
      BusinessUnit: null,
      Role: null,
      role_id: null,
      first_name: null,
      last_name: null,
      username: null,
      password: null,
      confirm_password: null,
      email: null,
      last_login: null,
      status: 'active',
      created_at: null,
      updated_at: null,
    };
  }

  editUser(user: User) {
    this.currentUser = user;
    this.isNew = false;
    this.userForm.controls['password'].setErrors(null);
    this.userForm.controls['confirmPassword'].setErrors(null);
    this.status = (this.currentUser.status === 'active');
  }

  private getFormValidationErrors(): string {
    let errors = '';
    Object.keys(this.userForm.controls).forEach(key => {
      const controlErrors: ValidationErrors = this.userForm.get(key).errors;
      if (controlErrors != null) {
        Object.keys(controlErrors).forEach(keyError => {
          errors += key + ' is ' + keyError + ',' + controlErrors[keyError] + '<br>';
        });
      }
    });
    return errors;
  }

  onStatusChange(event: Event) {
    const checked = event.target['checked'];
    this.currentUser.status = (checked) ? 'active' : 'inactive';
  }

  changeBusinessUnit(even: Event, id: any) {
    const selectedIndex = event.target['selectedIndex'];
    this.currentUser.BusinessUnit = this.businessUnits.filter(business =>
      business.id === selectedIndex
    )[0];
  }

  changeRoleDetails(event: Event, id: any) {
    const selectedIndex = event.target['selectedIndex'];
    this.currentUser.Role = this.roles.filter(role =>
      role.id === selectedIndex
    )[0];
  }

  saveUser() {
    this.submitted = true;
    if (this.userForm.valid) {
      const payload = this.generatePayload(this.currentUser);
      if (this.isNew) {
        this.userService.addUser(payload).subscribe((response) => {
          this.toasterService.pop('success', response.message);
          this.addUser();
          this.initializeUserList();
        });
      } else {
        this.userService.saveUser(payload).subscribe((response) => {
          this.toasterService.pop('success', response.message);
        });
      }
    } else {
      this.toasterService.pop('error', this.getFormValidationErrors());
    }
  }

  private generatePayload(currentUser: User) {
    const user: any = {};
    user['business_unit_id'] = currentUser.business_unit_id;
    user['role_id'] = currentUser.role_id;
    user['first_name'] = currentUser.first_name;
    user['last_name'] = currentUser.last_name;
    user['username'] = currentUser.username;
    user['email'] = currentUser.email;
    user['status'] = currentUser.status;
    if (this.isNew) {
      user['password'] = currentUser.password;
    }
    if (!this.isNew) {
      user['id'] = currentUser.id;
    }
    return user;
  }

  private initializeForm() {
    this.userForm = this.formBuilder.group({
      username: ['', Validators.required],
      firstname: ['', Validators.required],
      lastname: ['', Validators.required],
      email: ['', Validators.email],
      businessunit: ['', Validators.required],
      role: ['', Validators.required],
      status: [''],
      password: ['', Validators.required],
      confirmPassword: ['', Validators.required]
    }, {
        validator: PasswordValidation.MatchPassword
      }
    );
    this.currentUser = this.initializeCurrentUser();
  }

}
