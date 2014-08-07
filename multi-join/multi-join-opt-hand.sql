-- join multiple (over 4) fact table

-- fact table
-- store_sales
-- store_returns
-- catalog_sales
-- catalog_returns
-- web_sales
-- web_returns
-- inventory

-- count(t1): 26009 (0-5)
-- count(t2): 14343 (0-5)
-- count(t3): 6813  (0-5)
-- t1 -> t2 -> t3: 200s

-- ws: 1439247
-- wr: 143629
-- t3 (0-3): 4298
-- t3 (0-40): 114778

-- cs: 2880058
-- cr: 288491
-- t2 (0-3): 8575
-- t2 (0-20): 57458

-- ss: 5760749
-- sr: 575285
-- t1 (0-3): 16528

select * from
(select * from web_sales
  join web_returns on web_sales.ws_item_sk = web_returns.wr_item_sk
  and web_sales.ws_order_number = web_returns.wr_order_number
  where web_sales.ws_quantity between 0 and 40) t3,
(select * from (select * from catalog_sales
    join catalog_returns on catalog_sales.cs_item_sk = catalog_returns.cr_item_sk
    and catalog_sales.cs_order_number = catalog_returns.cr_order_number
    where catalog_sales.cs_quantity between 0 and 20) t2,
  (select * from store_sales
    join store_returns on store_sales.ss_item_sk = store_returns.sr_item_sk
    and store_sales.ss_ticket_number = store_returns.sr_ticket_number
    where store_sales.ss_quantity between 0 and 3) t1
  where t1.ss_item_sk = t2.cs_item_sk) t4
where t4.cs_order_number = t3.ws_order_number
limit 10;
