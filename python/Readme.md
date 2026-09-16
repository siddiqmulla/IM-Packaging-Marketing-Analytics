# Python Marketing Analytics

## Introduction

During my internship at IM Packaging, Python was used as one of the main tools for analysing digital marketing data. The purpose of using Python was not only to calculate marketing metrics, but also to understand the data, identify patterns, evaluate campaign performance and generate useful insights for marketing decision-making.

The analysis was carried out in a step-by-step manner. I first explored and validated the available marketing data, followed by city-wise and social media platform analysis. After the basic analysis, statistical and predictive techniques were applied, including correlation analysis, Linear Regression, Decision Tree Regression, feature importance analysis and A/B testing.

The Python analysis helped me move from raw numerical data towards meaningful business insights. Instead of looking at individual figures separately, the analysis helped identify which factors were more closely associated with conversions and which analytical approaches were more useful for understanding marketing performance.

---

# 1. Data Exploration

python/Screenshots/exploration.png

## Explanation

The first step of the Python analysis was to understand the structure of the marketing dataset before performing any calculations or modelling. Data exploration is important because it provides an initial understanding of what information is available and whether the dataset is suitable for further analysis.

Python was used to inspect the dataset, understand the number of records and identify the different variables available for analysis. The marketing data included important performance variables such as impressions, clicks, website visits, leads, conversions and advertising spend. These variables provided the foundation for evaluating digital marketing performance.

This initial exploration also helped in understanding how the different marketing activities were represented in the dataset. Before applying statistical or predictive techniques, it was necessary to understand the nature of the variables and ensure that the required information was available.

The exploration stage therefore acted as the starting point for the complete Python-based marketing analytics process.

## Business Relevance

For a business such as IM Packaging, where marketing activities generate enquiries that can eventually become sales, understanding the available marketing data is important. A proper initial examination of the data helps avoid incorrect calculations and provides a clear base for subsequent analysis.

---

# 2. Data Cleaning and Validation

![Data Cleaning](02_Data_Cleaning.png)

## Explanation

After exploring the dataset, the next step was to check the quality and reliability of the data. Data cleaning and validation are important parts of marketing analytics because incorrect, incomplete or duplicated records can affect the results of the analysis.

Python was used to check the dataset for missing values and duplicate records. The analysis showed that there were **0 missing values and 0 duplicate records** in the analysed Social Media dataset. This indicated that the available data did not contain these particular data-quality problems.

The validation process provided confidence that the records could be used for further analysis without having to remove duplicate observations or handle missing values for the variables checked.

This stage was also useful for understanding whether the dataset was ready for statistical and predictive analysis. Since the required information was available and no missing or duplicate records were identified, the analysis could proceed to the next stages.

## Business Relevance

Good-quality marketing data is important because management decisions may depend on the results produced from that data. If the underlying data contains errors, the conclusions regarding campaigns, channels or customer behaviour may also be misleading. Therefore, data validation was treated as an important step before interpreting the marketing results.

---

# 3. City-Wise Analysis

![City Wise Analysis](03_City_Wise_Analysis.png)

## Explanation

The next analysis focused on geographical performance. IM Packaging serves customers in different markets, and therefore it was useful to understand whether marketing activities were producing similar results across different cities.

Python was used to group the marketing data according to city and examine the number of conversions generated in each geographical market. This made it possible to compare the performance of the different locations rather than looking at individual campaign records separately.

In the Social Media dataset, **Kolhapur recorded the highest number of conversions with 39 conversions**. It was followed by **Sangli with 33 conversions and Hubli with 31 conversions**. Belgaum recorded 23 conversions, while Tasgaon and Goa recorded 22 and 19 conversions respectively.

The analysis showed that conversion performance was not the same across all geographical markets. Some locations generated more conversions than others, which can help the business understand where marketing activities may be receiving a stronger response.

## Business Relevance

The city-wise analysis can help IM Packaging make better decisions about geographical targeting. Markets producing stronger conversion results can receive greater attention during future campaigns, while lower-performing locations can be reviewed to understand whether changes in targeting, communication or follow-up are required.

---

# 4. Social Media Platform Analysis

![Social Media Platform Analysis](04_Social_Media_Platform_Analysis.png)

## Explanation

The Social Media dataset was further analysed to compare the performance of different social media platforms. The purpose of this analysis was to understand whether the platforms were producing similar marketing results or whether one platform was performing better on the selected performance indicators.

The analysis compared **Facebook and Instagram** using conversion rate and ROI. These measures were selected because conversion rate provides an indication of how effectively leads were converted, while ROI provides an indication of the financial return relative to marketing expenditure.

Facebook recorded an ROI of approximately **326.57** and a conversion rate of approximately **43.88%**. Instagram recorded an ROI of approximately **322.71** and a conversion rate of approximately **42.63%**.

The difference between the platforms was relatively small, but Facebook showed slightly stronger performance on both measures in the analysed dataset.

## Business Relevance

This comparison provides a simple way for the marketing team to evaluate the relative performance of social media platforms. Rather than judging a platform only by visibility or reach, performance can be considered using business-oriented measures such as leads, conversions and return on expenditure.

