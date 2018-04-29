CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `employeesreportto` AS
    SELECT 
        `e`.`employeeID` AS `employeeID`,
        `e`.`fname` AS `emp_fname`,
        `e`.`lname` AS `emp_lname`,
        `e`.`managerID` AS `managerID`,
        `m`.`fname` AS `mng_fname`,
        `m`.`lname` AS `mng_lname`
    FROM
        (`employees` `e`
        JOIN `employees` `m`)
    WHERE
        (`e`.`managerID` = `m`.`employeeID`)
    ORDER BY `e`.`managerID`