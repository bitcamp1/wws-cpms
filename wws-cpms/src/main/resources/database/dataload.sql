-- FK 때문에 1순위 삽입
INSERT juso SET -- 1000
	do_city = '서울특별시',
	si_gu_gun = '구로구',
	dong = '구로동',
	doro_name = '디지털로26길',
	juso_detail = '에이스하이엔드1차 1016호',
	zip_code = '152-740'
;
INSERT juso SET -- 1001
	do_city = '서울특별시',
	si_gu_gun = '강남구',
	dong = '역삼동',
	doro_name = '테헤란로 101',
	juso_detail = '821-1',
	zip_code = '152-000'
;
INSERT juso SET -- 1002
	do_city = '부산',
	si_gu_gun = '사하구',
	dong = '사하동',
	doro_name = '부산로 101',
	juso_detail = '821-1',
	zip_code = '121-666'
;
SELECT * FROM juso;
-- FK 때문에 2순위 삽입
INSERT shop SET
	shop_name ='화이트윙시스템', -- 샵 이름
	shop_pw ='1', -- 샵 비번
	shop_phone ='02-5555-9999', -- 샵 전화번호
	shop_fax ='02-8888-9999', -- 샵 팩스
	shop_memo ='최우수 판매점', -- 샵 메모
	sale_type = 'B2B', -- 판매유형
	shop_level = 1, -- 1:본사, 2:총판, 3:지사
	juso_seq = 1000
;
INSERT shop SET
	shop_name ='미래', -- 샵 이름
	shop_pw ='1', -- 샵 비번
	shop_phone ='02-5555-9999', -- 샵 전화번호
	shop_fax ='02-8888-9999', -- 샵 팩스
	shop_memo ='최우수 판매점', -- 샵 메모
	sale_type = '오프라인', -- 판매유형
	shop_level = '2', -- 1:본사, 2:총판, 3:지사
	juso_seq = 1001
;
INSERT shop SET
	shop_name ='헬로우', -- 샵 이름
	shop_pw ='1', -- 샵 비번
	shop_phone ='02-5555-9999', -- 샵 전화번호
	shop_fax ='02-8888-9999', -- 샵 팩스
	shop_memo ='최우수 판매점', -- 샵 메모
	sale_type = '온라인', -- 판매유형
	shop_level = '3', -- 1:본사, 2:총판, 3:지사
	juso_seq = 1001
;
SELECT * FROM shop;




SELECT * FROM policy;

INSERT progress SET
	prog_status = '개통'
;
INSERT progress SET
	prog_status = '교환'
;
INSERT progress SET
	prog_status = '취소'
;
INSERT progress SET
	prog_status = '해지'
;
	

INSERT commission SET
	cmmss_num = 1000,
	cmmss_memo ='메모' -- 메모
;

INSERT deduction SET
	deduct_num = 1000,
	deduct_memo ='메모' -- 메모
;

INSERT rebate SET
	rebate_num = 1000,
	rebate_memo ='메모' -- 메모
;

INSERT user SET
uid = '1000',
pwd = '1',
user_name='화이트윙';


INSERT user SET
uid = 'a',
pwd = '1',
user_name='유관순';


INSERT creditretriever SET
	
 	sale_type ='인터넷',
 	cust_name ='손님01',
 	cred_retrive ='조회중',
 	cred_result ='신용 1등급',
 	cred_manage ='신용관리',
 	cred_note ='개통가능자'
 	
;
INSERT creditretriever SET
 	sale_type ='인터넷',
 	cust_name ='손님02',
 	cred_retrive ='조회실패',
 	cred_result ='신용 불량자',
 	cred_manage ='신용관리필요',
 	cred_note ='개통불가능자'
;

INSERT customer SET
	cust_name = '손님01',
	cust_phone = '010-2222-2222',
	cust_telnum = '02-1111-3333',
	cust_num = '800000-2555555',
	shop_seq=1000,
	juso_seq=1001
;
INSERT customer SET
	cust_name = '손님02',
	cust_phone = '010-3333-3333',
	cust_telnum = '02-1111-3333',
	cust_num = '800000-1555555',
	shop_seq=1001,
	juso_seq=1001
;
INSERT deadline SET
	shop_name ='강남점01',
	policy ='정책',
	rebate ='리베이트',
	commission ='커미션',
	margin ='마진',
	open_new ='신규',
	open_mnp ='mnp',
	open_change ='교환',
	open_reward ='보상기변'