---

# 5. Correlation Analysis

![Correlation Analysis](05_Correlation_Analysis.png)

## Explanation

After completing the descriptive analysis, correlation analysis was performed to examine the relationship between marketing expenditure and conversions.

The main question behind this analysis was whether spending more on digital marketing was associated with generating a greater number of conversions. Pearson correlation was used to measure the direction and strength of the relationship between the two variables.

The analysis produced a correlation coefficient of **-0.0734** with a **p-value of 0.6049**.

The correlation coefficient is very close to zero, which indicates that there was a very weak negative relationship between marketing spend and conversions in the analysed Social Media dataset. The p-value was greater than the commonly used significance level of 0.05, meaning that the observed relationship was not statistically significant.

Therefore, the analysis did not provide sufficient statistical evidence to conclude that marketing expenditure alone had a significant relationship with conversions.

## Interpretation

The result is important from a managerial perspective because it suggests that simply increasing advertising expenditure may not automatically result in more conversions. Other factors, such as lead generation, audience quality, campaign content and customer response, may play an important role in determining conversion performance.

## Business Relevance

For IM Packaging, the result highlights the importance of looking beyond the amount of money spent on marketing. Marketing effectiveness should be evaluated based on the quality of the leads and the ability of those leads to move through the sales process.

---

# 6. Linear Regression

![Linear Regression](06_Linear_Regression.png)

## Explanation

Linear Regression was used to examine whether marketing expenditure could be used to predict the number of conversions.

While correlation analysis identifies the relationship between two variables, regression analysis goes one step further by developing a mathematical model that can be used to estimate the dependent variable from the selected predictor.

In this analysis, marketing spend was used as the predictor and conversions were treated as the outcome variable. The model was evaluated using **R², Mean Absolute Error (MAE) and Root Mean Squared Error (RMSE)**.

The Linear Regression model produced an **R² of approximately -0.0243**, an **MAE of approximately 1.324**, and an **RMSE of approximately 1.572**.

The negative R² value indicates that the model based only on expenditure did not provide a useful prediction of conversions for the analysed data. In other words, marketing expenditure by itself was not sufficient to explain the variation in conversions.

## Interpretation

The result is consistent with the earlier correlation analysis. Since the relationship between spend and conversions was very weak, using spend alone as a predictor did not produce a strong predictive model.

This demonstrated the limitation of relying on a single marketing variable when trying to understand conversion performance.

## Business Relevance

For future campaign planning, IM Packaging should consider multiple marketing indicators rather than using advertising expenditure alone to estimate expected conversions.

---

# 7. Decision Tree Analysis

![Decision Tree](07_Decision_Tree.png)

## Explanation

To obtain a broader understanding of conversion performance, a Decision Tree Regression model was developed using multiple marketing variables.

The model considered **Spend, Impressions, Clicks, Leads and Website Visits** as input variables. This approach was different from the Linear Regression model because conversion performance was evaluated using several marketing indicators together.

The Decision Tree model produced an **R² of approximately 0.429**, an **MAE of approximately 0.883**, and an **RMSE of approximately 1.174**.

Compared with the Linear Regression model, the Decision Tree produced a considerably better R² value and lower prediction errors. This indicates that the Decision Tree was better able to represent the relationship between the selected marketing variables and conversions.

## Interpretation

The result suggests that conversion performance is influenced by a combination of marketing factors rather than by advertising expenditure alone.

The Decision Tree approach was therefore more useful for this dataset because it could consider different aspects of campaign activity together.

## Business Relevance

The analysis can support campaign planning by helping the marketing team consider several measurable indicators when evaluating expected conversion performance. It also provides a foundation for using predictive analytics as part of future marketing decision-making.

---

# 8. Feature Importance Analysis

![Feature Importance](08_Feature_Importance.png)

## Explanation

After developing the Decision Tree model, feature importance analysis was performed to understand which variables contributed most to the model's conversion predictions.

The analysis considered the importance of **Leads, Spend, Impressions, Website Visits and Clicks**.

The results showed that **Leads had the highest feature importance at approximately 84.47%**. Marketing Spend was the second most important variable at approximately **12.97%**. Impressions contributed approximately **1.43%**, while Website Visits and Clicks contributed approximately **0.62% and 0.51%** respectively.

The large difference between Leads and the other variables is an important finding from the analysis. It indicates that the number of leads was much more influential in the model's prediction of conversions than the other selected variables.

## Interpretation

The result highlights the importance of focusing on lead generation and, more importantly, lead quality. Generating a large amount of marketing traffic or increasing expenditure does not necessarily guarantee conversions if the resulting leads are not suitable or interested in the company's products.

## Business Relevance

For IM Packaging, this finding suggests that marketing activities should not be evaluated only on the basis of impressions, clicks or expenditure. Greater attention should be given to generating relevant business enquiries that have a realistic possibility of becoming customers.

---

# 9. A/B Testing

![A/B Testing](09_AB_Testing.png)

## Explanation

