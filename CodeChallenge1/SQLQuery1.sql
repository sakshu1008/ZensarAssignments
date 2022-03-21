create database EmployeeManagement

use EmployeeManagement

create table CodeEmployee (empno int primary key,
empname varchar(50) not null,
empsal numeric(10,2) check(empsal >= 25000),
emptype varchar(1) check(emptype in('C','P')))

select * from CodeEmployee

create or alter procedure empinsert ( @empname varchar(50), @empsal numeric(10,2), @emptype varchar(1))
as
 begin 
  declare @eid int = (select max(empno) from CodeEmployee)
  if(@eid is null)
  begin
    set @eid = 0;
    declare @empid int = @eid + 1;
    insert into CodeEmployee values(@empid, @empname, @empsal, @emptype)
  end
  else
  begin
   declare @empid1 int = @eid + 1;
   insert into CodeEmployee values(@empid1, @empname, @empsal, @emptype)
  end
end


