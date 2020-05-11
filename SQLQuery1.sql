use OWASP;
create table [dbo].[member](
	people_id INT primary key identity(1,1),
	People_name VARCHAR(50) not null,
	p_account int not null,
	p_password int not null



);

alter table dbo.member add p_money int null;