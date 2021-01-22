-- solution 1: alterins sql mode of using group by

set sql_mode = '';
select Start_Date, End_Date from
(select Start_Date from Projects where Start_Date not in (select End_Date from Projects)) s,
(select End_Date from Projects where End_Date not in (select Start_Date from Projects)) e
where Start_Date < End_Date
group by Start_Date order by DATEDIFF(End_Date,Start_Date),Start_Date;

                                                      
-- solution 2: using cross join and min  
                                                      
select Start_Date, min(End_Date) from
(select Start_Date from Projects where Start_Date not in (select End_Date from Projects)) s
cross join
(select End_Date from Projects where End_Date not in (select Start_Date from Projects)) e
where Start_Date < End_Date
group by Start_Date order by DATEDIFF(min(End_Date),Start_Date),Start_Date;
                                                      
