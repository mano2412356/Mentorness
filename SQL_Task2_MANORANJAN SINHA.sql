use hotel;
SELECT * FROM hotel.hotel_reservation_dataset;
#Q1
Select count(Booking_ID) from hotel.hotel_reservation_dataset;
#Q2
Select type_of_meal_plan ,count(Booking_ID) from hotel.hotel_reservation_dataset group by type_of_meal_plan;
#Q3
Select Booking_ID,no_of_children, avg_price_per_room from hotel.hotel_reservation_dataset where no_of_children >0;
#Q4
Select count(Booking_ID) as 'Hotel_Reservation 2018' from hotel.hotel_reservation_dataset where year(date)=2018 group by year(date);
#Q5
Select room_type_reserved , count(Booking_ID) from hotel.hotel_reservation_dataset group by room_type_reserved;
#Q6
Select count(Booking_ID) from hotel.hotel_reservation_dataset where no_of_weekend_nights > 0;
#Q7
Select max(lead_time) from hotel.hotel_reservation_dataset ;
Select min(lead_time) from hotel.hotel_reservation_dataset ;
#Q8
Select market_segment_type ,count(Booking_ID) from hotel.hotel_reservation_dataset group by market_segment_type;
#Q9
Select booking_status, count(Booking_ID) from hotel.hotel_reservation_dataset group by booking_status;
#Q10
Select sum(no_of_adults) from hotel.hotel_reservation_dataset;
Select sum(no_of_children) from hotel.hotel_reservation_dataset;
#Q11
Select avg(no_of_week_nights) from hotel.hotel_reservation_dataset where no_of_children>0;
#Q12
Select month(date) as 'Month_of_Year', count(Booking_ID) as 'No. of Reservation' from hotel.hotel_reservation_dataset group by month(date);
#Q13
Select room_type_reserved, avg(no_of_weekend_nights), avg(no_of_week_nights) from hotel.hotel_reservation_dataset group by room_type_reserved;
#Q14
Select room_type_reserved,avg(avg_price_per_room),count(Booking_ID) from hotel.hotel_reservation_dataset where no_of_children>0 group by room_type_reserved;
#Q15
Select market_segment_type,avg(avg_price_per_room) from hotel.hotel_reservation_dataset group by market_segment_type;


