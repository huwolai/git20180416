-- +migrate Up

-- 已售数量初始化
ALTER TABLE `product` MODIFY COLUMN `sold_num`  int(11) UNSIGNED NULL DEFAULT NULL COMMENT '已售数量' AFTER `is_recom`;
ALTER TABLE `product` ADD COLUMN `sold_num_init`  int(11) UNSIGNED NULL DEFAULT NULL COMMENT '已售数量  初始化' AFTER `json`;
-- +migrate StatementEnd