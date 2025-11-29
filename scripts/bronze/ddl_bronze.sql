/* 
--------------------------------------------------------------
-- DDL Script: Create Bronze Tables
--------------------------------------------------------------
Script Purpose: 
  This script creates tables in the 'bronze' schema, dropping the existing tables
  if they already exist.
  Run this cript to re-define the DDL structure of 'bronze' Tables.
--------------------------------------------------------------
*/


-- cust_info.csv
CREATE OR REPLACE TABLE datawarehouse.bronze.crm_cust_info (
  cst_id string,
  cst_key string,
  cst_firstname string,
  cst_lastname string,
  cst_marital_status string,
  cst_gndr string,
  cst_create_date date
);


-- prd_info.csv
CREATE OR REPLACE TABLE datawarehouse.bronze.crm_prd_info (
  prd_id string,
  prd_key string,
  prd_nm string,
  prd_cost int,
  prd_line string,
  prd_start_dt date,
  prd_end_dt date
);


-- sales_details.csv
CREATE OR REPLACE TABLE datawarehouse.bronze.crm_sales_details (
  sls_ord_num string,
  sls_prd_key string,
  sls_cust_id int,
  sls_order_dt string,
  sls_ship_dt string,
  sls_due_dt string,
  sls_sales int,
  sls_quantity int,
  sls_price int
);


-- ------------------------
-- Create Tables from ERP System

-- CUST_AZ12.csv
CREATE OR REPLACE TABLE datawarehouse.bronze.erp_cust_az12 (
  CID string,
  BDATE date,
  GEN string
);


-- LOC_a101.csv
CREATE OR REPLACE TABLE datawarehouse.bronze.erp_loc_a101 (
  CID string,
  CNTRY string
);

-- PX_CAT_G1V2.csv
CREATE OR REPLACE TABLE datawarehouse.bronze.erp_px_cat_g1v2 (
  ID string,
  CAT string,
  SUBCAT string,
  MAINTENANCE string
);