A/B testing was conducted to compare the performance of two different advertisement versions. The purpose of this analysis was to determine whether the observed difference in conversion performance between the two groups was statistically meaningful.

The two groups were identified as **Group A and Group B**. Group A had **153 leads and 65 conversions**, resulting in a conversion rate of approximately **42.48%**. Group B had **233 leads and 102 conversions**, resulting in a conversion rate of approximately **43.78%**.

Although the conversion rate of Group B was higher, the analysis also required a statistical test to determine whether the difference could reasonably be considered significant.

The test produced a **t-statistic of approximately -2.862** and a **p-value of approximately 0.00623**.

Since the p-value was below 0.05, the difference between the two advertisement groups was statistically significant.

## Interpretation

The result indicates that the two advertisement versions did not produce exactly the same conversion performance. Group B recorded the higher observed conversion rate, and the statistical test provided evidence that the difference was significant.

Therefore, the A/B testing result supports the hypothesis that different advertisement versions can produce different conversion performance.

## Business Relevance

A/B testing can help IM Packaging make marketing decisions based on actual campaign performance rather than personal assumptions about which advertisement design or message may work better. Testing different versions over time can help the company gradually improve its digital marketing communication.

---

# 10. Model Comparison

![Model Comparison](10_Model_Comparison.png)

## Explanation

After developing both Linear Regression and Decision Tree models, their performance was compared to identify which approach was more suitable for predicting conversions.

The comparison used three main evaluation measures: **R², Mean Absolute Error (MAE) and Root Mean Squared Error (RMSE)**.

The Linear Regression model produced an R² of approximately **-0.0243**, MAE of approximately **1.324**, and RMSE of approximately **1.572**.

The Decision Tree model produced an R² of approximately **0.429**, MAE of approximately **0.883**, and RMSE of approximately **1.174**.

The Decision Tree therefore achieved a higher R² and lower prediction errors than the Linear Regression model.

## Interpretation

The model comparison indicates that the Decision Tree was better suited to the analysed marketing data than the simple Linear Regression model.

One possible reason is that the Decision Tree considered multiple marketing variables together, while the Linear Regression analysis used marketing expenditure as the primary predictor. The comparison therefore demonstrates the value of considering several relevant marketing indicators when analysing conversion performance.

## Business Relevance

For future analytical work, IM Packaging can use a multi-variable predictive approach to support campaign planning and performance evaluation. However, predictions should be treated as analytical support rather than as guaranteed future outcomes.

---

# 11. Prediction Result

![Prediction Result](11_Prediction_Result.png)

## Explanation

The Decision Tree model was also used to demonstrate how predictive analytics could be applied to a future campaign scenario.

For the example prediction, the model was provided with campaign inputs including **Spend, Impressions, Clicks, Leads and Website Visits**. The example used a spend of **₹550**, 5,000 impressions, 100 clicks, 12 leads and 80 website visits.

Based on these inputs, the Decision Tree model predicted approximately **4 conversions**.

This example demonstrates how historical marketing data can be used to develop a model that provides an estimated conversion outcome for a proposed campaign scenario.

## Interpretation

The prediction should not be treated as an exact guarantee of future conversions. Instead, it demonstrates how predictive analytics can provide an additional information point when planning or evaluating campaigns.

The usefulness of such a model comes from combining predicted outcomes with managerial judgement, campaign objectives and other business information.

## Business Relevance

For IM Packaging, predictive analysis can eventually support campaign planning by helping the marketing team estimate possible conversion outcomes before allocating resources to a campaign. As more historical data becomes available, predictive models can also be reviewed and improved.

---

# Overall Python Analysis and Key Learning

The Python analysis provided a complete analytical journey from data exploration to predictive modelling. The process began with understanding and validating the dataset and then moved towards geographical analysis, social media platform comparison, statistical testing and predictive modelling.

One of the most important findings from the analysis was that **marketing expenditure alone did not show a statistically significant relationship with conversions**. The correlation coefficient of -0.0734 and p-value of 0.6049 indicated that the relationship was very weak and not statistically significant.

The predictive analysis provided another important insight. The Decision Tree model performed better than the Linear Regression model, with an R² of approximately 0.429 compared with -0.0243 for Linear Regression. The Decision Tree also produced lower MAE and RMSE values.

Feature importance analysis further showed that **Leads were the most influential variable in the Decision Tree model, accounting for approximately 84.47% of feature importance**. This suggests that the quality and availability of leads are important factors when considering conversion performance.

The A/B testing analysis also provided a useful marketing insight. Group B recorded a higher conversion rate than Group A, and the p-value of 0.00623 indicated that the difference was statistically significant.

Overall, Python helped convert the marketing dataset into information that could be used for decision-making. The analysis demonstrated that effective digital marketing is not simply about increasing expenditure. Understanding leads, customer response, geographical markets, campaign performance and advertisement effectiveness is equally important.

The Python work therefore formed an important part of the overall internship project and provided analytical inputs that were later used alongside SQL, Microsoft Excel and Power BI for broader marketing performance evaluation.
