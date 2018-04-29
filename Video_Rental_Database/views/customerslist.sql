CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `customerlist` AS
    SELECT 
        `customers`.`customerID` AS `customerID`,
        `customers`.`fname` AS `fname`,
        `customers`.`lname` AS `lname`,
        `customers`.`gender` AS `gender`,
        `customers`.`birthday` AS `birthday`,
        `customers`.`addressline` AS `addressline`,
        `customers`.`city` AS `city`,
        `customers`.`state` AS `state`,
        `customers`.`country` AS `country`,
        `customers`.`postalcode` AS `postalcode`,
        `customers`.`startdate` AS `startdate`,
        FLOOR(((TO_DAYS(CURDATE()) - TO_DAYS(`customers`.`birthday`)) / 365.25)) AS `age`
    FROM
        `customers`