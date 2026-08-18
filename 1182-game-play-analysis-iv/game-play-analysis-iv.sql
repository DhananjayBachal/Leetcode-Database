# Write your MySQL query statement below


select round(
    count(distinct a.player_id) / count(distinct f.player_id),
    2
) as fraction
from Activity f
left join Activity a
    on f.player_id = a.player_id
    and a.event_date = date_add(f.event_date, INTERVAL 1 DAY)
    and f.event_date = (
        select min(event_date)
        from Activity
        where player_id = f.player_id
    );