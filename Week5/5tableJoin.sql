SELECT last_name, service_date, service_advisor, "VIN", make, service_name, book_rate, mechanic
FROM "AutomotiveRepair"."Customer" AS cust
JOIN "AutomotiveRepair"."Order" AS ord ON cust.customer_id = ord.customer_id
JOIN "AutomotiveRepair"."Vehicle" AS veh ON ord.vehicle_id = veh.vehicle_id
JOIN "AutomotiveRepair"."Order_Detail" AS det ON ord.order_id = det.order_id
JOIN "AutomotiveRepair"."ServiceType" AS serv ON det.service_code = serv.service_code
--WHERE ord.service_advisor = 'Chucky'