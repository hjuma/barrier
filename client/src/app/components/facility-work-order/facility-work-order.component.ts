import { Component, OnInit } from '@angular/core';
import {FacilityService} from '../../core/services/facility.service';
import {WorkOrderLevelData} from '../../core/models/work-order-level-data';
import {ActivatedRoute} from '@angular/router';
import {Facility} from '../../core/models/facility';

@Component({
  selector: 'app-facility-work-order',
  templateUrl: './facility-work-order.component.html',
  styleUrls: ['./facility-work-order.component.scss']
})
export class FacilityWorkOrderComponent implements OnInit {
  workOrderData: Array<WorkOrderLevelData>;
  selectedFacility: Facility;

  barrier: string;
  barrierType: string;
  barrierMetric: string;
  ragStatus: string;


  constructor(private facilityService: FacilityService,
              private route: ActivatedRoute) { }

  ngOnInit() {
      this.route.params.subscribe(params => {
          const facilityId = params['id'];
          const barrierTypeId = params['barrierTypeId'];
          const barrierMetricId = params['metricTypeId'];
          const ragStatus = params['ragStatus'];

          this.facilityService.getFacilityById(facilityId).subscribe((facility: Facility) => {
              this.selectedFacility = facility;

              this.facilityService.getDrillDownWorkOrders(facilityId, barrierTypeId, barrierMetricId, ragStatus)
                  .subscribe((workOrders: Array<WorkOrderLevelData>) => {
                      this.workOrderData = workOrders;

                      if (this.workOrderData.length>0) {
                          this.barrier = this.workOrderData[0].BarrierType.Barrier.name || 'UNKNOWN';
                          this.barrierType = this.workOrderData[0].BarrierType.name || 'UNKNOWN';
                          this.barrierMetric = this.workOrderData[0].BarrierMetric.name  || 'UNKNOWN';
                          this.ragStatus = this.workOrderData[0].rag_status == 'G' ? 'GREEN' :  this.workOrderData[0].rag_status == 'A' ? 'AMBER' : 'RED';
                      }
                  });

          });



      });
  }


}
