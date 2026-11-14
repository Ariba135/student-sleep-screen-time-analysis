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

### 4. Weekly Study Hours and Academic Performance

| Weekly Study Hours | Students | Average CGPA |
|---|---:|---:|
| Less than 10 hours | 74 | 2.65 |
| 10 to 20 hours | 288 | 2.82 |
| 20 hours or more | 131 | 2.96 |

Students reporting more weekly study hours had higher average CGPA.

### 5. Class Attendance and Academic Performance

| Attendance | Students | Average CGPA |
|---|---:|---:|
| Below 60% | 26 | 2.55 |
| 60% to 80% | 222 | 2.80 |
| 80% or above | 245 | 2.89 |

Higher attendance groups showed higher average CGPA.

### 6. Caffeine Consumption and Academic Performance

| Caffeine Consumption | Students | Average CGPA |
|---|---:|---:|
| No caffeine | 117 | 2.89 |
| 1 drink | 156 | 2.81 |
| 2 or more drinks | 220 | 2.82 |

The differences were relatively small, with the no-caffeine group having the highest average CGPA.

### 7. Exercise Frequency and Academic Performance

| Exercise Frequency | Students | Average CGPA |
|---|---:|---:|
| No exercise | 47 | 2.78 |
| 1 to 3 days | 187 | 2.86 |
| 4 or more days | 259 | 2.82 |

The 1–3 days group had the highest average CGPA; the pattern was not consistently increasing.

### 8. Chronotype and Academic Performance

| Chronotype | Students | Average CGPA |
|---|---:|---:|
| Early Bird | 149 | 2.96 |
| Intermediate | 199 | 2.83 |
| Night Owl | 145 | 2.70 |

Early Birds had the highest average CGPA, while Night Owls had the lowest.

### 9. Major Category and Academic Performance

| Major Category | Students | Average CGPA |
|---|---:|---:|
| Health Sciences | 61 | 2.90 |
| STEM | 160 | 2.88 |
| Business | 89 | 2.84 |
| Social Sciences | 76 | 2.79 |
| Arts | 32 | 2.76 |
| Law | 23 | 2.76 |
| Humanities | 52 | 2.74 |

Health Sciences had the highest average CGPA among the major categories.

### 10. Gender and Academic Performance

| Gender | Students | Average CGPA |
|---|---:|---:|
| Male | 230 | 2.85 |
| Female | 239 | 2.83 |
| Prefer not to say | 12 | 2.74 |
| Non-binary | 12 | 2.72 |

The average CGPA difference between male and female students was very small.

### 11. Residence Type and Academic Performance

| Residence Type | Students | Average CGPA |
|---|---:|---:|
| With Family | 132 | 2.87 |
| Homestay | 24 | 2.85 |
| Off-campus Apartment | 149 | 2.83 |
| Dormitory | 188 | 2.81 |

Students living with family had the highest average CGPA, although differences between residence groups were small.

## Overall Project Insights
- Average weekday sleep duration was 6.61 hours.
- Overall average CGPA was 2.83.
- A positive descriptive pattern was observed between sleep duration and CGPA.
- Sleep quality, study hours, and class attendance also showed positive patterns with average CGPA.
- Screen-time differences were relatively small.
- Early Birds had higher average CGPA than Night Owls in this dataset.

## Recommendations
- Encourage students to maintain healthy and consistent sleep routines.
- Promote good sleep quality and balanced digital device usage.
- Support effective study planning and regular class attendance.
- Encourage balanced lifestyle habits, including physical activity.
- Explore student sleep and academic patterns further using larger datasets.

## Limitations
- The analysis identifies descriptive associations, not causal relationships.
- The dataset contains 500 student records.
- Seven records had missing CGPA values and were excluded from CGPA-based comparisons.
- Some demographic groups had relatively small sample sizes.
- Further statistical testing would be needed to assess whether observed differences are significant.

## Repository Structure
```text
student-sleep-screen-time-analysis/
│
├── data/
├── sql/
│   └── student_sleep_analysis.sql
├── visualizations/
└── README.md
```

## Conclusion
This project demonstrates how SQL can be used to clean, validate, organize, and analyze student data. The findings highlight descriptive patterns between sleep habits, lifestyle factors, and academic performance. The project also demonstrates practical skills in data analysis, SQL querying, and communicating insights.

---
**Project Category:** Data Analytics  
**Primary Tool:** MySQL  
**Dataset Size:** 500 Students  
**Analysis Records:** 493 Students
