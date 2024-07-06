
   -- Create the main sens_data table
CREATE TABLE sens_data (
    time TIMESTAMP,
    iid TEXT,
    value TEXT,
    key TEXT,
    PRIMARY KEY (time, iid, key)
) PARTITION BY LIST (key);

-- Create partitions for each sensor category
CREATE TABLE sensor_temperature PARTITION OF sens_data
FOR VALUES IN ('temperature');

CREATE TABLE sensor_voltage PARTITION OF sens_data
FOR VALUES IN ('voltage');

CREATE TABLE sensor_consumption PARTITION OF sens_data
FOR VALUES IN ('consumption');



-- Function to add new sensor partitions dynamically
CREATE OR REPLACE FUNCTION add_sensor_partition(new_key TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE format('CREATE TABLE sensor_%I PARTITION OF sens_data FOR VALUES IN (%L)', new_key, new_key);
END;
$$ LANGUAGE plpgsql;

   
   
   
   
   -- Insert sample data into sens_data table
INSERT INTO sens_data (time, iid, value, key)
VALUES 
    ('2024-01-15 12:00:00', 'sensor1', '25.5', 'temperature'),
    ('2024-01-16 13:00:00', 'sensor1', '26.0', 'temperature'),
    ('2024-01-17 14:00:00', 'sensor1', '24.8', 'temperature'),
    ('2024-04-05 08:30:00', 'sensor2', '220.3', 'voltage'),
    ('2024-04-06 09:30:00', 'sensor2', '225.1', 'voltage'),
    ('2024-04-07 10:30:00', 'sensor2', '223.5', 'voltage'),
    ('2024-07-10 18:45:00', 'sensor3', '18.6', 'consumption'),
    ('2024-07-11 19:45:00', 'sensor3', '19.2', 'consumption'),
    ('2024-07-12 20:45:00', 'sensor3', '18.0', 'consumption');
   
   
   
   -- Insert data into ct_load partition
INSERT INTO sens_data (time, iid, value, key)
VALUES 
    ('2024-10-15 13:20:00', 'sensor1', '120.5', 'ct_load'),
    ('2024-10-16 14:20:00', 'sensor2', '122.0', 'ct_load'),
    ('2024-10-17 15:20:00', 'sensor3', '119.8', 'ct_load');

   
   
   -- Check if partition exists, if not, create it
DO $$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM information_schema.tables WHERE table_name = 'sensor_ct_load' AND table_schema = 'public') THEN
        PERFORM add_sensor_partition('ct_load');
    END IF;
END $$;



select * from postgres_learning.sens_data sd 
   
   
   
