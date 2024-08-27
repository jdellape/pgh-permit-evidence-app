select
issued_month_last_day_date,
count(*) as row_count
from pgh_permit.main.permit
group by 1
order by 1