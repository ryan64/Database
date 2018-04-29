CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `customerrentals` AS
    SELECT 
        `rent`.`customerID` AS `customerID`,
        `videos`.`productID` AS `productID`,
        `videos`.`videoname` AS `videoname`,
        `videos`.`genre` AS `genre`,
        `rentals`.`updatedate` AS `rentaldate`
    FROM
        (`rentals`
        JOIN (`videos`
        JOIN (`up_date`
        JOIN `rent` ON ((`up_date`.`rentalID` = `rent`.`rentalID`)))))
    WHERE
        ((`up_date`.`productID` = `videos`.`productID`)
            AND (`rentals`.`rentalID` = `up_date`.`rentalID`))