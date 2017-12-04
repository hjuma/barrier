import { Component, OnInit } from '@angular/core';
import { Asset } from '../../core/models/asset';
import { AssetService } from '../../core/services/asset.service';
import { MetadataService } from '../../core/services/metadata.service';
import { Barrier } from '../../core/models/barrier';
import { Facility } from '../../core/models/facility';
import { BarrierType } from '../../core/models/barrier-type';
import { isNullOrUndefined } from 'util';

@Component({
    selector: 'app-asset-dashboard',
    templateUrl: './asset-dashboard.component.html',
    styleUrls: ['./asset-dashboard.component.scss']
})
export class AssetDashboardComponent implements OnInit {
    assets: Array<Asset>;
    selectedAsset: Asset;
    barriers: Array<Barrier>;
    showCounts = false;
    showLatencyAlert = false;


    constructor(private assetService: AssetService, private metadataService: MetadataService) { }

    ngOnInit() {
        this.assetService.getAssets().subscribe((response: Array<Asset>) => {
            this.assets = response;
            this.selectedAsset = this.assets[1];
            this.onAssetChange();
        });

    }

    onAssetChange() {
        if (this.selectedAsset) {
            this.metadataService.getBarriers(this.selectedAsset.id).subscribe((barriers: Array<Barrier>) => {
                this.barriers = barriers;
                this.shouldShowLatencyAlert();
            });
        }
    }

    getCountForBarrierType(facility: Facility, barrierType: BarrierType) {
        const count = facility.AssetLevelData.find(function(data) {
            return data.barrier_type_id === barrierType.id;
        });


        return isNullOrUndefined(count) ? { rag: 'G', count: 0} : { rag: count.rag_status, count: count.count_of_data};
    }

    hasOldData(facility: Facility) {
        let hasOldData = false;
        const yesterdayFull =  new Date(new Date().getTime() - (24 * 60 * 60 * 1000));
        const yesterdayNoTime = new Date(yesterdayFull.getFullYear(), yesterdayFull.getMonth(), yesterdayFull.getDate());

        facility.AssetLevelData.forEach(function(count) {
            const snapshotDate = new Date(count.snapshot_date);
            const snapshotDateNoTime = new Date(snapshotDate.getFullYear(), snapshotDate.getMonth(), snapshotDate.getUTCDate());

            if (snapshotDateNoTime < yesterdayNoTime) {
                hasOldData = true;
            }

        });

        return hasOldData;
    }

    shouldShowLatencyAlert() {
        let showAlert = false;

        const yesterdayFull =  new Date(new Date().getTime() - (24 * 60 * 60 * 1000));
        const yesterdayNoTime = new Date(yesterdayFull.getFullYear(), yesterdayFull.getMonth(), yesterdayFull.getDate());

        this.selectedAsset.Facilities.forEach(function(facility) {
            facility.AssetLevelData.forEach(function(count) {
                const snapshotDate = new Date(count.snapshot_date);
                const snapshotDateNoTime = new Date(snapshotDate.getFullYear(), snapshotDate.getMonth(), snapshotDate.getUTCDate());

                if (snapshotDateNoTime < yesterdayNoTime) {
                    showAlert = true;
                }
            });
        });

        this.showLatencyAlert = showAlert;

    }

}
