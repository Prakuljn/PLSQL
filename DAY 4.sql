--set serveroutput on;
--declare 
--    cursor emp_cur is 
--        select * from employees;
--    emp_record employees%rowtype;
--begin 
--    open emp_cur;
--    fetch emp_cur into emp_record ;
--    while emp_cur%found
--        loop
--        dbms_output.put_line('ename' || ' : ' || emp_record.first_name);
--        fetch emp_cur into emp_record;    
--    end loop;
--    close emp_cur;
--end;




--set serveroutput on;
--declare 
--    cursor emp_cur is 
--        select * from employees;
--    emp_record employees%rowtype;
--begin 
--    for emp_record in emp_cur
--        loop
--        dbms_output.put_line('ename' || ' : ' || emp_record.first_name);   
--    end loop;
--end;
--select * from employees;

-- now get the employee name and salary for a user with the 10% decrement for a person belonging to deptid 60 and 90 otherwise get the decrement by 20 %

set serveroutput on;
--declare 
--    cursor emp_cur is 
--        select * from employees;
--    emp_record employees%rowtype;
--begin
--    for emp_record in emp_cur
--        loop
--        if emp_record.department_id = 60 or emp_record.department_id = 90 then
--            dbms_output.put_line('ename' || ' : ' || emp_record.first_name || ' ' || 'esalary' || ' : ' || emp_record.salary*0.9 );
--        else
--            dbms_output.put_line('ename' || ' : ' || emp_record.first_name || 'esalary' || ' : ' || emp_record.salary*0.8 );
--        end if;
--        end loop;
--end;

declare 
    cursor emp_cur is 
        select rowid ,department_id , salary  from employees;
    emp_record employees%rowtype;
begin
    for emp_record in emp_cur
        loop
        if emp_record.department_id = 60 or emp_record.department_id = 90 then
            update employees set salary = salary*0.9
            where rowid=emp_record.rowid;
           end if;
        end loop;
end;        
    