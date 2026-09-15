-- Create the project database

CREATE DATABASE IM_Packaging_Marketing;
-- Select the database

USE IM_Packaging_Marketing;
CREATE TABLE social_media (
    Date DATE,
    Campaign_ID VARCHAR(30),
    Campaign_Name VARCHAR(100),
    Platform VARCHAR(30),
    City VARCHAR(50),
    Audience_Segment VARCHAR(100),
    Age_Group VARCHAR(20),
    Gender VARCHAR(20),
    Daily_Budget_INR DECIMAL(10,2),
    Impressions INT,
    Reach INT,
    Clicks INT,
    CTR DECIMAL(10,2),
    CPC_INR DECIMAL(10,2),
    Spend_INR DECIMAL(10,2),
    Website_Visits INT,
    Leads INT,
    Conversions INT,
    Conversion_Rate DECIMAL(10,2),
    Revenue_INR DECIMAL(12,2),
    ROI DECIMAL(10,2),
    AB_Test_Group VARCHAR(5),
    Ad_Creative VARCHAR(100),
    Device VARCHAR(30),
    Status VARCHAR(30)
);

CREATE TABLE website_marketing (
    Date DATE,
    Campaign_ID VARCHAR(30),
    Banner_Name VARCHAR(100),
    City VARCHAR(50),
    Audience_Segment VARCHAR(100),
    Source VARCHAR(50),
    Daily_Budget_INR DECIMAL(10,2),
    Banner_Impressions INT,
    Website_Visitors INT,
    Page_Views INT,
    Avg_Session_Min DECIMAL(10,2),
    Form_Submissions INT,
    Leads INT,
    Conversions INT,
    Conversion_Rate DECIMAL(10,2),
    Spend_INR DECIMAL(10,2),
    Revenue_INR DECIMAL(12,2),
    ROI DECIMAL(10,2),
    Device VARCHAR(30),
    Status VARCHAR(30)
);

CREATE TABLE whatsapp_marketing (
    Date DATE,
    Campaign_ID VARCHAR(30),
    City VARCHAR(50),
    Audience_Segment VARCHAR(100),
    Traffic_Source VARCHAR(50),
    WhatsApp_Clicks INT,
    Chats_Started INT,
    Qualified_Leads INT,
    Follow_Ups INT,
    Conversions INT,
    Conversion_Rate DECIMAL(10,2),
    Spend_INR DECIMAL(10,2),
    Revenue_INR DECIMAL(12,2),
    Response_Time_Min DECIMAL(10,2),
    Agent VARCHAR(50),
    Status VARCHAR(30)
);

CREATE TABLE youtube_ads (
    Date DATE,
    Campaign_ID VARCHAR(30),
    Video_Name VARCHAR(100),
    City VARCHAR(50),
    Audience_Segment VARCHAR(100),
    Daily_Budget_INR DECIMAL(10,2),
    Impressions INT,
    Views INT,
    View_Rate DECIMAL(10,2),
    Watch_Time_Hours DECIMAL(10,2),
    Clicks INT,
    Website_Visits INT,
    Leads INT,
    Conversions INT,
    Conversion_Rate DECIMAL(10,2),
    Spend_INR DECIMAL(10,2),
    Revenue_INR DECIMAL(12,2),
    ROI DECIMAL(10,2),
    Device VARCHAR(30),
    Status VARCHAR(30)
);

SHOW TABLES;


-- Create the Master Marketing Table

CREATE TABLE master_marketing AS

SELECT
    Date,
    Campaign_ID,
    'Social Media' AS Channel,
    Platform AS Source,
    City,
    Audience_Segment,
    Impressions,
    Clicks,
    Website_Visits,
    Leads,
    Conversions,
    Spend_INR,
    Revenue_INR
FROM social_media

UNION ALL

SELECT
    Date,
    Campaign_ID,
    'Website' AS Channel,
    Source,
    City,
    Audience_Segment,
    Banner_Impressions AS Impressions,
    NULL AS Clicks,
    Website_Visitors AS Website_Visits,
    Leads,
    Conversions,
    Spend_INR,
    Revenue_INR
FROM website_marketing

UNION ALL

SELECT
    Date,
    Campaign_ID,
    'WhatsApp' AS Channel,
    Traffic_Source AS Source,
    City,
    Audience_Segment,
    NULL AS Impressions,
    WhatsApp_Clicks AS Clicks,
    NULL AS Website_Visits,
    Qualified_Leads AS Leads,
    Conversions,
    Spend_INR,
    Revenue_INR
FROM whatsapp_marketing

UNION ALL

SELECT
    Date,
    Campaign_ID,
    'YouTube' AS Channel,
    'YouTube Ads' AS Source,
    City,
    Audience_Segment,
    Impressions,
    Clicks,
    Website_Visits,
    Leads,
    Conversions,
    Spend_INR,
    Revenue_INR
FROM youtube_ads;

-- Check Master Table

SELECT *
FROM master_marketing
LIMIT 20;

-- Check Channel Count

SELECT
    Channel,
    COUNT(*) AS Total_Records
FROM master_marketing
GROUP BY Channel;

-- QUESTION 1 : What is the total spend, leads, conversions and revenue by marketing channel?

SELECT
    Channel,
    SUM(Spend_INR) AS Total_Spend,
    SUM(Leads) AS Total_Leads,
    SUM(Conversions) AS Total_Conversions,
    SUM(Revenue_INR) AS Total_Revenue
FROM master_marketing
GROUP BY Channel
ORDER BY Total_Revenue DESC;


-- QUESTION 2 : Which city generated the highest number of conversions?

SELECT
    City,
    SUM(Conversions) AS Total_Conversions
FROM master_marketing
GROUP BY City
ORDER BY Total_Conversions DESC
LIMIT 1;

-- QUESTION 3 : Which marketing channel generated the highest ROI?
SELECT
    Channel,
    SUM(Spend_INR) AS Total_Spend,
    SUM(Revenue_INR) AS Total_Revenue,
    ROUND(
        (SUM(Revenue_INR) - SUM(Spend_INR))
        / SUM(Spend_INR), 2
    ) AS ROI
FROM master_marketing
GROUP BY Channel
ORDER BY ROI DESC;

-- SQL QUESTION 4 : Which audience segment generated the most conversions?

SELECT
    Audience_Segment,
    SUM(Leads) AS Total_Leads,
    SUM(Conversions) AS Total_Conversions,
    SUM(Revenue_INR) AS Total_Revenue
FROM master_marketing
GROUP BY Audience_Segment
ORDER BY Total_Conversions DESC;

-- QUESTION 5 : What are the top 5 campaigns based on conversions and revenue?
SELECT
    Campaign_ID,
    Channel,
    City,
    Audience_Segment,
    SUM(Conversions) AS Total_Conversions,
    SUM(Revenue_INR) AS Total_Revenue,
    SUM(Spend_INR) AS Total_Spend
FROM master_marketing
GROUP BY
    Campaign_ID,
    Channel,
    City,
    Audience_Segment
ORDER BY
    Total_Conversions DESC,
    Total_Revenue DESC
LIMIT 5;