;
INSERT inventory SET
	import_num = 10,
	export_num = 6,
	return_num = 1,
	poor_num = 1,
	loss_num = 1,
	stock_num = 60,
	tx_invoice ='존재함',
	return_invoice='존재함'
;
INSERT delivery SET
	serial_num ='123456789',
	invoice_num ='123456789',
	deli_type='퀵',
	juso_seq=1002
;
INSERT pay SET
	pay_type='카드',
	card_sa='신한',
	card_owner='홍길동',
	card_num='2222-3333-9999-7777',
	card_yymm='2020년01월'
;
INSERT pay SET
	pay_type='은행이체',
	bank_name='하나',
	acc_owner='김강우',
	acc_owner_cust_num='22222',
	acc_num='2222-3333-9999-7777'
;
INSERT remains SET
	gongphone_reg ='공기계 판매등록', -- 공기계 판매등록
	gongphone_stat ='공기계 판매현황', -- 공기계 판매현황
	gongphone_ex ='공기계 출고로그', -- 공기계 출고로그
	poorphone_reg ='불량등록', -- 불량등록
	poorphone_stat ='불량현황', -- 불량현황
	lossphone_reg ='분실재고등록', -- 분실재고등록
	lossphone_stat='분실재고현황' -- 분실재고현황
;
	
INSERT tariff SET
		tff_name ='69요금제',
		join_type='가입방식',
		join_fee ='100원',
		halbu_wol='24개월',
		bosang_leve='보상3등급',
		buga_service='친구찾기',
		yaksung='36개월약정',
		mnp_inj='MNP인증 성공',
		halin_type='친구할인',
		halbu_kumak='10000원',
		halbu_wonkum='1500000원'
;
INSERT other SET
		o_telecom ='LGU',
		o_telnum ='010-666-666',
		o_hope_num ='010-9999-9999',
		o_bohoja ='',
		o_applier ='',
		o_memo ='고생한다',
		o_mibi_doc ='주민증',
		o_inj_num ='888'
;


INSERT storing SET
	stor_reg ='입고등록', -- 입고등록
	stor_stat ='입고현황', -- 입고현황
	stock_setting ='재고세팅방법' -- 재고세팅방법
;
INSERT unstoring SET
	unstor_reg ='출고등록', -- 출고등록
	unstor_stat ='출고현황', -- 출고현황
	txspec_reg ='거래명세서 등록', -- 거래명세서 등록
	txspec_stat ='거래명세서 현황', -- 거래명세서 현황
	stock_move ='재고 이동', -- 재고 이동
	recover_reg ='기기회수등록', -- 기기회수등록
	recover_stat ='기기회수 현황', -- 기기회수 현황
	recover_spec_stat ='기기회수명세서 현황' -- 기기회수명세서 현황
;
INSERT phone SET
	phone_seq ='1000',
	phone_brand = 'Anycall',
 	phone_name ='갤럭시 노트3',
 	phone_model ='SM-N900S',
 	phone_price ='1000',
 	phone_color ='white',
 	telecom = 'skt'
 
;
SELECT * FROM phone;
INSERT usim SET
	usim_model = 'aaaa',
	usim_num = '12345678',
	usim_paytime ='선납',
	usim_price = '10000'
;
SELECT * FROM usim;

INSERT employee  SET
	emp_position ='사원', -- 직위
	emp_name ='홍길동', -- 이름
	emp_id ='hong', -- ID
	emp_pw ='1', -- 비번
	emp_phone ='010-9999-8888', -- 연락처
	emp_email ='hong@test.com', -- 이메일
	emp_memo ='메모', -- 메모
	shop_seq ='1'
;

INSERT commission SET
	cmmss_startdate ='2014.01.01', -- 시작일
	cmmss_enddate ='2014.12.31', -- 종료일
	cmmss_memo ='메모' -- 메모
;
INSERT receipt SET
	-- open_date ='2014.01.01',  개통일자
	-- rcpt_date ='2014.02.20',  수납일자
	cust_name ='임꺽정', -- 명의자
	confirm_num ='10', -- 확정번호
	rcpt_type ='자동이체',-- 수납유형
	calc_price ='50000', -- 정산금액
	noncalc_price ='20000', -- 미정산금액
	calc_yn ='미정산', -- 정산여부
	agency_name ='강남점01', -- 대리점/총판
	shop_name ='판매점01', -- 지사/판매점
	rcpt_memo ='메모' -- 메모
;

