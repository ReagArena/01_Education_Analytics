-- Project 1: Education Analytics - Exploratory Analysis
-- Purpose: Calculate overall averages across classes, subjects, and test stages.

-- 1. Subject-level Average Examination Scores
SELECT 
  subject,
  ROUND(AVG(examination), 2) AS avg_exam_score
FROM student_performance
GROUP BY subject;

-- 2. Multi-level Aggregation: Performance across Class and Subject
SELECT 
  class,
  subject,
  ROUND(AVG((class_test + midterm + examination) / 3.0), 2) AS assessment_average
FROM student_performance
GROUP BY class, subject
ORDER BY class, subject;

-- 3. Class-wide Attendance Rates (Deduplicated Student Level)
SELECT 
  class,
  ROUND(AVG(attendance_percent), 2) AS avg_attendance_percent
FROM (
  SELECT DISTINCT student_id, class, attendance_percent 
  FROM student_performance
) AS unique_students
GROUP BY class
ORDER BY avg_attendance_percent DESC;