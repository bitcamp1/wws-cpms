-- DROP TABLE user;
-- DROP TABLE credit;
-- DROP TABLE customer;
-- DROP TABLE deadline;
-- DROP TABLE delivery;
-- DROP TABLE remains;
-- DROP TABLE stock;
-- DROP TABLE storing;
-- DROP TABLE unstoring;
-- DROP TABLE employee;
-- DROP TABLE shop;
-- DROP TABLE commission;
-- DROP TABLE rebate;
-- DROP TABLE deduction;
-- DROP TABLE receipt;
--=========[1]prototype=================

CREATE TABLE usim(
		usim_model VARCHAR(20),
		usim_num VARCHAR(20) PRIMARY KEY,
		usim_price VARCHAR(30)

)ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE juso(
		juso_seq INT AUTO_INCREMENT PRIMARY KEY,
		do_city VARCHAR(20),
		si_gu_gun VARCHAR(20),
		dong VARCHAR(20),
		doro_name VARCHAR(70),
		juso_detail VARCHAR(100),
		zip_code VARCHAR(10)
		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE juso AUTO_INCREMENT = 1000;

CREATE TABLE color(
		color_id VARCHAR(20)PRIMARY KEY,
		color_name VARCHAR(20),
		color_code VARCHAR(50)
)ENGINE=INNODB DEFAULT CHARSET=UTF8;


CREATE TABLE phone
(
		phone_brand VARCHAR(30), -- 브랜드
		phone_name VARCHAR(30), -- 이름
		phone_model VARCHAR(30) PRIMARY KEY, --모델
		phone_price VARCHAR(30), -- 가격
		telecom VARCHAR(5) --출시된 텔레콤
		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;



--=============[2]===================

CREATE TABLE shop  
(
		shop_seq INT AUTO_INCREMENT PRIMARY KEY, -- 일련번호
		shop_regdate TIMESTAMP DEFAULT NOW(), -- 샵 등록일
		shop_name VARCHAR(30) NOT NULL, -- 샵 이름
		shop_pw VARCHAR(30) NOT NULL, -- 샵 비번
		shop_phone VARCHAR(20), -- 샵 전화번호
		shop_fax VARCHAR(20), -- 샵 팩스
		shop_level INT, -- 1:본사 2:총판 3:지사
		sale_type VARCHAR(10), -- 판매유형
		shop_address VARCHAR(20),
		juso_seq INT -- 주소
		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE shop AUTO_INCREMENT = 1000;

CREATE TABLE customer
(
		cust_seq INT AUTO_INCREMENT PRIMARY KEY, 
		cust_regdate  TIMESTAMP DEFAULT NOW(),
		cust_name VARCHAR(30), --  name
		cust_phone VARCHAR(15), --  CP num 
		cust_telnum VARCHAR(15), -- TP num
		cust_num VARCHAR(15) , -- SSN
		cust_birth VARCHAR(18), --  birthday
		juso_seq INT -- 주소

		-- FOREIGN KEY(shop_name, phone_model, tff_name) -- FK :
		-- REFERENCES shop(SHOP_NAME),product(phone_model),tariff(tff_name) -- 샵, 제품, 요금제 테이블 참조
		-- ON UPDATE CASECADE
		-- ON DELETE RESTRICT
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE customer AUTO_INCREMENT = 1000;

--==============[3]==================
 CREATE TABLE creditRetriever
 (
 		cred_seq INT AUTO_INCREMENT PRIMARY KEY,
 		cred_regdate TIMESTAMP DEFAULT NOW(),
 		shop_seq INT,
 		target_name VARCHAR(30),
 		target_num VARCHAR(30),
 		telecom VARCHAR(10),
 		cred_status VARCHAR(30),
 		cred_result VARCHAR(30),
 		cred_manage VARCHAR(30),
 		cred_note VARCHAR(1000)
 		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE creditRetriever AUTO_INCREMENT = 1000;

CREATE TABLE progress(
		prog_status VARCHAR(10),
		cust_seq INT
	
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE progress AUTO_INCREMENT = 1000;

CREATE TABLE user (
		user_seq INT AUTO_INCREMENT PRIMARY KEY,
		user_regdate  TIMESTAMP DEFAULT NOW(),
		uid VARCHAR(30) NOT NULL UNIQUE,
		pwd VARCHAR(30) NOT NULL,
		user_name VARCHAR(30) NOT NULL
		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE user AUTO_INCREMENT = 1000;





CREATE TABLE deadline
(
		dline_seq INT AUTO_INCREMENT PRIMARY KEY,
		dline_regdate TIMESTAMP DEFAULT NOW(),
		shop_name VARCHAR(30),
		policy VARCHAR(30),
		rebate VARCHAR(30),
		commission VARCHAR(30),
		margin VARCHAR(30),
		open_new VARCHAR(10),
		open_mnp VARCHAR(10),
		open_change VARCHAR(10),
		open_reward VARCHAR(10)
	
	
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE delivery
(
		deli_seq INT AUTO_INCREMENT PRIMARY KEY,
		deli_regdate TIMESTAMP DEFAULT NOW(),
		deli_type VARCHAR(10),
		serial_num VARCHAR(30),
		invoice_num VARCHAR(30),
		juso_seq INT
		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE delivery AUTO_INCREMENT = 1000;

CREATE TABLE pay(
		pay_seq INT AUTO_INCREMENT PRIMARY KEY,
		pay_regdate TIMESTAMP DEFAULT NOW(),
		pay_type VARCHAR(10),
		acc_owner VARCHAR(20),
		acc_owner_cust_num VARCHAR(20),
		bank_name VARCHAR(20),
		acc_num VARCHAR(30),
		card_sa VARCHAR(20),
		card_owner VARCHAR(20),
		card_num VARCHAR(30),
		card_yymm VARCHAR(10),
		cust_seq INT
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE pay AUTO_INCREMENT = 1000;

CREATE TABLE tariff(
		tff_seq INT AUTO_INCREMENT PRIMARY KEY,
		tff_regdate TIMESTAMP DEFAULT NOW(),
		tff_name VARCHAR(20),
		join_type VARCHAR(20),
		join_fee VARCHAR(15),
		halbu_wol VARCHAR(4),
		bosang_level VARCHAR(10),
		buga_service VARCHAR(20),
		yakjung VARCHAR(20),
		mnp_inj VARCHAR(20),
		halin_type VARCHAR(20),
		halbu_kumak VARCHAR(20),
		halbu_wonkum VARCHAR(20)
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE tariff AUTO_INCREMENT = 1000;

CREATE TABLE policy(
		pol_seq INT AUTO_INCREMENT PRIMARY KEY,
		pol_regdate TIMESTAMP DEFAULT NOW(),
		pol_name VARCHAR(20),
		join_type VARCHAR(20),
		join_fee VARCHAR(15),
		halbu_wol VARCHAR(4),
		bosang_level VARCHAR(10),
		buga_service VARCHAR(20),
		yakjung VARCHAR(20),
		mnp_inj VARCHAR(20),
		halin_type VARCHAR(20)
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE policy AUTO_INCREMENT = 1000;


-- inventory
CREATE TABLE inventory
(
		inv_seq INT AUTO_INCREMENT PRIMARY KEY,
		inv_regdate TIMESTAMP DEFAULT NOW(),
		import_num int, -- 공기계 판매등록
		export_num int, -- 공기계 판매현황
		return_num int, -- 공기계 출고로그
		poor_num int, -- 불량등록
		loss_num int, -- 불량현황
		stock_num int, -- 분실재고등록
		tx_invoice VARCHAR(20), -- 거래명세서
		return_invoice VARCHAR(20) -- 기기회수명세서
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE inventory AUTO_INCREMENT = 1000;
CREATE TABLE other(
		o_seq INT AUTO_INCREMENT PRIMARY KEY,
		o_telecom VARCHAR(5),
		o_telnum VARCHAR(20),
		o_hope_num VARCHAR(20),
		o_bohoja VARCHAR(20),
		o_applier VARCHAR(20),
		o_memo VARCHAR(2000),
		o_mibi_doc VARCHAR(100),
		cust_seq INT
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
ALTER TABLE other AUTO_INCREMENT = 1000;
CREATE TABLE remains
(
		rem_seq INT AUTO_INCREMENT PRIMARY KEY,
		rem_regdate TIMESTAMP DEFAULT NOW(),
		gongphone_reg VARCHAR(30), -- 공기계 판매등록
		gongphone_stat VARCHAR(30), -- 공기계 판매현황
		gongphone_ex VARCHAR(30), -- 공기계 출고로그
		poorphone_reg VARCHAR(30), -- 불량등록
		poorphone_stat VARCHAR(30), -- 불량현황
		lossphone_reg VARCHAR(30), -- 분실재고등록
		lossphone_stat VARCHAR(30) -- 분실재고현황
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE stock
(
		stock_seq INT AUTO_INCREMENT PRIMARY KEY,
		stock_regdate TIMESTAMP DEFAULT NOW(),
		phone_model VARCHAR(30),
		phone_color VARCHAR(30), 
		phone_qty int, -- 수량
		stock_stat VARCHAR(30) -- 재고현황
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE storing
(
		stor_seq INT AUTO_INCREMENT PRIMARY KEY,
		stor_log TIMESTAMP DEFAULT NOW(), -- 입고로그
		stor_reg VARCHAR(30), -- 입고등록
		stor_stat VARCHAR(30), -- 입고현황
		stock_setting VARCHAR(30) -- 재고세팅방법
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE unstoring
(
		unstor_seq INT AUTO_INCREMENT PRIMARY KEY,
		unstor_log TIMESTAMP DEFAULT NOW(), -- 출고로그
		unstor_reg VARCHAR(30), -- 출고등록
		unstor_stat VARCHAR(30), -- 출고현황
		txspec_reg VARCHAR(30), -- 거래명세서 등록
		txspec_stat VARCHAR(30), -- 거래명세서 현황
		stock_move VARCHAR(30), -- 재고 이동
		recover_reg VARCHAR(30), -- 기기회수등록
		recover_stat VARCHAR(30), -- 기기회수 현황
		recover_spec_stat VARCHAR(30) -- 기기회수명세서 현황
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
-- manager
-- auth
CREATE TABLE employee
(
		emp_seq INT AUTO_INCREMENT PRIMARY KEY,
		emp_regdate TIMESTAMP DEFAULT NOW(), 
		emp_log TIMESTAMP DEFAULT NOW(), -- 로그기록 : 로그인 시간
		emp_position VARCHAR(10) NOT NULL, -- 직위
		emp_name VARCHAR(30)NOT NULL, -- 이름
		emp_id VARCHAR(30) NOT NULL UNIQUE, -- ID
		emp_pw VARCHAR(30) NOT NULL, -- 비번
		emp_phone VARCHAR(20), -- 연락처
		emp_email VARCHAR(30), -- 이메일
		emp_memo VARCHAR(1000), -- 메모
		shop_seq INT
		-- FOREIGN KEY(SHP_SEQ) -- FK : 샵 일련번호
		-- REFERENCES SHOP (SHP_SEQ) 
		-- ON UPDATE CASECADE 
		-- ON DELETE RESTRICT
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
 
 -- policy
CREATE TABLE commission
(
		cmmss_seq INT AUTO_INCREMENT PRIMARY KEY,
		cmmss_startdate VARCHAR(30), -- 시작일
		cmmss_enddate VARCHAR(30), -- 종료일
		cmmss_memo VARCHAR(1000) -- 메모
)ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE deduction
(
		deduct_seq INT AUTO_INCREMENT PRIMARY KEY,
		deduct_num INT,
		deduct_startdate VARCHAR(30), -- 시작일
		deduct_enddate VARCHAR(30), -- 종료일
		deduct_memo VARCHAR(1000) -- 메모
)ENGINE=INNODB DEFAULT CHARSET=UTF8;




CREATE TABLE rebate
(
		rebate_seq INT AUTO_INCREMENT PRIMARY KEY,
		rebate_num int, -- 차수
		rebate_startdate TIMESTAMP DEFAULT now(), -- 시작일
		rebate_enddate TIMESTAMP DEFAULT now(), -- 종료일
		rebate_memo VARCHAR(1000) -- 메모
)ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE receipt
(
		rcpt_seq INT AUTO_INCREMENT PRIMARY KEY,
		open_date TIMESTAMP DEFAULT NOW(), -- 개통일자
		rcpt_date TIMESTAMP DEFAULT NOW(), -- 수납일자
		cust_name VARCHAR(30), -- 명의자
		confirm_num int, -- 확정번호
		rcpt_type VARCHAR(10),-- 수납유형
		calc_price int, -- 정산금액
		noncalc_price int, -- 미정산금액
		calc_yn VARCHAR(5), -- 정산여부
		agency_name VARCHAR(30), -- 대리점/총판
		shop_name VARCHAR(30), -- 지사/판매점
		rcpt_memo VARCHAR(1000) -- 메모
		
)ENGINE=INNODB DEFAULT CHARSET=UTF8;

CREATE TABLE joinOp
(
		joinop_seq INT AUTO_INCREMENT PRIMARY KEY,
		joinop_title VARCHAR(20),
		joinop_text1 VARCHAR(20),
		joinop_text2 VARCHAR(20),
		joinop_text3 VARCHAR(20),
		joinop_text4 VARCHAR(20),
		joinop_text5 VARCHAR(20),
		telecom VARCHAR(50)

)ENGINE=INNODB DEFAULT CHARSET=UTF8;

