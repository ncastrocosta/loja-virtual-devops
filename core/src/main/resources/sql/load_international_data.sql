--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading international data the pricelist data in multiple currencies.  Implementers can exclude this file
-- to load their own international data.
--

--
-- Load currencies:  Your site will need currencies defined in order to use price lists.
-- i18n standard abbreviations should be used.
--
INSERT INTO BLC_CURRENCY(CURRENCY_CODE, FRIENDLY_NAME, DEFAULT_FLAG) VALUES('USD', 'US Dollar', true);
INSERT INTO BLC_CURRENCY(CURRENCY_CODE, FRIENDLY_NAME, DEFAULT_FLAG)VALUES('EUR', 'EURO Dollar', false);
INSERT INTO BLC_CURRENCY(CURRENCY_CODE, FRIENDLY_NAME, DEFAULT_FLAG) VALUES('GBP', 'GB Pound', false);
INSERT INTO BLC_CURRENCY(CURRENCY_CODE, FRIENDLY_NAME, DEFAULT_FLAG) VALUES('MXN', 'Mexican Peso', false);


--
-- Load Locales:  Your site must have at least one Locale with DEFAULT_FLAG set to TRUE
-- You can have as many locales as you like. Currency can be set  to null if none have
-- been defined. i18n standard abbreviations should be used.
--
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('fr', FALSE, 'French', 'EUR');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('en_GB', FALSE,'English (United Kingdom)', 'GBP');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('es_MX', FALSE, 'Spanish (Mexico)', 'MXN');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('es_ES', FALSE, 'Spanish (Spain)', 'EUR');
INSERT INTO BLC_LOCALE (LOCALE_CODE, DEFAULT_FLAG, FRIENDLY_NAME, CURRENCY_CODE) VALUES ('fr_FR', FALSE,'French (France)', 'EUR');

--
-- Load price lists:  Your site will need to define 'price list data' populated with the prices. This demo has based
-- the price lists on currencies, but your site could use areas (zip codes, etc) to define lists.
--
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (1,'USD','US Dollar','USD',true);
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (2,'EUR','EUR Dollar','EUR',false);
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (3,'GBP','GB Pound','GBP',false);
INSERT INTO BLC_PRICE_LIST (PRICE_LIST_ID,CURRENCY_CODE,FRIENDLY_NAME,PRICE_KEY,USE_DEFAULT_FLAG) VALUES (4,'MXN','Mexican Peso','MXN',false);





