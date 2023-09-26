CREATE PROCEDURE updateAddress(_customer_id INTEGER, _address VARCHAR(100))
AS $$
	BEGIN
		UPDATE customer
		SET address = _address
		WHERE customer_id = _customer_id;
		COMMIT;
	END
$$ LANGUAGE plpgsql;

CALL updateAddress(1, ('mabesemail@csb.com')

SELECT * FROM customer

DROP FUNCTION addNewCustomer

CREATE OR REPLACE FUNCTION addNewCustomer(
	_customer_id INTEGER,
	_fisrt_name VARCHAR,
	_last_name VARCHAR,
	_address VARCHAR,
	_ticket_id INTEGER
) RETURNS INTEGER AS $$
	BEGIN 
		INSERT INTO customer(
			customer_id, 
			fisrt_name,
			last_name,
			address,
			ticket_id
		) VALUES (
			_customer_id, 
			_fisrt_name,
			_last_name,
			_address,
			_ticket_id
			);
		RETURN _customer_id;
	END
$$ LANGUAGE plpgsql;

SELECT addNewCustomer
	('5', 'Rambo', 'Torres', 'RamboTheCat@meowmeow.com', '1');
	('6', 'Athena', 'ThePrincess', 'princessAthena@hello.com','1');
	('7', 'Milla', 'Jovovich', 'residentevil@ps5.com','1');
	('8', 'James', 'Hetfield', 'Metallica@bestbandever.com', '1');


SELECT * FROM customer