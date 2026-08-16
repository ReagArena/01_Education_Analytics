-- Project 1: Education Analytics - Risk Cohort & CTE Analysis
-- Purpose: Identify at-risk students combining attendance < 70% and performance < 60%.

-- Method 1: Direct Filtering using WHERE
SELECT 
  student_id, 
  class, 
  subject, 
  attendance_percent, 
  ROUND((class_test + midterm + examination) / 3.0, 2) AS assessment_average
FROM student_performance
WHERE attendance_percent < 70
  AND (class_test + midterm + examination) / 3.0 < 60;

-- Method 2: CTE with CASE WHEN Performance Band Categorization
WITH student_averages AS (
  SELECT 
    student_id,
    class,
    subject,
    attendance_percent,
    ROUND((class_test + midterm + examination) / 3.0, 2) AS assessment_average
  FROM student_performance
)
SELECT 
  student_id,
  class,
  subject,
  attendance_percent,
  assessment_average,
  CASE 
    WHEN assessment_average >= 80 THEN 'Excellent'
    WHEN assessment_average >= 60 THEN 'Good'
    ELSE 'Needs Support'
  END AS performance_band
FROM student_averages
WHERE attendance_percent < 70 
  AND assessment_average < 60
ORDER BY assessment_average ASC;