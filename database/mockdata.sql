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
insert into VapenTyper (VapenType) values ('Pistol 9mm');
insert into VapenTyper (VapenType) values ('Pistol .22');
insert into VapenTyper (VapenType) values ('Revolver');
insert into VapenTyper (VapenType) values ('Sportrifle');
insert into VapenTyper (VapenType) values ('Jaktrifle');

-- Test av vapentype tabell
select * from VapenTyper;

-- Data i ProgramVapen
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Open', 'Pistol 9mm');
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Standard', 'Pistol 9mm');
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Production', 'Pistol 9mm');
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Production Optics', 'Pistol 9mm');
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Classic', 'Pistol 9mm');
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Revolver', 'Revolver');
insert into ProgramVapen (Program_ProgramNavn, Vapentyper_Vapentype) values ('Semi Auto Standard', 'Sportrifle');

-- Test av hjelpetabell ProgramVapen
select * from ProgramVapen;

-- Faktisk data i aktivitetskrav reserve
insert into AktivitetsKravReserve (kravStevneStarter, kravMesterskap, Vapentyper_Vapentype)
values (10, 1, 'Sportrifle');
insert into AktivitetsKravReserve (kravStevneStarter, kravMesterskap, Vapentyper_Vapentype)
values (10, 0, 'Pistol 9mm');
insert into AktivitetsKravReserve (kravStevneStarter, kravMesterskap, Vapentyper_Vapentype)
values (10, 1, 'Pistol .22');
insert into AktivitetsKravReserve (kravStevneStarter, kravMesterskap, Vapentyper_Vapentype)
values (10, 1, 'Revolver');
insert into AktivitetsKravReserve (kravStevneStarter, kravMesterskap, Vapentyper_Vapentype)
values (NULL, NULL, 'Jaktrifle');

-- test av aktivitetskrav reserve tabell
select * from AktivitetsKravReserve;

-- faktisk data i aktivitetskravprimary
insert into AktivitetskravPrimary (kravTreninger, kravStevneStarter, Vapentyper_Vapentype)
values (0, 0, 'Jaktrifle');
insert into AktivitetskravPrimary (kravTreninger, kravStevneStarter, Vapentyper_Vapentype)
values (10, 10, 'Sportrifle');
insert into AktivitetskravPrimary (kravTreninger, kravStevneStarter, Vapentyper_Vapentype)
values (10, 0, 'Pistol 9mm');
insert into AktivitetskravPrimary (kravTreninger, kravStevneStarter, Vapentyper_Vapentype)
values (10, 0, 'Pistol .22');
insert into AktivitetskravPrimary (kravTreninger, kravStevneStarter, Vapentyper_Vapentype)
values (10, 0, 'Revolver');

-- test av data i aktivitetskravprimary
select * from AktivitetskravPrimary;

-- mockdata i aktivitetslogg
insert into Aktivitetslogg (Bruker_idBruker, Dato, Kommentar, Program_ProgramNavn) 
values (1, '20230314', 'Organisert trening HPK', 'Minirifle');