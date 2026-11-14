# Student Sleep, Screen Time and Academic Performance Analysis

## Project Overview
This project explores the relationship between students' sleep habits, screen time, lifestyle factors, and academic performance. Using SQL, I analyzed a dataset of 500 students to identify patterns and compare average CGPA across different student groups.

The goal is to understand how sleep duration, sleep quality, digital device usage, study habits, and other lifestyle factors are associated with academic performance.

## Project Objectives
- Examine the relationship between sleep duration and academic performance.
- Analyze daily screen time and its association with CGPA.
- Investigate the relationship between sleep quality and academic results.
- Explore study hours, class attendance, caffeine consumption, and exercise patterns.
- Compare academic performance across chronotypes, majors, genders, and residence types.
- Practice SQL data cleaning, validation, aggregation, and analysis.

## Dataset Description
- Total records: 500 students
- Total attributes: 25
- Target variable: CGPA
- Dataset format: CSV

The dataset includes demographic information, sleep patterns, screen time, lifestyle habits, study behavior, class attendance, and academic performance.

## Tools and Technologies
- **MySQL:** Data cleaning, validation, and analytical queries
- **SQL:** Filtering, aggregation, CASE statements, grouping, and sorting
- **GitHub:** Project documentation and version control

## Data Cleaning and Preparation
The following steps were performed:
1. Imported 500 student records into MySQL.
2. Checked missing values across all 25 columns.
3. Standardized gender labels (`F` to `Female`, `M` to `Male`).
4. Checked duplicate student IDs; no duplicates were found.
5. Created a separate `students_clean` table.
6. Replaced missing categorical values in `device_free_before_bed` with the mode (`No`).
7. Replaced missing numerical values in `energy_level`, `concentration_difficulty`, and `weekly_study_hours` with their respective means.
8. Preserved missing CGPA values rather than imputing the target variable.
9. Excluded records with missing CGPA from academic performance comparisons.

After cleaning, 500 records remained, with 493 students included in CGPA-based analysis.

## SQL Analysis and Key Findings

### 1. Sleep Duration and Academic Performance

| Sleep Duration | Students | Average CGPA |
|---|---:|---:|
| Less than 6 hours | 153 | 2.66 |
| 6 to 8 hours | 245 | 2.86 |
| 8 hours or more | 95 | 3.06 |

Students sleeping 8 hours or more had the highest average CGPA.

### 2. Daily Screen Time and Academic Performance

| Daily Screen Time | Students | Average CGPA |
|---|---:|---:|
| Less than 4 hours | 85 | 2.87 |
| 4 to 8 hours | 344 | 2.83 |
| 8 hours or more | 64 | 2.82 |

Average CGPA showed a small decrease across higher screen-time groups.

### 3. Sleep Quality and Academic Performance

| Sleep Quality | Students | Average CGPA |
|---|---:|---:|
| Low | 32 | 2.53 |
| Moderate | 133 | 2.71 |
| High | 328 | 2.91 |

Students reporting high sleep quality had the highest average CGPA.

### 4. Weekly Study
