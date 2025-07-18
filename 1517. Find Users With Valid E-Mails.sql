SELECT *
FROM Users
WHERE mail LIKE BINARY '%@leetcode.com'
  AND mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';
