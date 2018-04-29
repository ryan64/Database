CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `paymentlist` AS
    SELECT 
        `payments`.`transactionID` AS `transactionID`,
        `payments`.`employeeID` AS `employeeID`,
        `payments`.`customerID` AS `customerID`,
        `payments`.`paymentdate` AS `paymentdate`,
        `payments`.`paymentMethod` AS `paymentMethod`,
        `payments`.`amount` AS `amount`
    FROM
        `payments`