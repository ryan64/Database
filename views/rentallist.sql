CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `videorentals`.`rentallist` AS
    SELECT 
        `videorentals`.`rentals`.`rentalID` AS `rentalID`,
        `videorentals`.`rentals`.`rentalstatus` AS `rentalstatus`,
        `videorentals`.`rentals`.`rentDate` AS `rentDate`
    FROM
        `videorentals`.`rentals`