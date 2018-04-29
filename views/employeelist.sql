CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `employeelist` AS
    SELECT 
        `employees`.`employeeID` AS `employeeID`,
        `employees`.`fname` AS `fname`,
        `employees`.`lname` AS `lname`,
        `employees`.`gender` AS `gender`,
        `employees`.`birthday` AS `birthday`,
        `employees`.`addressline` AS `addressline`,
        `employees`.`city` AS `city`,
        `employees`.`state` AS `state`,
        `employees`.`country` AS `country`,
        `employees`.`postalcode` AS `postalcode`,
        `employees`.`startdate` AS `startdate`,
        `employees`.`managerID` AS `managerID`,
        FLOOR(((TO_DAYS(CURDATE()) - TO_DAYS(`employees`.`birthday`)) / 365.25)) AS `agecustomerlistcustomerlist`
    FROM
        `employees`