%Discente: Elton Peniche Quaresma, 201504940035.


%1 questão
%pessoa(cdpessoa,nome,fone)
pessoa(1,obilac, 260088).
pessoa(2,silva,  282677).
pessoa(3,cabral,260088).
pessoa(4,lobato, 174590).
pessoa(5,mateus).

%turma(cdturma,nome,profs).
turma(a,volei,4).
turma(b,karate,4).
turma(c,natacao,2).

%participante(pessoa,turma).
participante(1,a).
participante(3,a).
participante(1,b).
participante(1,c).
participante(2,c).

%C1
%prof(Resp):-findall(CdPessoa-Nome,(pessoa(CdPessoa,Nome,_),turma(_,_,CdPessoa)),L),sort(1,<,L,Resp).

%C2
aluno(Resp):-findall(CdPessoa-Nome,(pessoa(CdPessoa,Nome,_),participante(CdPessoa,_)),L),sort(1,<,L,Resp).

%C3.
turma(L):-findall(CdTurma-Nome,(turma(CdTurma,Nome,_)),L).

%C4.

alunos(L):-findall(Nome-Turma, (pessoa(Cd,Nome,_),turma(CdT,Turma,_),participante(Cd,CdT)),L).

%C5
prof(L):-findall(Nome-NomeT,(pessoa(Cd,Nome,_),turma(_,NomeT,Cd)),L).

%C6


%C7

numA(L2):-findall(Cd,(pessoa(Cd,_,_),participante(Cd,_)),L),sort(0,<,L,L1),length(L1,L2).

%c8

numP(L2):-findall(Cd,(pessoa(Cd,_,_),turma(_,_,Cd)),L),sort(0,<,L,L1),length(L1,L2).

%c9

%II
%emp(Cdemp,nome,fone, salario,chefe,departamento).

emp(1,  obilac, 2688, 20000, 3,s).
emp(2,  silva,  2677, 30000, _,h).
emp(3,  cabral, 1088, 22000, 2,s).
emp(4,  lobato, 4590, 28000, 2,h).
emp(8,  maria,  2690, 25000, 4,c).
emp(9,  antune, 2698, 26000, 8,c).
emp(10, petter, 2645, 22000, 8,c).

%depto(cddepto,nome,responsavel).

depto(c, computacao,8).
depto(h, sede      ,2).
depto(s, seguranca ,3).

%dep(cdemp,cddep,nome).

dep(2,1,jose).
dep(2,2,ana ).

%d.1) - findall(Nome-Dep,(emp(_,Nome,_,_,_,CdD),depto(CdD,Dep,_)),L). 
%d.2) - findall(Nome-Dep,(depto(_,Dep,Cd),emp(Cd,Nome,_,_,_,_)),L).
%d.3) - 
%d.4) - findall(Emp-Dep,(emp(Cd,Emp,_,_,_,_),dep(Cd,_,Dep)) ,L).


