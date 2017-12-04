-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for barrier_ods
CREATE DATABASE IF NOT EXISTS `barrier_ods` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `barrier_ods`;

-- Dumping structure for procedure barrier_ods.sp_merge_work_order_eis_mdp1
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_merge_work_order_eis_mdp1`(

)
BEGIN

	/* First update any rows that need to have history tracked for relevant columns */
	SET @v_start_dt = SYSDATE();
	SET @v_end_dt = SYSDATE();

	/* Create a temporary table to hold details of rows and the actions needed to deal with them */
	DROP TEMPORARY TABLE IF EXISTS `barrier_ods`.`work_order_eis_mdp1_tmp`;

	CREATE TEMPORARY TABLE `barrier_ods`.`work_order_eis_mdp1_tmp` AS
	SELECT `new`.*
	FROM `barrier_landing`.`work_order_eis_mdp1` `new`
	WHERE 1=0;

	ALTER TABLE  `barrier_ods`.`work_order_eis_mdp1_tmp`
	ADD COLUMN `action` VARCHAR(1) NOT NULL;


	INSERT INTO `barrier_ods`.`work_order_eis_mdp1_tmp`
		(
			  `functional_loc`
			, `description`
			, `order_type`
			, `Order`
			, `maint_activ_type`
			, `description_4`
			, `planner_group`
			, `main_work_ctr`
			, `user_status`
			, `system_status`
			, `Priority`
			, `estimated_costs`
			, `total_act_costs`
			, `total_settlemt`
			, `total_plnnd_costs`
			, `tot_sum_plan`
			, `total_rev_act`
			, `tot_plan_rev`
			, `tot_sum_actual`
			, `abc_indic`
			, `reference_date`
			, `ref_element_pm_ps`
			, `address_number`
			, `reference_time`
			, `changed_on`
			, `changed_by`
			, `available_to`
			, `avail_to_time`
			, `asset`
			, `sub_number`
			, `available_from`
			, `available_from30`
			, `system_condition`
			, `work_center`
			, `priority_type`
			, `res_purc_req`
			, `subnet_work_of`
			, `order_category`
			, `plant_wk_cntr`
			, `assembly`
			, `assembly_desc`
			, `plant_section`
			, `acctg_indicator`
			, `po_date`
			, `po_number`
			, `company_code`
			, `city`
			, `district`
			, `country`
			, `device_data`
			, `sort_field`
			, `description_50`
			, `equipment`
			, `created_on`
			, `entered_by`
			, `billingform`
			, `actual_release`
			, `actual_finish`
			, `actual_finish1`
			, `basic_fin_date`
			, `sched_finish`
			, `basic_fin_time`
			, `finish_time`
			, `business_area`
			, `actual_start`
			, `bas_start_date`
			, `sched_start`
			, `actual_start1`
			, `start_time`
			, `sched_start_time`
			, `hist_fr`
			, `planning_plant`
			, `costing_sheet`
			, `sales_document`
			, `item`
			, `co_Area`
			, `cost_center`
			, `resp_cost_cntr`
			, `customer`
			, `leading_order`
			, `deletion_flag`
			, `long_txt_exists`
			, `description_81`
			, `superior_order`
			, `base_unit`
			, `quantity`
			, `room`
			, `list_name`
			, `object_number`
			, `paging_status`
			, `pgrp_task_list`
			, `order_plan_ind`
			, `group_counter`
			, `group`
			, `postal_code`
			, `profit_center`
			, `priority_95`
			, `wbs_element`
			, `wbs_ord_header`
			, `notification`
			, `region`
			, `revision`
			, `serial_number`
			, `material`
			, `service_product`
			, `service_product_104`
			, `division`
			, `division_sales`
			, `location`
			, `street`
			, `maint_plant`
			, `telephone`
			, `sales_office`
			, `sales_group`
			, `sales_org`
			, `sales_org_sales`
			, `superior_act`
			, `distr_channel`
			, `distr_channel_sal`
			, `currency`
			, `maint_item`
			, `maintenance_plan`
			, `plant`
			, `comp`
			, `overhead_key`
			, `earlst_allow_fin_dat`
			, `earl_allow_start_dat`
			, `latest_allow_fin_dat`
			, `original_due_date`
			, `object_list`
			, `catalog_type`
			, `code_group`
			, `coding`
			, `action`
			)
	SELECT  `new`.`functional_loc`
			, `new`.`description`
			, `new`.`order_type`
			, `new`.`Order`
			, `new`.`maint_activ_type`
			, `new`.`description_4`
			, `new`.`planner_group`
			, `new`.`main_work_ctr`
			, `new`.`user_status`
			, `new`.`system_status`
			, `new`.`Priority`
			, `new`.`estimated_costs`
			, `new`.`total_act_costs`
			, `new`.`total_settlemt`
			, `new`.`total_plnnd_costs`
			, `new`.`tot_sum_plan`
			, `new`.`total_rev_act`
			, `new`.`tot_plan_rev`
			, `new`.`tot_sum_actual`
			, `new`.`abc_indic`
			, `new`.`reference_date`
			, `new`.`ref_element_pm_ps`
			, `new`.`address_number`
			, `new`.`reference_time`
			, `new`.`changed_on`
			, `new`.`changed_by`
			, `new`.`available_to`
			, `new`.`avail_to_time`
			, `new`.`asset`
			, `new`.`sub_number`
			, `new`.`available_from`
			, `new`.`available_from30`
			, `new`.`system_condition`
			, `new`.`work_center`
			, `new`.`priority_type`
			, `new`.`res_purc_req`
			, `new`.`subnet_work_of`
			, `new`.`order_category`
			, `new`.`plant_wk_cntr`
			, `new`.`assembly`
			, `new`.`assembly_desc`
			, `new`.`plant_section`
			, `new`.`acctg_indicator`
			, `new`.`po_date`
			, `new`.`po_number`
			, `new`.`company_code`
			, `new`.`city`
			, `new`.`district`
			, `new`.`country`
			, `new`.`device_data`
			, `new`.`sort_field`
			, `new`.`description_50`
			, `new`.`equipment`
			, `new`.`created_on`
			, `new`.`entered_by`
			, `new`.`billingform`
			, `new`.`actual_release`
			, `new`.`actual_finish`
			, `new`.`actual_finish1`
			, `new`.`basic_fin_date`
			, `new`.`sched_finish`
			, `new`.`basic_fin_time`
			, `new`.`finish_time`
			, `new`.`business_area`
			, `new`.`actual_start`
			, `new`.`bas_start_date`
			, `new`.`sched_start`
			, `new`.`actual_start1`
			, `new`.`start_time`
			, `new`.`sched_start_time`
			, `new`.`hist_fr`
			, `new`.`planning_plant`
			, `new`.`costing_sheet`
			, `new`.`sales_document`
			, `new`.`item`
			, `new`.`co_Area`
			, `new`.`cost_center`
			, `new`.`resp_cost_cntr`
			, `new`.`customer`
			, `new`.`leading_order`
			, `new`.`deletion_flag`
			, `new`.`long_txt_exists`
			, `new`.`description_81`
			, `new`.`superior_order`
			, `new`.`base_unit`
			, `new`.`quantity`
			, `new`.`room`
			, `new`.`list_name`
			, `new`.`object_number`
			, `new`.`paging_status`
			, `new`.`pgrp_task_list`
			, `new`.`order_plan_ind`
			, `new`.`group_counter`
			, `new`.`group`
			, `new`.`postal_code`
			, `new`.`profit_center`
			, `new`.`priority_95`
			, `new`.`wbs_element`
			, `new`.`wbs_ord_header`
			, `new`.`notification`
			, `new`.`region`
			, `new`.`revision`
			, `new`.`serial_number`
			, `new`.`material`
			, `new`.`service_product`
			, `new`.`service_product_104`
			, `new`.`division`
			, `new`.`division_sales`
			, `new`.`location`
			, `new`.`street`
			, `new`.`maint_plant`
			, `new`.`telephone`
			, `new`.`sales_office`
			, `new`.`sales_group`
			, `new`.`sales_org`
			, `new`.`sales_org_sales`
			, `new`.`superior_act`
			, `new`.`distr_channel`
			, `new`.`distr_channel_sal`
			, `new`.`currency`
			, `new`.`maint_item`
			, `new`.`maintenance_plan`
			, `new`.`plant`
			, `new`.`comp`
			, `new`.`overhead_key`
			, `new`.`earlst_allow_fin_dat`
			, `new`.`earl_allow_start_dat`
			, `new`.`latest_allow_fin_dat`
			, `new`.`original_due_date`
			, `new`.`object_list`
			, `new`.`catalog_type`
			, `new`.`code_group`
			, `new`.`coding`
			, 'C' AS 'action'
	FROM `barrier_landing`.`work_order_eis_mdp1` AS `new`
	INNER JOIN  `barrier_ods`.`work_order_eis_mdp1` AS `existing`
	ON `new`.`Order` = `existing`.`order` AND `existing`.`current_flag` = 1
	WHERE `existing`.`latest_allow_fin_dat` <> `new`.`latest_allow_fin_dat` OR 
	 `existing`.`latest_allow_fin_dat` IS NULL;


	INSERT INTO `barrier_ods`.`work_order_eis_mdp1_tmp`
		(
			  `functional_loc`
			, `description`
			, `order_type`
			, `Order`
			, `maint_activ_type`
			, `description_4`
			, `planner_group`
			, `main_work_ctr`
			, `user_status`
			, `system_status`
			, `Priority`
			, `estimated_costs`
			, `total_act_costs`
			, `total_settlemt`
			, `total_plnnd_costs`
			, `tot_sum_plan`
			, `total_rev_act`
			, `tot_plan_rev`
			, `tot_sum_actual`
			, `abc_indic`
			, `reference_date`
			, `ref_element_pm_ps`
			, `address_number`
			, `reference_time`
			, `changed_on`
			, `changed_by`
			, `available_to`
			, `avail_to_time`
			, `asset`
			, `sub_number`
			, `available_from`
			, `available_from30`
			, `system_condition`
			, `work_center`
			, `priority_type`
			, `res_purc_req`
			, `subnet_work_of`
			, `order_category`
			, `plant_wk_cntr`
			, `assembly`
			, `assembly_desc`
			, `plant_section`
			, `acctg_indicator`
			, `po_date`
			, `po_number`
			, `company_code`
			, `city`
			, `district`
			, `country`
			, `device_data`
			, `sort_field`
			, `description_50`
			, `equipment`
			, `created_on`
			, `entered_by`
			, `billingform`
			, `actual_release`
			, `actual_finish`
			, `actual_finish1`
			, `basic_fin_date`
			, `sched_finish`
			, `basic_fin_time`
			, `finish_time`
			, `business_area`
			, `actual_start`
			, `bas_start_date`
			, `sched_start`
			, `actual_start1`
			, `start_time`
			, `sched_start_time`
			, `hist_fr`
			, `planning_plant`
			, `costing_sheet`
			, `sales_document`
			, `item`
			, `co_Area`
			, `cost_center`
			, `resp_cost_cntr`
			, `customer`
			, `leading_order`
			, `deletion_flag`
			, `long_txt_exists`
			, `description_81`
			, `superior_order`
			, `base_unit`
			, `quantity`
			, `room`
			, `list_name`
			, `object_number`
			, `paging_status`
			, `pgrp_task_list`
			, `order_plan_ind`
			, `group_counter`
			, `group`
			, `postal_code`
			, `profit_center`
			, `priority_95`
			, `wbs_element`
			, `wbs_ord_header`
			, `notification`
			, `region`
			, `revision`
			, `serial_number`
			, `material`
			, `service_product`
			, `service_product_104`
			, `division`
			, `division_sales`
			, `location`
			, `street`
			, `maint_plant`
			, `telephone`
			, `sales_office`
			, `sales_group`
			, `sales_org`
			, `sales_org_sales`
			, `superior_act`
			, `distr_channel`
			, `distr_channel_sal`
			, `currency`
			, `maint_item`
			, `maintenance_plan`
			, `plant`
			, `comp`
			, `overhead_key`
			, `earlst_allow_fin_dat`
			, `earl_allow_start_dat`
			, `latest_allow_fin_dat`
			, `original_due_date`
			, `object_list`
			, `catalog_type`
			, `code_group`
			, `coding`
			, `action`
			)
	SELECT  `new`.`functional_loc`
			, `new`.`description`
			, `new`.`order_type`
			, `new`.`Order`
			, `new`.`maint_activ_type`
			, `new`.`description_4`
			, `new`.`planner_group`
			, `new`.`main_work_ctr`
			, `new`.`user_status`
			, `new`.`system_status`
			, `new`.`Priority`
			, `new`.`estimated_costs`
			, `new`.`total_act_costs`
			, `new`.`total_settlemt`
			, `new`.`total_plnnd_costs`
			, `new`.`tot_sum_plan`
			, `new`.`total_rev_act`
			, `new`.`tot_plan_rev`
			, `new`.`tot_sum_actual`
			, `new`.`abc_indic`
			, `new`.`reference_date`
			, `new`.`ref_element_pm_ps`
			, `new`.`address_number`
			, `new`.`reference_time`
			, `new`.`changed_on`
			, `new`.`changed_by`
			, `new`.`available_to`
			, `new`.`avail_to_time`
			, `new`.`asset`
			, `new`.`sub_number`
			, `new`.`available_from`
			, `new`.`available_from30`
			, `new`.`system_condition`
			, `new`.`work_center`
			, `new`.`priority_type`
			, `new`.`res_purc_req`
			, `new`.`subnet_work_of`
			, `new`.`order_category`
			, `new`.`plant_wk_cntr`
			, `new`.`assembly`
			, `new`.`assembly_desc`
			, `new`.`plant_section`
			, `new`.`acctg_indicator`
			, `new`.`po_date`
			, `new`.`po_number`
			, `new`.`company_code`
			, `new`.`city`
			, `new`.`district`
			, `new`.`country`
			, `new`.`device_data`
			, `new`.`sort_field`
			, `new`.`description_50`
			, `new`.`equipment`
			, `new`.`created_on`
			, `new`.`entered_by`
			, `new`.`billingform`
			, `new`.`actual_release`
			, `new`.`actual_finish`
			, `new`.`actual_finish1`
			, `new`.`basic_fin_date`
			, `new`.`sched_finish`
			, `new`.`basic_fin_time`
			, `new`.`finish_time`
			, `new`.`business_area`
			, `new`.`actual_start`
			, `new`.`bas_start_date`
			, `new`.`sched_start`
			, `new`.`actual_start1`
			, `new`.`start_time`
			, `new`.`sched_start_time`
			, `new`.`hist_fr`
			, `new`.`planning_plant`
			, `new`.`costing_sheet`
			, `new`.`sales_document`
			, `new`.`item`
			, `new`.`co_Area`
			, `new`.`cost_center`
			, `new`.`resp_cost_cntr`
			, `new`.`customer`
			, `new`.`leading_order`
			, `new`.`deletion_flag`
			, `new`.`long_txt_exists`
			, `new`.`description_81`
			, `new`.`superior_order`
			, `new`.`base_unit`
			, `new`.`quantity`
			, `new`.`room`
			, `new`.`list_name`
			, `new`.`object_number`
			, `new`.`paging_status`
			, `new`.`pgrp_task_list`
			, `new`.`order_plan_ind`
			, `new`.`group_counter`
			, `new`.`group`
			, `new`.`postal_code`
			, `new`.`profit_center`
			, `new`.`priority_95`
			, `new`.`wbs_element`
			, `new`.`wbs_ord_header`
			, `new`.`notification`
			, `new`.`region`
			, `new`.`revision`
			, `new`.`serial_number`
			, `new`.`material`
			, `new`.`service_product`
			, `new`.`service_product_104`
			, `new`.`division`
			, `new`.`division_sales`
			, `new`.`location`
			, `new`.`street`
			, `new`.`maint_plant`
			, `new`.`telephone`
			, `new`.`sales_office`
			, `new`.`sales_group`
			, `new`.`sales_org`
			, `new`.`sales_org_sales`
			, `new`.`superior_act`
			, `new`.`distr_channel`
			, `new`.`distr_channel_sal`
			, `new`.`currency`
			, `new`.`maint_item`
			, `new`.`maintenance_plan`
			, `new`.`plant`
			, `new`.`comp`
			, `new`.`overhead_key`
			, `new`.`earlst_allow_fin_dat`
			, `new`.`earl_allow_start_dat`
			, `new`.`latest_allow_fin_dat`
			, `new`.`original_due_date`
			, `new`.`object_list`
			, `new`.`catalog_type`
			, `new`.`code_group`
			, `new`.`coding`
			, 'U' AS 'action'
	FROM `barrier_landing`.`work_order_eis_mdp1` AS `new`
	INNER JOIN  `barrier_ods`.`work_order_eis_mdp1` AS `existing`
	ON `new`.`Order` = `existing`.`order` AND `existing`.`current_flag` = 1
	WHERE `new`.`Order` NOT IN (SELECT `Order` FROM `barrier_ods`.`work_order_eis_mdp1_tmp`);

	INSERT INTO `barrier_ods`.`work_order_eis_mdp1_tmp`
		(
			  `functional_loc`
			, `description`
			, `order_type`
			, `Order`
			, `maint_activ_type`
			, `description_4`
			, `planner_group`
			, `main_work_ctr`
			, `user_status`
			, `system_status`
			, `Priority`
			, `estimated_costs`
			, `total_act_costs`
			, `total_settlemt`
			, `total_plnnd_costs`
			, `tot_sum_plan`
			, `total_rev_act`
			, `tot_plan_rev`
			, `tot_sum_actual`
			, `abc_indic`
			, `reference_date`
			, `ref_element_pm_ps`
			, `address_number`
			, `reference_time`
			, `changed_on`
			, `changed_by`
			, `available_to`
			, `avail_to_time`
			, `asset`
			, `sub_number`
			, `available_from`
			, `available_from30`
			, `system_condition`
			, `work_center`
			, `priority_type`
			, `res_purc_req`
			, `subnet_work_of`
			, `order_category`
			, `plant_wk_cntr`
			, `assembly`
			, `assembly_desc`
			, `plant_section`
			, `acctg_indicator`
			, `po_date`
			, `po_number`
			, `company_code`
			, `city`
			, `district`
			, `country`
			, `device_data`
			, `sort_field`
			, `description_50`
			, `equipment`
			, `created_on`
			, `entered_by`
			, `billingform`
			, `actual_release`
			, `actual_finish`
			, `actual_finish1`
			, `basic_fin_date`
			, `sched_finish`
			, `basic_fin_time`
			, `finish_time`
			, `business_area`
			, `actual_start`
			, `bas_start_date`
			, `sched_start`
			, `actual_start1`
			, `start_time`
			, `sched_start_time`
			, `hist_fr`
			, `planning_plant`
			, `costing_sheet`
			, `sales_document`
			, `item`
			, `co_Area`
			, `cost_center`
			, `resp_cost_cntr`
			, `customer`
			, `leading_order`
			, `deletion_flag`
			, `long_txt_exists`
			, `description_81`
			, `superior_order`
			, `base_unit`
			, `quantity`
			, `room`
			, `list_name`
			, `object_number`
			, `paging_status`
			, `pgrp_task_list`
			, `order_plan_ind`
			, `group_counter`
			, `group`
			, `postal_code`
			, `profit_center`
			, `priority_95`
			, `wbs_element`
			, `wbs_ord_header`
			, `notification`
			, `region`
			, `revision`
			, `serial_number`
			, `material`
			, `service_product`
			, `service_product_104`
			, `division`
			, `division_sales`
			, `location`
			, `street`
			, `maint_plant`
			, `telephone`
			, `sales_office`
			, `sales_group`
			, `sales_org`
			, `sales_org_sales`
			, `superior_act`
			, `distr_channel`
			, `distr_channel_sal`
			, `currency`
			, `maint_item`
			, `maintenance_plan`
			, `plant`
			, `comp`
			, `overhead_key`
			, `earlst_allow_fin_dat`
			, `earl_allow_start_dat`
			, `latest_allow_fin_dat`
			, `original_due_date`
			, `object_list`
			, `catalog_type`
			, `code_group`
			, `coding`
			, `action`
			)
	SELECT  `new`.`functional_loc`
			, `new`.`description`
			, `new`.`order_type`
			, `new`.`Order`
			, `new`.`maint_activ_type`
			, `new`.`description_4`
			, `new`.`planner_group`
			, `new`.`main_work_ctr`
			, `new`.`user_status`
			, `new`.`system_status`
			, `new`.`Priority`
			, `new`.`estimated_costs`
			, `new`.`total_act_costs`
			, `new`.`total_settlemt`
			, `new`.`total_plnnd_costs`
			, `new`.`tot_sum_plan`
			, `new`.`total_rev_act`
			, `new`.`tot_plan_rev`
			, `new`.`tot_sum_actual`
			, `new`.`abc_indic`
			, `new`.`reference_date`
			, `new`.`ref_element_pm_ps`
			, `new`.`address_number`
			, `new`.`reference_time`
			, `new`.`changed_on`
			, `new`.`changed_by`
			, `new`.`available_to`
			, `new`.`avail_to_time`
			, `new`.`asset`
			, `new`.`sub_number`
			, `new`.`available_from`
			, `new`.`available_from30`
			, `new`.`system_condition`
			, `new`.`work_center`
			, `new`.`priority_type`
			, `new`.`res_purc_req`
			, `new`.`subnet_work_of`
			, `new`.`order_category`
			, `new`.`plant_wk_cntr`
			, `new`.`assembly`
			, `new`.`assembly_desc`
			, `new`.`plant_section`
			, `new`.`acctg_indicator`
			, `new`.`po_date`
			, `new`.`po_number`
			, `new`.`company_code`
			, `new`.`city`
			, `new`.`district`
			, `new`.`country`
			, `new`.`device_data`
			, `new`.`sort_field`
			, `new`.`description_50`
			, `new`.`equipment`
			, `new`.`created_on`
			, `new`.`entered_by`
			, `new`.`billingform`
			, `new`.`actual_release`
			, `new`.`actual_finish`
			, `new`.`actual_finish1`
			, `new`.`basic_fin_date`
			, `new`.`sched_finish`
			, `new`.`basic_fin_time`
			, `new`.`finish_time`
			, `new`.`business_area`
			, `new`.`actual_start`
			, `new`.`bas_start_date`
			, `new`.`sched_start`
			, `new`.`actual_start1`
			, `new`.`start_time`
			, `new`.`sched_start_time`
			, `new`.`hist_fr`
			, `new`.`planning_plant`
			, `new`.`costing_sheet`
			, `new`.`sales_document`
			, `new`.`item`
			, `new`.`co_Area`
			, `new`.`cost_center`
			, `new`.`resp_cost_cntr`
			, `new`.`customer`
			, `new`.`leading_order`
			, `new`.`deletion_flag`
			, `new`.`long_txt_exists`
			, `new`.`description_81`
			, `new`.`superior_order`
			, `new`.`base_unit`
			, `new`.`quantity`
			, `new`.`room`
			, `new`.`list_name`
			, `new`.`object_number`
			, `new`.`paging_status`
			, `new`.`pgrp_task_list`
			, `new`.`order_plan_ind`
			, `new`.`group_counter`
			, `new`.`group`
			, `new`.`postal_code`
			, `new`.`profit_center`
			, `new`.`priority_95`
			, `new`.`wbs_element`
			, `new`.`wbs_ord_header`
			, `new`.`notification`
			, `new`.`region`
			, `new`.`revision`
			, `new`.`serial_number`
			, `new`.`material`
			, `new`.`service_product`
			, `new`.`service_product_104`
			, `new`.`division`
			, `new`.`division_sales`
			, `new`.`location`
			, `new`.`street`
			, `new`.`maint_plant`
			, `new`.`telephone`
			, `new`.`sales_office`
			, `new`.`sales_group`
			, `new`.`sales_org`
			, `new`.`sales_org_sales`
			, `new`.`superior_act`
			, `new`.`distr_channel`
			, `new`.`distr_channel_sal`
			, `new`.`currency`
			, `new`.`maint_item`
			, `new`.`maintenance_plan`
			, `new`.`plant`
			, `new`.`comp`
			, `new`.`overhead_key`
			, `new`.`earlst_allow_fin_dat`
			, `new`.`earl_allow_start_dat`
			, `new`.`latest_allow_fin_dat`
			, `new`.`original_due_date`
			, `new`.`object_list`
			, `new`.`catalog_type`
			, `new`.`code_group`
			, `new`.`coding`
			, 'I' AS 'action'
	FROM `barrier_landing`.`work_order_eis_mdp1` AS `new`
	LEFT JOIN  `barrier_ods`.`work_order_eis_mdp1` AS `existing`
	ON `new`.`Order` = `existing`.`order` AND `existing`.`current_flag` = 1
	WHERE `existing`.`Order` IS NULL;


	/* Deal with changed rows that need to have history tracked */
	UPDATE `barrier_ods`.`work_order_eis_mdp1` AS `existing`
	INNER JOIN `barrier_ods`.`work_order_eis_mdp1_tmp` AS `new`
	ON `new`.`Order` = `existing`.`Order`
	SET `existing`.`end_dt` = @v_end_dt,
	    `existing`.`current_flag` = 0
	WHERE `new`.`action` = 'C'
	AND `existing`.`current_flag` = 1;

	INSERT INTO `barrier_ods`.`work_order_eis_mdp1`
		(
			  `functional_loc`
			, `description`
			, `order_type`
			, `Order`
			, `maint_activ_type`
			, `description_4`
			, `planner_group`
			, `main_work_ctr`
			, `user_status`
			, `system_status`
			, `Priority`
			, `estimated_costs`
			, `total_act_costs`
			, `total_settlemt`
			, `total_plnnd_costs`
			, `tot_sum_plan`
			, `total_rev_act`
			, `tot_plan_rev`
			, `tot_sum_actual`
			, `abc_indic`
			, `reference_date`
			, `ref_element_pm_ps`
			, `address_number`
			, `reference_time`
			, `changed_on`
			, `changed_by`
			, `available_to`
			, `avail_to_time`
			, `asset`
			, `sub_number`
			, `available_from`
			, `available_from30`
			, `system_condition`
			, `work_center`
			, `priority_type`
			, `res_purc_req`
			, `subnet_work_of`
			, `order_category`
			, `plant_wk_cntr`
			, `assembly`
			, `assembly_desc`
			, `plant_section`
			, `acctg_indicator`
			, `po_date`
			, `po_number`
			, `company_code`
			, `city`
			, `district`
			, `country`
			, `device_data`
			, `sort_field`
			, `description_50`
			, `equipment`
			, `created_on`
			, `entered_by`
			, `billingform`
			, `actual_release`
			, `actual_finish`
			, `actual_finish1`
			, `basic_fin_date`
			, `sched_finish`
			, `basic_fin_time`
			, `finish_time`
			, `business_area`
			, `actual_start`
			, `bas_start_date`
			, `sched_start`
			, `actual_start1`
			, `start_time`
			, `sched_start_time`
			, `hist_fr`
			, `planning_plant`
			, `costing_sheet`
			, `sales_document`
			, `item`
			, `co_Area`
			, `cost_center`
			, `resp_cost_cntr`
			, `customer`
			, `leading_order`
			, `deletion_flag`
			, `long_txt_exists`
			, `description_81`
			, `superior_order`
			, `base_unit`
			, `quantity`
			, `room`
			, `list_name`
			, `object_number`
			, `paging_status`
			, `pgrp_task_list`
			, `order_plan_ind`
			, `group_counter`
			, `group`
			, `postal_code`
			, `profit_center`
			, `priority_95`
			, `wbs_element`
			, `wbs_ord_header`
			, `notification`
			, `region`
			, `revision`
			, `serial_number`
			, `material`
			, `service_product`
			, `service_product_104`
			, `division`
			, `division_sales`
			, `location`
			, `street`
			, `maint_plant`
			, `telephone`
			, `sales_office`
			, `sales_group`
			, `sales_org`
			, `sales_org_sales`
			, `superior_act`
			, `distr_channel`
			, `distr_channel_sal`
			, `currency`
			, `maint_item`
			, `maintenance_plan`
			, `plant`
			, `comp`
			, `overhead_key`
			, `earlst_allow_fin_dat`
			, `earl_allow_start_dat`
			, `latest_allow_fin_dat`
			, `original_due_date`
			, `object_list`
			, `catalog_type`
			, `code_group`
			, `coding`
			, `start_dt`
			, `end_dt`
			, `current_flag`
			, `source_extracted_dt`
			)
	SELECT  `new`.`functional_loc`
			, `new`.`description`
			, `new`.`order_type`
			, `new`.`Order`
			, `new`.`maint_activ_type`
			, `new`.`description_4`
			, `new`.`planner_group`
			, `new`.`main_work_ctr`
			, `new`.`user_status`
			, `new`.`system_status`
			, `new`.`Priority`
			, `new`.`estimated_costs`
			, `new`.`total_act_costs`
			, `new`.`total_settlemt`
			, `new`.`total_plnnd_costs`
			, `new`.`tot_sum_plan`
			, `new`.`total_rev_act`
			, `new`.`tot_plan_rev`
			, `new`.`tot_sum_actual`
			, `new`.`abc_indic`
			, `new`.`reference_date`
			, `new`.`ref_element_pm_ps`
			, `new`.`address_number`
			, `new`.`reference_time`
			, `new`.`changed_on`
			, `new`.`changed_by`
			, `new`.`available_to`
			, `new`.`avail_to_time`
			, `new`.`asset`
			, `new`.`sub_number`
			, `new`.`available_from`
			, `new`.`available_from30`
			, `new`.`system_condition`
			, `new`.`work_center`
			, `new`.`priority_type`
			, `new`.`res_purc_req`
			, `new`.`subnet_work_of`
			, `new`.`order_category`
			, `new`.`plant_wk_cntr`
			, `new`.`assembly`
			, `new`.`assembly_desc`
			, `new`.`plant_section`
			, `new`.`acctg_indicator`
			, `new`.`po_date`
			, `new`.`po_number`
			, `new`.`company_code`
			, `new`.`city`
			, `new`.`district`
			, `new`.`country`
			, `new`.`device_data`
			, `new`.`sort_field`
			, `new`.`description_50`
			, `new`.`equipment`
			, `new`.`created_on`
			, `new`.`entered_by`
			, `new`.`billingform`
			, `new`.`actual_release`
			, `new`.`actual_finish`
			, `new`.`actual_finish1`
			, `new`.`basic_fin_date`
			, `new`.`sched_finish`
			, `new`.`basic_fin_time`
			, `new`.`finish_time`
			, `new`.`business_area`
			, `new`.`actual_start`
			, `new`.`bas_start_date`
			, `new`.`sched_start`
			, `new`.`actual_start1`
			, `new`.`start_time`
			, `new`.`sched_start_time`
			, `new`.`hist_fr`
			, `new`.`planning_plant`
			, `new`.`costing_sheet`
			, `new`.`sales_document`
			, `new`.`item`
			, `new`.`co_Area`
			, `new`.`cost_center`
			, `new`.`resp_cost_cntr`
			, `new`.`customer`
			, `new`.`leading_order`
			, `new`.`deletion_flag`
			, `new`.`long_txt_exists`
			, `new`.`description_81`
			, `new`.`superior_order`
			, `new`.`base_unit`
			, `new`.`quantity`
			, `new`.`room`
			, `new`.`list_name`
			, `new`.`object_number`
			, `new`.`paging_status`
			, `new`.`pgrp_task_list`
			, `new`.`order_plan_ind`
			, `new`.`group_counter`
			, `new`.`group`
			, `new`.`postal_code`
			, `new`.`profit_center`
			, `new`.`priority_95`
			, `new`.`wbs_element`
			, `new`.`wbs_ord_header`
			, `new`.`notification`
			, `new`.`region`
			, `new`.`revision`
			, `new`.`serial_number`
			, `new`.`material`
			, `new`.`service_product`
			, `new`.`service_product_104`
			, `new`.`division`
			, `new`.`division_sales`
			, `new`.`location`
			, `new`.`street`
			, `new`.`maint_plant`
			, `new`.`telephone`
			, `new`.`sales_office`
			, `new`.`sales_group`
			, `new`.`sales_org`
			, `new`.`sales_org_sales`
			, `new`.`superior_act`
			, `new`.`distr_channel`
			, `new`.`distr_channel_sal`
			, `new`.`currency`
			, `new`.`maint_item`
			, `new`.`maintenance_plan`
			, `new`.`plant`
			, `new`.`comp`
			, `new`.`overhead_key`
			, `new`.`earlst_allow_fin_dat`
			, `new`.`earl_allow_start_dat`
			, `new`.`latest_allow_fin_dat`
			, `new`.`original_due_date`
			, `new`.`object_list`
			, `new`.`catalog_type`
			, `new`.`code_group`
			, `new`.`coding`
			, @v_start_dt AS `start_dt`
			, NULL AS `end_dt`
			, 1 AS `current_flag`
			, @v_start_dt AS `source_extracted_dt`
	FROM `barrier_ods`.`work_order_eis_mdp1_tmp` AS `new`
	WHERE `new`.`action` = 'C';

	/* Deal with updating existing rows where values have changed but for which we do not need to track history */
	UPDATE `barrier_ods`.`work_order_eis_mdp1` AS `existing`
	INNER JOIN `barrier_ods`.`work_order_eis_mdp1_tmp` AS `new`
	ON `new`.`Order` = `existing`.`order` AND `new`.`action` = 'U'
	SET `existing`.`latest_allow_fin_dat` = `new`.`latest_allow_fin_dat`
	WHERE `existing`.`current_flag` = 1;


	/* Finally insert new rows */
	INSERT INTO `barrier_ods`.`work_order_eis_mdp1`
		(
			  `functional_loc`
			, `description`
			, `order_type`
			, `Order`
			, `maint_activ_type`
			, `description_4`
			, `planner_group`
			, `main_work_ctr`
			, `user_status`
			, `system_status`
			, `Priority`
			, `estimated_costs`
			, `total_act_costs`
			, `total_settlemt`
			, `total_plnnd_costs`
			, `tot_sum_plan`
			, `total_rev_act`
			, `tot_plan_rev`
			, `tot_sum_actual`
			, `abc_indic`
			, `reference_date`
			, `ref_element_pm_ps`
			, `address_number`
			, `reference_time`
			, `changed_on`
			, `changed_by`
			, `available_to`
			, `avail_to_time`
			, `asset`
			, `sub_number`
			, `available_from`
			, `available_from30`
			, `system_condition`
			, `work_center`
			, `priority_type`
			, `res_purc_req`
			, `subnet_work_of`
			, `order_category`
			, `plant_wk_cntr`
			, `assembly`
			, `assembly_desc`
			, `plant_section`
			, `acctg_indicator`
			, `po_date`
			, `po_number`
			, `company_code`
			, `city`
			, `district`
			, `country`
			, `device_data`
			, `sort_field`
			, `description_50`
			, `equipment`
			, `created_on`
			, `entered_by`
			, `billingform`
			, `actual_release`
			, `actual_finish`
			, `actual_finish1`
			, `basic_fin_date`
			, `sched_finish`
			, `basic_fin_time`
			, `finish_time`
			, `business_area`
			, `actual_start`
			, `bas_start_date`
			, `sched_start`
			, `actual_start1`
			, `start_time`
			, `sched_start_time`
			, `hist_fr`
			, `planning_plant`
			, `costing_sheet`
			, `sales_document`
			, `item`
			, `co_Area`
			, `cost_center`
			, `resp_cost_cntr`
			, `customer`
			, `leading_order`
			, `deletion_flag`
			, `long_txt_exists`
			, `description_81`
			, `superior_order`
			, `base_unit`
			, `quantity`
			, `room`
			, `list_name`
			, `object_number`
			, `paging_status`
			, `pgrp_task_list`
			, `order_plan_ind`
			, `group_counter`
			, `group`
			, `postal_code`
			, `profit_center`
			, `priority_95`
			, `wbs_element`
			, `wbs_ord_header`
			, `notification`
			, `region`
			, `revision`
			, `serial_number`
			, `material`
			, `service_product`
			, `service_product_104`
			, `division`
			, `division_sales`
			, `location`
			, `street`
			, `maint_plant`
			, `telephone`
			, `sales_office`
			, `sales_group`
			, `sales_org`
			, `sales_org_sales`
			, `superior_act`
			, `distr_channel`
			, `distr_channel_sal`
			, `currency`
			, `maint_item`
			, `maintenance_plan`
			, `plant`
			, `comp`
			, `overhead_key`
			, `earlst_allow_fin_dat`
			, `earl_allow_start_dat`
			, `latest_allow_fin_dat`
			, `original_due_date`
			, `object_list`
			, `catalog_type`
			, `code_group`
			, `coding`
			, `start_dt`
			, `end_dt`
			, `current_flag`
			, `source_extracted_dt`
			)
	SELECT  `new`.`functional_loc`
			, `new`.`description`
			, `new`.`order_type`
			, `new`.`Order`
			, `new`.`maint_activ_type`
			, `new`.`description_4`
			, `new`.`planner_group`
			, `new`.`main_work_ctr`
			, `new`.`user_status`
			, `new`.`system_status`
			, `new`.`Priority`
			, `new`.`estimated_costs`
			, `new`.`total_act_costs`
			, `new`.`total_settlemt`
			, `new`.`total_plnnd_costs`
			, `new`.`tot_sum_plan`
			, `new`.`total_rev_act`
			, `new`.`tot_plan_rev`
			, `new`.`tot_sum_actual`
			, `new`.`abc_indic`
			, `new`.`reference_date`
			, `new`.`ref_element_pm_ps`
			, `new`.`address_number`
			, `new`.`reference_time`
			, `new`.`changed_on`
			, `new`.`changed_by`
			, `new`.`available_to`
			, `new`.`avail_to_time`
			, `new`.`asset`
			, `new`.`sub_number`
			, `new`.`available_from`
			, `new`.`available_from30`
			, `new`.`system_condition`
			, `new`.`work_center`
			, `new`.`priority_type`
			, `new`.`res_purc_req`
			, `new`.`subnet_work_of`
			, `new`.`order_category`
			, `new`.`plant_wk_cntr`
			, `new`.`assembly`
			, `new`.`assembly_desc`
			, `new`.`plant_section`
			, `new`.`acctg_indicator`
			, `new`.`po_date`
			, `new`.`po_number`
			, `new`.`company_code`
			, `new`.`city`
			, `new`.`district`
			, `new`.`country`
			, `new`.`device_data`
			, `new`.`sort_field`
			, `new`.`description_50`
			, `new`.`equipment`
			, `new`.`created_on`
			, `new`.`entered_by`
			, `new`.`billingform`
			, `new`.`actual_release`
			, `new`.`actual_finish`
			, `new`.`actual_finish1`
			, `new`.`basic_fin_date`
			, `new`.`sched_finish`
			, `new`.`basic_fin_time`
			, `new`.`finish_time`
			, `new`.`business_area`
			, `new`.`actual_start`
			, `new`.`bas_start_date`
			, `new`.`sched_start`
			, `new`.`actual_start1`
			, `new`.`start_time`
			, `new`.`sched_start_time`
			, `new`.`hist_fr`
			, `new`.`planning_plant`
			, `new`.`costing_sheet`
			, `new`.`sales_document`
			, `new`.`item`
			, `new`.`co_Area`
			, `new`.`cost_center`
			, `new`.`resp_cost_cntr`
			, `new`.`customer`
			, `new`.`leading_order`
			, `new`.`deletion_flag`
			, `new`.`long_txt_exists`
			, `new`.`description_81`
			, `new`.`superior_order`
			, `new`.`base_unit`
			, `new`.`quantity`
			, `new`.`room`
			, `new`.`list_name`
			, `new`.`object_number`
			, `new`.`paging_status`
			, `new`.`pgrp_task_list`
			, `new`.`order_plan_ind`
			, `new`.`group_counter`
			, `new`.`group`
			, `new`.`postal_code`
			, `new`.`profit_center`
			, `new`.`priority_95`
			, `new`.`wbs_element`
			, `new`.`wbs_ord_header`
			, `new`.`notification`
			, `new`.`region`
			, `new`.`revision`
			, `new`.`serial_number`
			, `new`.`material`
			, `new`.`service_product`
			, `new`.`service_product_104`
			, `new`.`division`
			, `new`.`division_sales`
			, `new`.`location`
			, `new`.`street`
			, `new`.`maint_plant`
			, `new`.`telephone`
			, `new`.`sales_office`
			, `new`.`sales_group`
			, `new`.`sales_org`
			, `new`.`sales_org_sales`
			, `new`.`superior_act`
			, `new`.`distr_channel`
			, `new`.`distr_channel_sal`
			, `new`.`currency`
			, `new`.`maint_item`
			, `new`.`maintenance_plan`
			, `new`.`plant`
			, `new`.`comp`
			, `new`.`overhead_key`
			, `new`.`earlst_allow_fin_dat`
			, `new`.`earl_allow_start_dat`
			, `new`.`latest_allow_fin_dat`
			, `new`.`original_due_date`
			, `new`.`object_list`
			, `new`.`catalog_type`
			, `new`.`code_group`
			, `new`.`coding`
			, @v_start_dt AS `start_dt`
			, NULL AS `end_dt`
			, 1 AS `current_flag`
			, @v_start_dt AS `source_extracted_dt`
	FROM `barrier_ods`.`work_order_eis_mdp1_tmp` AS `new`
	WHERE `new`.`action` = 'I';

	/* Remove temporary table */
	DROP TEMPORARY TABLE IF EXISTS `barrier_ods`.`work_order_eis_mdp1_tmp`;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
