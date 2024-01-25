-- Faktisk data for forbund
insert into Forbund (ForbundsNavn, ForbundSymbol) values ('Dynamisk Sportskyting', 'DSSN');
insert into Forbund (ForbundsNavn, ForbundSymbol) values ('Norsk Skytterforbund', 'NSF');
insert into Forbund (ForbundsNavn, ForbundSymbol) values ('Det Frivillige Skyttervesen', 'DFS');
-- Test av tabell forbund
select * from Forbund;

-- Mockdata for brukere til appen
insert into Bruker (Fornavn, Etternavn, JegerStatus) values ('Aleksander', 'Toresen', True);
insert into Bruker (Fornavn, Etternavn, JegerStatus) values ('Erik', 'Toresen', False);
insert into Bruker (Fornavn, Etternavn, JegerStatus) values ('Elgo', 'Toresen', True);
-- Test av mockdata i brukertabell
select * from Bruker;

-- Mockdata for many-to-many bruker-forbund medlemskaps hjelpetabell
insert into Medlemskap (Bruker_idBruker, Forbund_ForbundsNavn) values ('1', 'Dynamisk Sportskyting');
-- Test av mockdata i n:m hjelpetabell
select * from Medlemskap;

-- Faktisk data for programmmer
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Open', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Standard', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Production', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Production Optics', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Classic', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Revolver', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Sivilpistol 1', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Sivilpistol 2', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Sivilpistol 3', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Sivilpistol 4', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Sivilpistol 5', 'Dynamisk Sportskyting');

insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Semi Auto Standard', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Semi Auto Open', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Minirifle', 'Dynamisk Sportskyting');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('PCC', 'Dynamisk Sportskyting');


insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Militaerfelt', 'Norsk Skytterforbund');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Grovfelt', 'Norsk Skytterforbund');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Finfelt', 'Norsk Skytterforbund');
insert into Program (ProgramNavn, Forbund_ForbundsNavn) values ('Revolverfelt', 'Norsk Skytterforbund');

-- Test av data i Programmer
select * from Program;

-- Faktisk data i vapentyper
insert into VapenType (VapenType, Program_ProgramNavn) values ('Pistol 9mm', 'Open');
insert into VapenType (VapenType, Program_ProgramNavn) values ('Pistol 9mm', 'Standard');
insert into VapenType (VapenType, Program_ProgramNavn) values ('Pistol 9mm', 'Classic');
insert into VapenType (VapenType, Program_ProgramNavn) values ('Revolver', 'Revolverfelt');
insert into VapenType (VapenType, Program_ProgramNavn) values ('Sportrifle', 'Semi Auto Open');
-- Test av vapentype tabell
select * from VapenType;

-- Data i 
insert into AktivitetskravPrimary(VapenType_VapenType,kravTreninger