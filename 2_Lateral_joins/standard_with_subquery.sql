-- Using subquery to calculate the cylinder_hp
select *,
       msrp / cylinder_hp       as msrp_per_cylinder_hp,
       popularity / cylinder_hp as popularity_per_cylinder_hp
from (select concat(make, ' ', model, ' ', year, ' ', engine_hp, 'hp'),
             msrp,
             popularity,
             (engine_hp / engine_cylinders_count) cylinder_hp
      from cars
      where engine_cylinders_count <> 0);
