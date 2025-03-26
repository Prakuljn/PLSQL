----set serveroutput on ;
----declare
----    eid int:= 102;
----    v_name hr.employees.first_name%Type;
----    emp_rec hr.employees%rowtype;
----begin
----    select * into emp_rec from employees where employee_id =eid;
----    dbms_output.put_line(eid || ' ' || emp_rec.first_name || ' ' || emp_rec.last_name);
----end;
--
--
create table test(id int );
insert into test values(10);
insert into test values(20);
insert into test values(30);
select * from test;
drop table test;