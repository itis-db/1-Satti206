INSERT INTO ActivityType (ActivityTypeId, TypeName)
VALUES
    (1, 'Программа'),
    (2, 'Подпрограмма'),
    (3, 'Проект'),
    (4, 'Контракт'),
    (5, 'Контрольная точка');

INSERT INTO Area (AreaId, AreaName)
VALUES
    (1, 'Территория 1'),
    (2, 'Территория 2');

INSERT INTO Activity (ActivityId, ParentId, ActivityName, ActivityTypeId, AreaId)
VALUES
    (1, NULL, 'Программа 1', 1, 1),
    (2, 1, 'Подпрограмма 1.1', 2, 1),
    (3, 1, 'Подпрограмма 1.2', 2, 1),
    (4, 2, 'Проект 1.1.1', 3, 1),
    (5, 2, 'Проект 1.1.2', 3, 1),
    (6, 3, 'Проект 1.2.1', 3, 1),
    (20, NULL, 'Программа 2', 1, 2),

INSERT INTO Contract (ContractId, ActivityId, ContractName, AreaId)
VALUES
    (1, 4, 'Контракт 1.1.1.1', 1),
    (2, 5, 'Контракт 1.1.2.1', 1),

INSERT INTO Point (PointId, ActivityId, PointName)
VALUES
    (1, 4, 'КТ 1.1.1.1.1'),
    (2, 4, 'КТ 1.1.1.1.2'),
