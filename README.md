# **Automated Data Quality Monitoring on Google Cloud**



### Overview

This project implements an automated data quality monitoring and alerting system using Google Cloud Platform. It validates raw data for quality issues and notifies stakeholders automatically when problems are detected.



### Problem Statement

Raw data often contains missing, duplicate, or invalid values. Manual data quality monitoring is inefficient and error-prone. This project solves that by automating validation and alerting.



### Architecture

Raw Data (BigQuery)

→ Data Quality Checks (Scheduled Query)

→ Quality Metrics Table

→ Alert Status Evaluation

→ Cloud Monitoring Alert

→ Email Notification



### Key Features

\- Automated daily data quality checks

\- Detection of null, duplicate, and invalid values

\- Threshold-based alerting logic

\- Email alerts using Cloud Monitoring

\- Fully tested end-to-end



### Technologies Used

\- Google BigQuery

\- Cloud Monitoring

\- Logs-based Metrics

\- SQL



### Testing

The system was tested by inserting bad data into the raw table and validating that:

\- Quality metrics updated correctly

\- Alert status changed to ALERT

\- Email notifications were triggered successfully



### Outcome

The project ensures data reliability by proactively detecting and alerting on data quality issues without manual intervention.




