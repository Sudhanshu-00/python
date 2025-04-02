use myyfile
insert into employe values(2,'Alfreds Futter',1342346,'Obere Str. 57','Berlin',12209,'Germany'),(3,'Ana Trujillo',13242346,'Avda. de la Constitución 2222','México D.F.',05021,'Mexico'),(4,'Antonio Moreno ',123124,'Mataderos 2312','México D.F.',05023,'Mexico'),(5,'Around the Horn',23412,'120 Hanover Sq.','London',654516,'UK'),(6,'Berglunds snabbköp',1275346,'Berguvsvägen 8','Luleå',986546,'Sweden');
--where city = 'México D.F.';
--where custm_id=4;
EXEC sp_rename 'employe.countrey', 'country', 'COLUMN';
select * from employe
--alter table employe
--alter COLUMN country varchar(20);	
