

set serveroutput on ;
declare
    v_count int:=0;
    
begin
    
--    update test set id = 50; 
    insert into test values(40);
    insert into test values(50);
    insert into test values(60);
    if sql%found then 
    dbms_output.put_line('cursor open1' || ' ' || sql%rowcount);
    
    end if;
    
end;