-- 1. PRODUCT 테이블 정의
CREATE TABLE PRODUCT 
(
  PRODUCT_ID VARCHAR2(100 BYTE) NOT NULL 
, NAME VARCHAR2(200 BYTE) 
, PRICE NUMBER 
, CATEGORY VARCHAR2(100 BYTE) 
, DESCRIPTION VARCHAR2(2000 BYTE) 
, IMAGE_PATH VARCHAR2(1000 BYTE) 
, CONSTRAINT MENU_PK PRIMARY KEY 
  (
    PRODUCT_ID 
  )
)
  ;

-- 2. USERS 테이블 정의
CREATE TABLE USERS 
(
  PHONE VARCHAR2(100 BYTE) NOT NULL 
, POINT VARCHAR2(100 BYTE) DEFAULT 0 
, JOIN_DATE DATE DEFAULT sysdate 
, CONSTRAINT USERS_PK PRIMARY KEY 
  (
    PHONE 
  )
)
;
-- 3. CART 테이블 정의
CREATE TABLE CART 
(
  TABLE_NO NUMBER 
, USER_ID VARCHAR2(200 BYTE) 
, PRODUCT_NAME VARCHAR2(200 BYTE) NOT NULL 
, AMOUNT NUMBER DEFAULT 1 NOT NULL 
, PRICE NUMBER NOT NULL 
)
; 



-- 4. ORDERS 테이블 정의
CREATE TABLE ORDERS 
(
    ORDER_NO NUMBER NOT NULL 
  , TABLE_NO NUMBER NOT NULL 
  , MENU_NAME VARCHAR2(200 BYTE) 
  , AMOUNT NUMBER 
  , PRICE NUMBER 
  , ORDER_DATE DATE 
  , STATUS VARCHAR2(200 BYTE) 
  , PHONE VARCHAR2(200 BYTE) 
  , USE_POINT NUMBER DEFAULT 0 
  , PAYMENT VARCHAR2(200 BYTE) 
  , CLASSIFICATION VARCHAR2(100 BYTE) 
)
;



-- 5. PERSISTENT_LOGINS 테이블 정의

CREATE TABLE PERSISTENT_LOGINS 
(
  P_NO NUMBER NOT NULL 
, ID VARCHAR2(255 BYTE) NOT NULL 
, TOKEN VARCHAR2(255 BYTE) NOT NULL 
, REG_DATE DATE DEFAULT SYSDATE NOT NULL 
, UPD_DATE DATE DEFAULT SYSDATE NOT NULL 
, CONSTRAINT PK_PERSISTENT_LOGINS PRIMARY KEY 
  (
    P_NO 
  )
)
;
