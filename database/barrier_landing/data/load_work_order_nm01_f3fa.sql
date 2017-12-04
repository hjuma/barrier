LOAD DATA LOW_PRIORITY LOCAL INFILE 'work_order_nm01_f3fa.csv' REPLACE INTO TABLE `barrier_landing`.`work_order_nm01_f3fa` CHARACTER SET latin1 FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES (`order`, `functional_loc`, `description`, `description_1`, `planner_group`, `main_work_ctr`, `user_status`, `abc_indic`, `reference_date`, `ref_element_pm_ps`, `address_number`, `reference_time`, `changed_on`, `changed_by`, `available_to`, `avail_to_time`, `asset`, `sub_number`, `available_from`, `Available_from_1`, `system_condition`, `work_center`, `priority_type`, `res_purc_req`, `sub_network_of`, `order_category`, `plant_wk_cntr`, `assembly`, `assembly_desc`, `plant_section`, `acctg_indicator`, `po_date`, `po_number`, `company_code`, `city`, `district`, `country`, `device_data`, `sort_field`, `description_2`, `equipment`, `created_on`, `entered_by`, `billing_form`, `actual_release`, `total_rev_act`, `tot_plan_rev`, `tot_sum_actual`, `tot_sum_plan`, `actual_finish`, `actual_finish_1`, `total_settlemt`, `total_act_costs`, `total_plnnd_costs`, `sched_finish`, `basic_fin_time`, `finish_time`, `business_area`, `actual_start`, `sched_start`, `actual_start_1`, `start_time`, `sched_start_time`, `hist_fr`, `maint_activ_type`, `planning_plant`, `costing_sheet`, `sales_document`, `item`, `co_area`, `cost_center`, `resp _cost_cntr`, `customer`, `leading_order`, `deletion_flag`, `long_txt_exists`, `description_3`, `superior_order`, `base_unit`, `quantity`, `room`, `list_name`, `object_number`, `object_list`, `paging_status`, `pgrp_task_list`, `order_plan_ind`, `group_counter`, `group`, `postal_code`, `profit_center`, `priority`, `priority_1`, `wbs_element`, `wbs_ord_header`, `coding`, `code_group`, `catalog_type`, `notification`, `region`, `serial_number`, `material`, `service_product`, `service_product_1`,
 `division`,
  `division_sales`,
  `location`,
  `street`,
  `maint_plant`,
  `telephone`,
  `estimated_costs`,
  `sales_office`,
  `sales_group`,
  `sales_org`,
  `sales_org  - Sales`,
  `superior_act`,
  `distr_channel`,
  `distr_Channel_sa_l`,
  `currency`,
  `maint_item`,
  `maintenance_plan`,
  `plant`,
  `comp`,
  `overhead_key`,
  `earlst_allow_fin_dat`,
  `earl_allow_start_dat`,
  `latest_allow_fin_dat`,
  `original_due_date`,
  `bas_start_date`,
  `system_status`,
  `order_type`,
  `revision`,
  `basic_fin_date`);