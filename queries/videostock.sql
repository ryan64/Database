SELECT videos.*, quantity - COUNT(rentalstatus = 'CHECKED OUT') AS instock
FROM videos, rentals
WHERE videos.productID = rentals.productID
GROUP BY videos.productID
