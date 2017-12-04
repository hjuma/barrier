import { Component, OnInit } from '@angular/core';
import { FacilityService } from '../../core/services/facility.service';
import { WorkOrderLevelData } from '../../core/models/work-order-level-data';
import { ActivatedRoute } from '@angular/router';
import { Facility } from '../../core/models/facility';

@Component({
    selector: 'app-data-quality-work-order',
    templateUrl: './data-quality-work-order.component.html',
    styleUrls: ['./data-quality-work-order.component.scss']
})
export class DataQualityWorkOrderComponent implements OnInit {
    workOrderData: Array<WorkOrderLevelData>;
    selectedFacility: Facility;


    constructor(private facilityService: FacilityService,
        private route: ActivatedRoute, ) { }


    ngOnInit() {
       this.route.params.subscribe(params => {
            const facilityId = params['id'];
            const barrierTypeId = params['barrierTypeId'];
            const barrierMetricId = params['metricTypeId'];

            this.facilityService.getFacilityById(facilityId).subscribe((facility: Facility) => {
                this.selectedFacility = facility;

                this.facilityService.getDrillDownDataQualityWorkOrders(facilityId, barrierTypeId, barrierMetricId)
                    .subscribe((workOrders: Array<WorkOrderLevelData>) => {
                        this.workOrderData = workOrders;
                    });
            });
        });
    }


}
