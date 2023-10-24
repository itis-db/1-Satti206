DECLARE @pn_activityid INT = activity_id; 

WITH CTE AS (
    SELECT 
        A.ActivityId,
        A.ActivityName,
        A.ActivityTypeId,
        A.AreaId,
        0 AS Level
    FROM Activity A
    WHERE A.ActivityId = @pn_activityid

    UNION ALL

    SELECT 
        A.ActivityId,
        A.ActivityName,
        A.ActivityTypeId,
        A.AreaId,
        CTE.Level + 1
    FROM Activity A
    JOIN CTE ON A.ParentId = CTE.ActivityId
)

SELECT 
    CTE.ActivityId,
    CTE.ActivityName,
    A1.AreaName AS Territory,
    CASE WHEN CTE.Level = 4 THEN A2.ProjectName ELSE NULL END AS Project,
    CASE WHEN CTE.Level = 5 THEN A3.PointName ELSE NULL END AS ProjectPoint,
    CASE WHEN CTE.Level = 6 THEN A4.ContractName ELSE NULL END AS Contract,
    CASE WHEN CTE.Level = 7 THEN A5.PointName ELSE NULL END AS ContractPoint
FROM CTE
LEFT JOIN Area A1 ON CTE.AreaId = A1.AreaId
LEFT JOIN Project A2 ON CTE.ActivityId = A2.ActivityId
LEFT JOIN Point A3 ON CTE.ActivityId = A3.ActivityId
LEFT JOIN Contract A4 ON CTE.ActivityId = A4.ActivityId
LEFT JOIN Point A5 ON CTE.ActivityId = A5.ActivityId
ORDER BY CTE.Level;

