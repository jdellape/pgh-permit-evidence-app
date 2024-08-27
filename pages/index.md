---
title: Welcome to Evidence
---

## Verified New Housing Units Permitted

```sql new_construction_housing_sum

select address_first_permit_issued_month_end as month_end, sum(housing_unit_qty) as housing_unit_sum from verified_new_construction group by 1 order by 1

```

<LineChart data={new_construction_housing_sum} y=housing_unit_sum x=month_end xAxisTitle="Month End"/>




