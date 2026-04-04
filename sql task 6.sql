-- 1. create table
create table events (
    id int auto_increment primary key,
    event_name varchar(100),
    event_date datetime
);

-- 2. insert values
insert into events (event_name, event_date) values
('tech fest', '2026-04-10 10:30:00'),
('sports day', '2026-05-15 09:00:00'),
('hackathon', '2026-06-20 14:00:00'),
('cultural fest', '2026-07-05 17:30:00'),
('seminar', '2026-08-12 11:15:00');

-- 3. current date and time
select now() as current_date_time;

-- 4. format event_date
select event_name, date_format(event_date, '%d-%m-%y %h:%i:%s %p') as formatted_date
from events;

-- 5. extract year and month
select event_name, year(event_date) as event_year, month(event_date) as event_month
from events;

-- 6. concat event_name and event_date
select concat(event_name, ' - ', event_date) as event_details
from events;