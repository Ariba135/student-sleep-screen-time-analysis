-- =====================================================
-- PROJECT: Student Sleep, Screen Time and Academic
--          Performance Analysis
-- DATABASE: student_sleep_analysis
-- PURPOSE: Data Cleaning, Validation and SQL Analysis
-- =====================================================

USE student_sleep_analysis;
-- =====================================================
-- SECTION 1: DATA QUALITY CHECKS
-- =====================================================

-- 1. Check total number of student records
SELECT COUNT(*) AS total_students
FROM students_clean;

-- 2. Check duplicate student IDs
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT student_id) AS unique_students,
    COUNT(*) - COUNT(DISTINCT student_id) AS duplicate_ids
FROM students_clean;

-- 3. Check missing values in important columns
SELECT
    SUM(device_free_before_bed IS NULL) AS missing_device_free,
    SUM(energy_level IS NULL) AS missing_energy,
    SUM(concentration_difficulty IS NULL) AS missing_concentration,
    SUM(weekly_study_hours IS NULL) AS missing_study_hours,
    SUM(cgpa IS NULL) AS missing_cgpa
FROM students_clean;
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT student_id) AS unique_students,
    COUNT(*) - COUNT(DISTINCT student_id) AS duplicate_ids
FROM students_clean;
-- =====================================================
-- SECTION 2: OVERALL ACADEMIC PERFORMANCE
-- =====================================================

-- Average sleep duration and average CGPA

SELECT
    ROUND(AVG(avg_sleep_hours_weekday), 2)
        AS average_sleep_hours,
    ROUND(AVG(cgpa), 2)
        AS average_cgpa,
    COUNT(cgpa) AS students_analyzed
FROM students_clean
WHERE cgpa IS NOT NULL;
-- =====================================================
-- 1. SLEEP DURATION AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN avg_sleep_hours_weekday < 6
            THEN 'Less than 6 hours'
        WHEN avg_sleep_hours_weekday < 8
            THEN '6 to 8 hours'
        ELSE '8 hours or more'
    END AS sleep_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY sleep_group
ORDER BY
    CASE sleep_group
        WHEN 'Less than 6 hours' THEN 1
        WHEN '6 to 8 hours' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 2. DAILY SCREEN TIME AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN daily_screen_time_hours < 4
            THEN 'Less than 4 hours'
        WHEN daily_screen_time_hours < 8
            THEN '4 to 8 hours'
        ELSE '8 hours or more'
    END AS screen_time_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY screen_time_group
ORDER BY
    CASE screen_time_group
        WHEN 'Less than 4 hours' THEN 1
        WHEN '4 to 8 hours' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 3. SLEEP QUALITY AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN sleep_quality_score < 4
            THEN 'Low sleep quality'
        WHEN sleep_quality_score < 7
            THEN 'Moderate sleep quality'
        ELSE 'High sleep quality'
    END AS sleep_quality_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY sleep_quality_group
ORDER BY
    CASE sleep_quality_group
        WHEN 'Low sleep quality' THEN 1
        WHEN 'Moderate sleep quality' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 4. WEEKLY STUDY HOURS AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN weekly_study_hours < 10
            THEN 'Less than 10 hours'
        WHEN weekly_study_hours < 20
            THEN '10 to 20 hours'
        ELSE '20 hours or more'
    END AS study_time_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY study_time_group
ORDER BY
    CASE study_time_group
        WHEN 'Less than 10 hours' THEN 1
        WHEN '10 to 20 hours' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 5. CLASS ATTENDANCE AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN class_attendance_percent < 60
            THEN 'Below 60%'
        WHEN class_attendance_percent < 80
            THEN '60% to 80%'
        ELSE '80% or above'
    END AS attendance_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY attendance_group
ORDER BY
    CASE attendance_group
        WHEN 'Below 60%' THEN 1
        WHEN '60% to 80%' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 6. CAFFEINE CONSUMPTION AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN caffeine_drinks_per_day = 0
            THEN 'No caffeine'
        WHEN caffeine_drinks_per_day = 1
            THEN '1 drink'
        ELSE '2 or more drinks'
    END AS caffeine_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY caffeine_group
ORDER BY
    CASE caffeine_group
        WHEN 'No caffeine' THEN 1
        WHEN '1 drink' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 7. EXERCISE FREQUENCY AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    CASE
        WHEN exercise_days_per_week = 0
            THEN 'No exercise'
        WHEN exercise_days_per_week BETWEEN 1 AND 3
            THEN '1 to 3 days'
        ELSE '4 or more days'
    END AS exercise_group,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY exercise_group
ORDER BY
    CASE exercise_group
        WHEN 'No exercise' THEN 1
        WHEN '1 to 3 days' THEN 2
        ELSE 3
    END;
    -- =====================================================
-- 8. CHRONOTYPE AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    chronotype,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY chronotype
ORDER BY average_cgpa DESC;
-- =====================================================
-- 9. MAJOR CATEGORY AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    major_category,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY major_category
ORDER BY average_cgpa DESC;
-- =====================================================
-- 10. GENDER AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    gender,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY gender
ORDER BY average_cgpa DESC;
-- =====================================================
-- 11. RESIDENCE TYPE AND ACADEMIC PERFORMANCE
-- =====================================================

SELECT
    residence_type,
    COUNT(*) AS student_count,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students_clean
WHERE cgpa IS NOT NULL
GROUP BY residence_type
ORDER BY average_cgpa DESC;
USE student_sleep_analysis;
-- =====================================================
-- SECTION 0: DATA CLEANING
-- =====================================================

-- 1. Replace missing categorical values with the mode
UPDATE students_clean
SET device_free_before_bed = 'No'
WHERE device_free_before_bed IS NULL;

-- 2. Replace missing numerical values with their means
UPDATE students_clean
SET
    energy_level = COALESCE(energy_level, 5.758763),
    concentration_difficulty = COALESCE(concentration_difficulty, 5.176955),
    weekly_study_hours = COALESCE(weekly_study_hours, 16.571400);

-- 3. Preserve missing CGPA values
-- Rows with missing CGPA are excluded from academic
-- performance analysis rather than imputing the target.