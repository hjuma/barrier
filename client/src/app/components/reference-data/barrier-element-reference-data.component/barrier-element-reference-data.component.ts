import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ValidationErrors } from '@angular/forms';
import { TableSort } from '../../../core/filter/customFilter';
import { OrderBy } from '../../../core/filter/orderByPipe';
import { BusinessUnit } from '../../../core/models/business-unit';
import { BarrierElement } from '../../../core/models/barrier-element';
import { ReferenceDataService } from '../../../core/services/reference-data.service';
import { ToasterService } from 'angular2-toaster';
import { ReferenceDataComponent } from '../../reference-data/reference-data.component';
import { barrierElementHeaders } from '../../../core/constants/reference-data-headers';

@Component({
  selector: 'app-barrier-element-reference-data',
  templateUrl: './barrier-element-reference-data.component.html',
  styleUrls: ['./barrier-element-reference-data.component.scss']
})
export class BarrierElementReferenceDataComponent extends ReferenceDataComponent implements OnInit {

  private barrierElementForm: FormGroup;
  private barrierElements: Array<BarrierElement>;
  private barrierElement: Object;

  constructor(private referenceDataService: ReferenceDataService, private formBuilder: FormBuilder, 
    private toasterService: ToasterService) {
    super();
    this.barrierElement = {};
    this.headers = barrierElementHeaders;
  }

  ngOnInit() {
    super.ngOnInit();
    this.initializeForm();
    this.initializeBarriers();
  }

  private initializeBarriers() {
    this.referenceDataService.getAllBarrierElements().subscribe(response => {
      this.barrierElements = response;
      this.rows = new Array<object>();
      this.barrierElements.forEach(barrierElement => {
        const row = {};
        row['isEdit'] = false;
        row['values'] = barrierElement;
        this.rows.push(row);
      });
    });
  }

  edit(row: Object) {
    this.isNew = false;
    row['isEdit'] = true;
    this.barrierElement = row['values'];
  }

  private generatePayload(current: Object) {
    const barrierElement: any = {};
    barrierElement['name'] = current['name'];
    barrierElement['code'] = current['name'];
    if (!this.isNew) {
      barrierElement['id'] = current['id'];
      barrierElement['version_no'] = current['version_no'];
    }
    return barrierElement;
  }

  cancel(row: Object) {
    if (this.isNew) {
      this.rows.splice(0, 1);
    }
    if (!this.isNew) {
      row['isEdit'] = false;
    }
    this.barrierElement = {};
    this.resetFormErrors(this.barrierElementForm);
  }

  private initializeForm() {
    this.barrierElementForm = this.formBuilder.group({
      name: ['', Validators.required],
      columnFilter: ['']
    }
    );
  }

  save(row: Object) {
    this.submitted = true;
    if (this.barrierElementForm.valid) {
      const payload = this.generatePayload(this.barrierElement);
      if (this.isNew) {
        this.referenceDataService.addBarrierElement(payload).subscribe((response) => {
          this.toasterService.pop('success', response.message);
          this.initializeBarriers();
        });
      } else {
        this.referenceDataService.saveBarrierElement(payload).subscribe((response) => {
          this.toasterService.pop('success', response.message);
          this.initializeBarriers();
        });
      }
    } else {
      this.toasterService.pop('error', this.getFormValidationErrors(this.barrierElementForm));
    }
  }

  add() {
    this.isNew = true;
    this.barrierElement = {};
    const row = {};
    row['isEdit'] = true;
    row['values'] = this.barrierElement;
    this.rows.splice(0, 0, row);
  }

}
