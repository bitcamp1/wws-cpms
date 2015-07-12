select 
	emp_seq as empSeq,
	emp_regdate as empRegDate,
	emp_position as empPosition,
	emp_name as empName,
	emp_id as empId,
	emp_pw as empPw,
	emp_phone as empPhone,
	emp_email as empEmail,
	emp_memo as empMemo,
	shop_seq as shopSeq
from 
employee
ORDER BY emp_seq DESC
		LIMIT 0,9

	
SELECT
			cmmss_seq as cmmssSeq,
			cmmss_num as cmmssNum,
			cmmss_startdate as cmmssStartDate,
			cmmss_enddate as cmmssEndDate,
			cmmss_memo as cmmssMemo
		FROM commission
		ORDER BY cmmss_seq DESC
		LIMIT 0,9

SELECT
	rebate_seq as rebateSeq,
	rebate_num as rebateNum,
	rebate_startdate as startDate,
	rebate_enddate as endDate,
	rebate_memo as rebateMemo
FROM rebate
ORDER BY rebate_seq DESC
LIMIT 0,9

SELECT
	deli_seq as deliSeq,
	open_shop as openShop, -- 개통처
	phone_model as phoneModel,
	usim_card as usimCard,
	phone_color as phoneColor,
	cust_name as custName,
	phone_num as phoneName,
	prog_stat as progStat,
	open_yn as openYn,
	cust_num as custNum,
	serial_num as serialNum,
	invoice_num as invoiceNum,
	usim_num as usimNum
FROM delivery 
ORDER BY deli_seq DESC
LIMIT 0,9
;
SELECT
	rcpt_seq as rcptSeq,
	open_date as openDate,
	rcpt_date as rcptDate,
	cust_name as custName,
	confirm_num as confirmNum,
	rcpt_type as rcptType,
	calc_price as calcPrice,
	noncalc_price as nonCalcPrice,
	calc_yn as calcYn,
	agency_name as agencyName,
	shop_name as shopName,
	rcpt_memo as memo
FROM receipt
ORDER BY rcpt_seq DESC
limit 0, 9;

SELECT 
	inv_seq as invSeq,
	inv_regdate as invRegDate,
	import_num as importNum,
	export_num as exportNum,
	return_num as returnNum,
	poor_num as poorNum,
	loss_num as lossNum,
	stock_num as stockNum,
	tx_invoice as txInvoice,
	return_invoice as returnInvoice
FROM inventory 
ORDER BY inv_seq DESC
limit 0,9;

SELECT 
	dline_seq as dlineSeq,
	dline_regdate as dlineRegDate,
	shop_name as shopName,
	policy as policy,
	rebate as rebate,
	commission as commission,
	margin as margin,
	open_new as openNew,
	open_mnp as openMnp,
	open_change as openChange,
	open_reward as openReward
FROM deadline 
ORDER BY dline_seq DESC
limit 0,9;

SELECT 
	phone_seq as phoneSeq,
	phone_brand as phone_brand,
	category as category,
	phone_name as phone_name,
	model_name as model_name,
	phone_size as phone_size,
	camera as camera,
	memory as memory,
	dmb as dmb,
	phone_style as phone_style,
	telecom as telecom
FROM phone 
ORDER BY phone_seq DESC
limit 0,9;

