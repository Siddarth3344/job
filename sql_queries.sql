
create table details (
enrollee_id INTEGER Primary key,
city VARCHAR(100),
city_development_index FLOAT,
gender VARCHAR(100),
relevent_experience VARCHAR(100),	
enrolled_university VARCHAR(100),
education_level VARCHAR(100),
major_discipline VARCHAR(100),	
experience VARCHAR(100),
company_size VARCHAR(100),
company_type VARCHAR(100),
last_new_job INTEGER,
training_hours INTEGER
);
ALTER TABLE details
ALTER COLUMN last_new_job TYPE VARCHAR(100);


select * from details

select education_level,gender,relevent_experience,
count(enrollee_id) as no_of_candidates
from details
where education_level is not null and gender is not null
group by 
education_level,gender,relevent_experience
order by 
education_level,no_of_candidates desc

select 
company_size,education_level,AVG(training_hours) as avg_hours
from details
where company_size is not NUll and education_level is not Null
group by
company_size,
education_level
order by
avg_hours desc

select city_development_index,count(enrollee_id) as no_of_candidates
from details
where relevent_experience = 'No relevent experience' and enrolled_university = 'no_enrollment' and 
(last_new_job = '1' or last_new_job = 'never')
group by
city_development_index
order by 
no_of_candidates desc
LIMIT 5;
