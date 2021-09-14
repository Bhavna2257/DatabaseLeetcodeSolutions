SELECT class from courses GROUP BY class having COUNT(DISTINCT(student)) >= 5;
