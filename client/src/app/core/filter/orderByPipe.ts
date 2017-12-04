import { Pipe } from '@angular/core';

@Pipe({
    name: 'OrderBy'
})
export class OrderBy {
    transform(value, isAscending, columnName, index) {
        if (columnName !== undefined && columnName !== '') {
            value.sort((a: any, b: any) => {
                let objA = a['values'][columnName];
                let objB = b['values'][columnName];
                if (typeof (objA) === 'object' || typeof (objB) === 'object') {
                    objA = objA['name'];
                    objB = objB['name'];
                }
                if (objA < objB) {
                    return -1;
                } else if (objA > objB) {
                    return 1;
                } else {
                    return 0;
                }
            });
            if (!isAscending) {
                value.reverse();
            }
            return value;
        } else {
            return value;
        }

    }
}
