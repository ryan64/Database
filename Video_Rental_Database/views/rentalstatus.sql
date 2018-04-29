CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `rentalstatus` AS
    SELECT 
        `rentals`.`rentalID` AS `rentalID`,
        `rentals`.`customerID` AS `customerID`,
        `rentals`.`productID` AS `productID`,
        `rentals`.`rentalstatus` AS `rentalstatus`,
        `rentals`.`updatedate` AS `updatedate`,
        `videos`.`videoname` AS `videoname`,
        `videos`.`genre` AS `genre`
    FROM
        (`rentals`
        JOIN `videos`)
    WHERE
        (`rentals`.`productID` = `videos`.`productID`)