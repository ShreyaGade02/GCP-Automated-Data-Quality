# **Automated Data Quality Monitoring on Google Cloud**



### Overview

This project implements an automated data quality monitoring and alerting system using Google Cloud Platform (GCP). It continuously validates raw data for quality issues and proactively notifies stakeholders when anomalies or data integrity problems are detected, eliminating the need for manual monitoring.




### Problem Statement

In real-world data pipelines, raw data frequently contains issues such as missing values, duplicate records, and invalid entries. Manual data quality checks are inefficient, error-prone, and do not scale with growing data volumes. Without proper monitoring, poor-quality data can lead to inaccurate analytics and flawed business decisions.




### Solution Architecture

The system is designed as a cloud-native, automated workflow:

Raw Data (BigQuery)

→ Automated Data Quality Checks (Scheduled Queries)

→ Data Quality Metrics Table

→ Alert Status Evaluation

→ Cloud Monitoring Alert Policy

→ Email Notification

This architecture ensures continuous validation and timely alerting when data quality degrades.




### Key Features

* Automated daily data quality validation using BigQuery scheduled queries

* Detection of data quality issues including:

  * Null or missing values

  * Duplicate records

  *Invalid numeric values

* Threshold-based alerting logic to identify quality degradation

* Automated email notifications using Google Cloud Monitoring

* Fully tested end-to-end with real alert triggers




### Technologies Used

* Google BigQuery – Data storage, analysis, and scheduled execution

* Google Cloud Monitoring – Alert policies and notification management

* Logs-based Metrics – Integration between BigQuery job execution and monitoring

* SQL – Data validation and rule-based quality checks




### Testing and Validation

The system was validated through end-to-end testing by intentionally inserting invalid data into the raw dataset and confirming that:

* Data quality metrics updated correctly

* The alert status changed to ALERT based on defined thresholds

* Automated email notifications were successfully triggered

This confirms that the monitoring and alerting pipeline functions as intended.




### Outcome

The project delivers a scalable and reliable data quality monitoring solution that:

* Ensures data reliability before downstream analysis

* Detects issues proactively rather than reactively

* Eliminates the need for continuous manual monitoring

* Follows real-world, production-style cloud data engineering practices




