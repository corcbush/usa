
_____________________________


__________
/
declare
	v_row number := 0;
    i number;
    v_col number;
    v_colx number;
    v_colz number := 3;
begin
	while v_row<4
    loop
        v_col := 0;
        while v_col<v_row
        loop
            dbms_output.put(' ');
            v_col := v_col+1;
        end loop;
        
        v_colx := 0;
        while v_colx<7-(v_row*2)
        loop
            dbms_output.put('*');
            v_colx := v_colx+1;
        end loop;
            
        dbms_output.put_line('');
        v_row := v_row+1;
    end loop;
    v_row := 3;
    while v_row>0
    loop
        v_col := 1;
        while v_col<v_row
        loop
            dbms_output.put(' ');
            v_col := v_col+1;
        end loop;
        
        v_colx := 0;
        while v_colx<v_colz
        loop
            dbms_output.put('*');
            v_colx := v_colx+1;
        end loop;
        v_colz := v_colz+2;   
        dbms_output.put_line('');
        v_row := v_row-1;
    end loop;
end;
/

__________________________________________________________

_
/
declare 
i number := 0;
j number := 0;
begin 
    for i in 0..6
    loop
        for j in 0..6
        loop
            if (i=j or (6-j)=i ) then
                dbms_output.put('*');
            else dbms_output.put(' ');
            end if;
        end loop;
            dbms_output.put_line('');
    end loop;
end;
/

__________________________________________________________


__________

 create or replace function net_salary(salary number, c_pct number) return number
is
begin
    return salary-salary*nvl(c_pct, 0);
end;
/
select 
last_name, salary, commission_pct, net_salary(salary=>salary, c_pct=>commission_pct) as "Net Salary"
from employees;
/
__________________________________________________________


__________

create or replace function check_pifagor_rules(p1 number, p2 number, p3 number) return VARCHAR2
is 
begin 
    
    if (p1>=p2 and p1>=p3 and p1<p2+p3) then 
         return 'true';
    elsif (p2>=p1 and p2>=p3 and p2<p1+p3) then 
         return 'true';
    elsif (p3>=p1 and p3>=p2 and p3<p2+p1) then 
         return 'true';
    end if;
    return 'false';
end;
/
select check_pifagor_rules(10, 12, 11) from dual;

________________________________________________________________



                                           24/12/2019.
