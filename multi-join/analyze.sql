use tpcds_text_100;

analyze table store_sales compute statistics;
analyze table store_sales compute statistics FOR COLUMNS
  ss_sold_date_sk, ss_sold_time_sk, ss_item_sk, ss_customer_sk,
  ss_cdemo_sk, ss_hdemo_sk, ss_addr_sk, ss_store_sk, ss_promo_sk,
  ss_ticket_number, ss_quantity, ss_wholesale_cost,
  ss_list_price, ss_sales_price, ss_ext_discount_amt,
  ss_ext_sales_price, ss_ext_wholesale_cost, ss_ext_list_price,
  ss_ext_tax, ss_coupon_amt, ss_net_paid, ss_net_paid_inc_tax,
  ss_net_profit;
analyze table store_returns compute statistics;
analyze table store_returns compute statistics FOR COLUMNS
  sr_returned_date_sk, sr_return_time_sk, sr_item_sk,
  sr_customer_sk, sr_cdemo_sk, sr_hdemo_sk, sr_addr_sk,
  sr_store_sk, sr_reason_sk, sr_ticket_number,
  sr_return_quantity, sr_return_amt, sr_return_tax,
  sr_return_amt_inc_tax, sr_fee, sr_return_ship_cost,
  sr_refunded_cash, sr_reversed_charge, sr_store_credit,
  sr_net_loss;
analyze table catalog_sales compute statistics;
ANALYZE TABLE catalog_sales COMPUTE STATISTICS FOR COLUMNS
  cs_sold_date_sk, cs_sold_time_sk, cs_ship_date_sk,
  cs_bill_customer_sk, cs_bill_cdemo_sk, cs_bill_hdemo_sk,
  cs_bill_addr_sk, cs_ship_customer_sk, cs_ship_cdemo_sk,
  cs_ship_hdemo_sk, cs_ship_addr_sk, cs_call_center_sk,
  cs_catalog_page_sk, cs_ship_mode_sk, cs_warehouse_sk,
  cs_item_sk, cs_promo_sk, cs_order_number, cs_quantity,
  cs_wholesale_cost, cs_list_price, cs_sales_price,
  cs_ext_discount_amt, cs_ext_sales_price, cs_ext_wholesale_cost,
  cs_ext_list_price, cs_ext_tax, cs_coupon_amt, cs_ext_ship_cost,
  cs_net_paid, cs_net_paid_inc_tax, cs_net_paid_inc_ship,
  cs_net_paid_inc_ship_tax, cs_net_profit;
analyze table catalog_returns compute statistics;
ANALYZE TABLE catalog_returns COMPUTE STATISTICS FOR COLUMNS
  cr_returned_date_sk, cr_returned_time_sk, cr_item_sk,
  cr_refunded_customer_sk, cr_refunded_cdemo_sk,
  cr_refunded_hdemo_sk, cr_refunded_addr_sk,
  cr_returning_customer_sk, cr_returning_cdemo_sk,
  cr_returning_hdemo_sk, cr_returning_addr_sk, cr_call_center_sk,
  cr_catalog_page_sk, cr_ship_mode_sk, cr_warehouse_sk,
  cr_reason_sk, cr_order_number, cr_return_quantity,
  cr_return_amount, cr_return_tax, cr_return_amt_inc_tax, cr_fee,
  cr_return_ship_cost, cr_refunded_cash, cr_reversed_charge,
  cr_store_credit, cr_net_loss;
analyze table web_sales compute statistics;
ANALYZE TABLE web_sales COMPUTE STATISTICS FOR COLUMNS
  ws_sold_date_sk, ws_sold_time_sk, ws_ship_date_sk, ws_item_sk,
  ws_bill_customer_sk, ws_bill_cdemo_sk, ws_bill_hdemo_sk,
  ws_bill_addr_sk, ws_ship_customer_sk, ws_ship_cdemo_sk,
  ws_ship_hdemo_sk, ws_ship_addr_sk, ws_web_page_sk,
  ws_web_site_sk, ws_ship_mode_sk, ws_warehouse_sk, ws_promo_sk,
  ws_order_number, ws_quantity, ws_wholesale_cost, ws_list_price,
  ws_sales_price, ws_ext_discount_amt, ws_ext_sales_price,
  ws_ext_wholesale_cost, ws_ext_list_price, ws_ext_tax,
  ws_coupon_amt, ws_ext_ship_cost, ws_net_paid,
  ws_net_paid_inc_tax, ws_net_paid_inc_ship,
  ws_net_paid_inc_ship_tax, ws_net_profit;
analyze table web_returns compute statistics;
ANALYZE TABLE web_returns COMPUTE STATISTICS FOR COLUMNS
  wr_returned_date_sk, wr_returned_time_sk, wr_item_sk,
  wr_refunded_customer_sk, wr_refunded_cdemo_sk,
  wr_refunded_hdemo_sk, wr_refunded_addr_sk,
  wr_returning_customer_sk, wr_returning_cdemo_sk,
  wr_returning_hdemo_sk, wr_returning_addr_sk, wr_web_page_sk,
  wr_reason_sk, wr_order_number, wr_return_quantity,
  wr_return_amt, wr_return_tax, wr_return_amt_inc_tax, wr_fee,
  wr_return_ship_cost, wr_refunded_cash, wr_reversed_charge,
  wr_account_credit, wr_net_loss;
