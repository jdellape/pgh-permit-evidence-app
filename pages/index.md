---
title: Welcome to Evidence
---


```sql permit_count

select issued_month_last_day_date, row_count as total_permits_issued from monthly_permit_count order by 1

```

<BarChart data={permit_count} y=total_permits_issued x=issued_month_last_day_date/>




