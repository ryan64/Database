SELECT rent.customerID, videos.productID, videos.videoname, videos.genre
FROM videos, up_date
INNER JOIN rent ON up_date.rentalID = rent.rentalID
WHERE up_date.productID = videos.productID