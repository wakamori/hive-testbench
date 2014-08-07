-- join multiple (over 4) fact table

-- fact table
-- store_sales
-- store_returns
-- catalog_sales
-- catalog_returns
-- web_sales
-- web_returns
-- inventory

explain select *
from (select * from store_sales
  join store_returns on store_sales.ss_item_sk = store_returns.sr_item_sk
  and store_sales.ss_ticket_number = store_returns.sr_ticket_number
  where store_sales.ss_quantity between 0 and 10) t1,
(select * from catalog_sales
  join catalog_returns on catalog_sales.cs_item_sk = catalog_returns.cr_item_sk
  and catalog_sales.cs_order_number = catalog_returns.cr_order_number
  where catalog_sales.cs_quantity between 0 and 5) t2,
(select * from web_sales
  join web_returns on web_sales.ws_item_sk = web_returns.wr_item_sk
  and web_sales.ws_order_number = web_returns.wr_order_number
  where web_sales.ws_quantity between 0 and 3) t3
where t1.ss_item_sk = t2.cs_item_sk
and t2.cs_order_number = t3.ws_order_number
limit 10;
