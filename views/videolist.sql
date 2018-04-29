CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `videolist` AS
    SELECT 
        `videos`.`productID` AS `productID`,
        `videos`.`videoname` AS `videoname`,
        `videos`.`genre` AS `genre`,
        `videos`.`videotype` AS `videotype`,
        `videos`.`quantity` AS `quantity`,
        `videos`.`rentprice` AS `rentprice`,
        `videos`.`numdiscs` AS `numdiscs`,
        `videos`.`mpaaratings` AS `mpaaratings`
    FROM
        `videos`