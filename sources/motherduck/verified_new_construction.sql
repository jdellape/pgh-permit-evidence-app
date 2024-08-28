select 
  anb.neighborhood,
  p.cleaned_address,
  af.housing_unit_qty,
  min(p.issued_month_last_day_date) as address_first_permit_issued_month_end
from pgh_permit.main.permit as p
left join pgh_permit.main.address_fact as af on p.cleaned_address = af.cleaned_address
left join pgh_permit.main.address_neighborhood_bridge as anb on p.cleaned_address = anb.cleaned_address
where p.housing_unit_qty_verified_flag
  and housing_unit_qty > 0
group by 1,2,3