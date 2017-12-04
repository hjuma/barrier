-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------
CREATE OR REPLACE VIEW `vw_asset_level_barrier_type` AS SELECT   `facility_id`
		 , `barrier_type_id`
		 , `count_of_data`
		 , CASE
		 		WHEN `red_count` > `rs`.`amber_end` THEN 'R'
		 		WHEN `amber_count` >= `rs`.`amber_start` THEN 'A'
		 		ELSE 'G'
		 	END `rag_status`
		 , red_count
		 , amber_count
		 , green_count
		 , SYSDATE() created_at
		 , SYSDATE() updated_at
FROM `barrier`.`vw_asset_level_data` `data`
INNER JOIN `barrier`.`barrier_type` `bt`
ON `data`.`barrier_type_id` = `bt`.`id`
INNER JOIN `barrier`.`asset_rule_set` `rs`
ON `bt`.`barrier_id` = `rs`.`barrier_id`
AND `rs`.`current_flag` = 1 ;


