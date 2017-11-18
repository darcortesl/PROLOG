%personas
persona(ana).
persona(alejandro).
persona(miguel).
persona(pedro).
persona(juan).

%  Tipo de contrato de cada persona

contratode(ana,planta).
contratode(alejandro,tco).
contratode(miguel,mto).
contratode(pedro,hc).

%  Horas por tipo de contrato.

hpc(planta,40).
hpc(tco,40).
hpc(mto,20).
hpc(hc,16).

%  Categoria de cada persona.

categoria(ana,asistente).
categoria(alejandro,asistente).
categoria(miguel,titular).
categoria(pedro,titular).
categoria(juan,asistente).

%  Relacion tipo, categoria y salario por hora.

cta(planta,asistente,50000).
cta(planta,titular,45000).
cta(tco,asistente,10000).
cta(tco,titular,5000).
cta(mto,asistente,40000).
cta(mto,titular,35000).
cta(hc,asistente,20000).
cta(hc,titular,15000).
cta(hch,asistente,30000).
cta(hch,titular,25000).

%  semanas en un semestre normal y un vacacional.

semestre(normal,18).
semestre(vacacional,4).
limes(1.5,planta).
limes(1,tco).
limes(1,mto).


salario(X,S,R) :- contratode(X,Y),hpc(Y,H),categoria(X,C),cta(Y,C,Z),semestre(S,W),R is Z*W*H.


nominaprofes(S,T) :- findall(R,salario(_,S,R),G),calculo(G,T).