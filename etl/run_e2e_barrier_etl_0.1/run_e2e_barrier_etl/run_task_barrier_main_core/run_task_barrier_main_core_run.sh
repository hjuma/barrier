#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Xms256M -Xmx1024M -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.16.jar:$ROOT_PATH/../lib/mysql-connector-java-5.1.30-bin.jar:$ROOT_PATH/run_task_barrier_main_core_0_1.jar:$ROOT_PATH/jb_planner_group_refdt_0_1.jar:$ROOT_PATH/jb_barrier_init_refdt_0_1.jar:$ROOT_PATH/jb_barrier_type_init_refdt_0_1.jar:$ROOT_PATH/jb_asset_init_refdt_0_1.jar:$ROOT_PATH/jb_abc_indicator_refdt_0_1.jar:$ROOT_PATH/jb_barrier_refdt_0_1.jar:$ROOT_PATH/jb_asset_rule_set_refdt_0_1.jar:$ROOT_PATH/run_task_barrier_init_core_0_1.jar:$ROOT_PATH/jb_performance_standard_mapping_refdt_0_1.jar:$ROOT_PATH/jb_facility_refdt_0_1.jar:$ROOT_PATH/jb_facility_init_refdt_0_1.jar:$ROOT_PATH/refresh_sap_work_order_data_0_1.jar:$ROOT_PATH/jb_facility_rule_set_refdt_0_1.jar:$ROOT_PATH/jb_user_refdt_0_1.jar:$ROOT_PATH/refresh_facility_level_data_0_1.jar:$ROOT_PATH/refresh_work_order_level_data_0_1.jar:$ROOT_PATH/jb_barrier_element_refdt_0_1.jar:$ROOT_PATH/jb_barrier_metric_init_refdt_0_1.jar:$ROOT_PATH/jb_performance_standard_init_refdt_0_1.jar:$ROOT_PATH/jb_barrier_type_refdt_0_1.jar:$ROOT_PATH/refresh_asset_level_data_0_1.jar:$ROOT_PATH/jb_role_refdt_0_1.jar:$ROOT_PATH/jb_performance_standard_refdt_0_1.jar:$ROOT_PATH/jb_barrier_metric_refdt_0_1.jar:$ROOT_PATH/sendemailjobprocessstatus_0_1.jar:$ROOT_PATH/jb_business_unit_refdt_0_1.jar:$ROOT_PATH/run_task_barrier_incr_core_0_1.jar:$ROOT_PATH/jb_asset_refdt_0_1.jar:$ROOT_PATH/jb_abc_indicator_init_refdt_0_1.jar: barrier_project.run_task_barrier_main_core_0_1.run_task_barrier_main_core --context=Default "$@" 