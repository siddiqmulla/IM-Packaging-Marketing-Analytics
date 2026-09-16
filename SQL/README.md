# SQL Marketing Analytics

## Introduction

SQL was used during the IM Packaging internship to organise, combine and analyse the marketing data collected from different digital marketing channels. The purpose of this work was to move the cleaned marketing data into a structured database and use SQL queries to answer important business questions related to marketing performance.

The analysis was performed using MySQL. Separate tables were created for Social Media, Website Marketing, WhatsApp Marketing and YouTube Ads. These tables contained channel-specific information such as campaign details, cities, audience segments, leads, conversions, marketing expenditure and revenue.

After creating the individual tables, a common `master_marketing` table was created. This table brought together the relevant fields from all four marketing channels using `UNION ALL`. Standardising the important fields into one table made it easier to compare channels, cities, audience segments and campaigns using a common structure.

The SQL analysis was then used to answer five practical business questions.

---

## 1. Database and Source Tables

The project database was created as:

`IM_Packaging_Marketing`

Four source tables were created:

- `social_media`
- `website_marketing`
- `whatsapp_marketing`
- `youtube_ads`

Each table was designed according to the type of information available for that particular marketing channel. Appropriate data types were assigned to dates, numerical measures, campaign information and other descriptive fields.

This structure allowed the channel-specific marketing data to be stored separately before being combined for overall analysis.

---

## 2. Creating the Master Marketing Table

A common `master_marketing` table was created using `CREATE TABLE AS SELECT` together with `UNION ALL`.

The purpose of this step was to create a standardised marketing dataset containing common fields such as:

- Date
- Campaign ID
- Channel
- Source
- City
- Audience Segment
- Impressions
- Clicks
- Website Visits
- Leads
- Conversions
- Spend
- Revenue

Since the original channel tables contained different column names and different types of information, the SQL queries mapped the relevant fields into a common structure. For example, `Qualified_Leads` from the WhatsApp table was treated as `Leads`, while `Banner_Impressions` from the Website table was treated as `Impressions`.

This master table provided a single source for the main SQL analysis.

---

## 3. Master Table Validation

After creating the master table, sample records were checked using SQL and the number of records belonging to each marketing channel was also examined.

This validation step helped confirm that the source tables had been combined into the master dataset and that the channel information was correctly represented.

---

# SQL Business Analysis

## Question 1: What is the total spend, leads, conversions and revenue by marketing channel?

![SQL Question 1](https://github.com/siddiqmulla/IM-Packaging-Marketing-Analytics/blob/main/SQL/Screenshots/quession%201)

### Explanation

The first SQL query was used to compare the overall performance of the four marketing channels. The query used `SUM()` to calculate total marketing spend, leads, conversions and revenue for each channel and then grouped the results using the `Channel` field.

The result shows that WhatsApp generated the highest number of leads and conversions among the four channels. It recorded **874 leads and 374 conversions**, along with revenue of approximately **₹17.06 million**. Website generated 514 leads and 192 conversions, followed by YouTube with 469 leads and 180 conversions. Social Media generated 386 leads and 167 conversions.

This query provided a simple channel-level view of marketing performance and helped identify differences between the digital channels.

---

## Question 2: Which city generated the highest number of conversions?

![SQL Question 2](https://github.com/siddiqmulla/IM-Packaging-Marketing-Analytics/blob/main/SQL/Screenshots/Quession%202.png)

### Explanation

The second query examined geographical performance by grouping the master marketing data according to city.

`SUM(Conversions)` was used to calculate the total conversions for each city. The results were then sorted in descending order, and `LIMIT 1` was used to return the city with the highest number of conversions.

The result identified **Kolhapur** as the city with the highest number of conversions, with **188 conversions** in the complete marketing dataset.

This analysis helped identify the geographical market that generated the strongest conversion performance during the analysed period.

---

## Question 3: Which marketing channel generated the highest ROI?

![SQL Question 3](https://github.com/siddiqmulla/IM-Packaging-Marketing-Analytics/blob/main/SQL/Screenshots/Quession%203.png)

### Explanation

The third query focused on the financial performance of each marketing channel. Total spend and total revenue were calculated for each channel, and ROI was calculated using the relationship between revenue and expenditure.

The query calculated ROI using:

`(Total Revenue - Total Spend) / Total Spend`

The results show that **WhatsApp recorded the highest calculated ROI**, with an ROI value of approximately **1294.08**, followed by Website, YouTube and Social Media.

This analysis provided a financial comparison of the marketing channels and showed how revenue generation differed relative to the amount spent on each channel.

---

## Question 4: Which audience segment generated the most conversions?

![SQL Question 4](https://github.com/siddiqmulla/IM-Packaging-Marketing-Analytics/blob/main/SQL/Screenshots/Quession%204.png)

### Explanation

The fourth query examined marketing performance across different audience segments. The data was grouped by `Audience_Segment`, and total leads, conversions and revenue were calculated for each segment.

The results show that the **Packaging** segment generated the highest number of conversions, with **240 conversions**. Food Processing followed with 222 conversions, while Manufacturing, Pharmaceutical and Engineering recorded 163, 150 and 138 conversions respectively.

This analysis helped connect marketing performance with the industries targeted by IM Packaging.

The result can be useful when reviewing which customer segments are generating stronger responses and conversions.

---

## Question 5: What are the top 5 campaigns based on conversions and revenue?

![SQL Question 5](https://github.com/siddiqmulla/IM-Packaging-Marketing-Analytics/blob/main/SQL/Screenshots/Quession%205.png)

### Explanation

The fifth query was used to identify the top-performing campaigns. Campaign ID, channel, city and audience segment were included in the output, while total conversions, revenue and spend were calculated.

The results were ordered first by total conversions in descending order and then by total revenue. The query returned the top five campaigns based on these measures.

The results included campaigns such as **WA082, WA112, WA182, WA171 and WA141**. These campaigns were all from the WhatsApp channel and represented different cities and audience segments.

This analysis helped identify individual campaigns that generated comparatively strong conversion and revenue results and provided a basis for reviewing successful campaign characteristics.

---

# Overall SQL Analysis

The SQL analysis converted the cleaned marketing data into a structured database environment and provided a systematic way to answer business-related marketing questions.

The four channel-specific tables allowed the original marketing information to be stored according to its source, while the `master_marketing` table provided a common structure for comparative analysis.

The five SQL queries focused on channel performance, geographical performance, ROI, audience segments and individual campaigns. The results identified differences in performance across channels, cities and customer segments.

The SQL work therefore complemented the Python analysis by providing a database-based approach to organising and querying the marketing information. It also created a structured data foundation that could subsequently be used for Excel and Power BI reporting.
