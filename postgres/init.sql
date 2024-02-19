CREATE TABLE exchanges (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(255) UNIQUE,
    ticker VARCHAR(255),
    code VARCHAR(255),
    isin VARCHAR(255),
    type VARCHAR(255),
    name VARCHAR(255),
    country VARCHAR(255),
    currency VARCHAR(255),
    operating_mic VARCHAR(255),
    code_exchange VARCHAR(255)
);

-- CREATE TABLE instruments (
--     id SERIAL PRIMARY KEY,
--     symbol VARCHAR(255) UNIQUE,
-- 	exchange_id INTEGER,
--     type VARCHAR(255),
--     name VARCHAR(255),
--     isin VARCHAR(255),
--     currency VARCHAR(255),
--     country_name VARCHAR(255),
--     country_iso VARCHAR(255),
--     sector VARCHAR(255),
--     industry VARCHAR(255),
--     description TEXT,
--     updated_at TIMESTAMP,

-- 	FOREIGN KEY (exchange_id) REFERENCES exchanges (id)
-- );

-- indexing for `symbol`, `isin`, `type`
CREATE TABLE instruments (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(255) UNIQUE,
    exchange_id INTEGER,
    
    name VARCHAR(255),
    country VARCHAR(255),
    type VARCHAR(50),
    currency VARCHAR(50),
    code VARCHAR(255),
    ticker VARCHAR(255),
    source VARCHAR(255),
    exchange VARCHAR(255),
    countryName VARCHAR(255),
    countryIso VARCHAR(50),
    sector VARCHAR(255),
    industry VARCHAR(255),
    description TEXT,
    isin VARCHAR(50),
    primaryTicker VARCHAR(255),
    fullTimeEmployees INT,
    updatedAt TIMESTAMP,
    cusip VARCHAR(50),
    logoURL TEXT,
    cik VARCHAR(50),
    employerIdNumber VARCHAR(50),
    fiscalYearEnd VARCHAR(50),
    ipoDate DATE,
    validUntil DATE,
    internationalDomestic VARCHAR(50),
    gicSector VARCHAR(255),
    gicGroup VARCHAR(255),
    gicIndustry VARCHAR(255),
    gicSubIndustry VARCHAR(255),
    addressDetails JSONB,
    phone VARCHAR(50),
    webUrl TEXT,
    category VARCHAR(255),
    fundSummary TEXT,
    fundFamily VARCHAR(255),
    fundFiscalYearEnd VARCHAR(50),
    officers JSONB,
    exchangeMarket VARCHAR(255),
    fundCategory VARCHAR(255),
    fundStyle VARCHAR(255),
    homeCategory VARCHAR(255),
    isDelisted BOOLEAN,
    listings JSONB,
    marketCapitalization JSONB,
    statistics JSONB,
    highlights JSONB,
    technicals JSONB,
    valuation JSONB,
    sharesStatistics JSONB,
    analystRatings JSONB,
    splitsDividends JSONB,
    dividends JSONB,
    splits JSONB,
    earnings JSONB,
    financials JSONB,
    insiderTransactions JSONB,
    holders JSONB,
    outstandingShares JSONB,
    indexComponents JSONB,
    exchangeTradedFundDetails JSONB,
    mutualFundDetails JSONB,

    FOREIGN KEY (exchange_id) REFERENCES exchanges (id)
);

CREATE TABLE candles (
    id SERIAL PRIMARY KEY,
    symbol VARCHAR(255),
    date_time TIMESTAMP,
    start_price NUMERIC,
    highest_price NUMERIC,
    lowest_price NUMERIC,
    end_price NUMERIC,
    volume VARCHAR(255),
    source VARCHAR(255),
    candle_type VARCHAR(255),
    currency VARCHAR(255)
);