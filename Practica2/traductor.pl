/*

Traductor b�sico

Ejemplo de funcionamiento:

?- oracion(eng,X,[the,man,eats],[]), oracion(esp,X,Y,[]).
X = o(gn(det(el), n(hombre)), gv()),
Y = [el, hombre, come]

*/

oracion(esp, o(GN,GV)) --> g_nominal(esp, GN), g_verbal(esp, GV).
g_nominal(esp, gn(N)) --> nombre(esp, N).
g_nominal(esp, gn(D,N)) --> determinante(esp, D), nombre(esp, N).
g_verbal(esp, gv(V)) --> verbo(esp, V).
g_adjetival(esp, gadj(Adj)) -> adjetivo(esp, Adj).
g_adverbial (esp, gadv(Adv)) -> adverbio(esp, Adv).
g_preposicional (esp, gp(Prep)) -> preposicion(esp, Prep).

 
oracion(eng, o(GN,GV)) --> g_nominal(eng, GN), g_verbal(eng, GV).
g_nominal(eng, gn(N)) --> nombre(eng, N).
g_nominal(eng, gn(D,N)) --> determinante(eng, D), nombre(eng, N).
g_verbal(eng, gv(V)) --> verbo(eng, V).
g_adjetival(eng, gadj(Adj)) -> adjetivo(eng, Adj).
g_adverbial (eng, gadv(Adv)) -> adverbio(eng, Adv).
g_preposicional (eng, gp(Prep)) -> preposicion(eng, Prep).

determinante(esp, det(X)) --> [X],{det(X,_)}.
determinante(eng, det(X)) --> [Y],{det(X,Y)}.
det(el,the).
det(la,the). 

nombre(esp, n(X)) --> [X],{n(X,_)}.
nombre(eng, n(X)) --> [Y],{n(X,Y)}.
n(hombre,man).
n(mujer,woman).

verbo(esp, v(X)) --> [X],{v(X,_)}.
verbo(eng, v(X)) --> [Y],{v(X,Y)}.
v(come,eats).
v(salta,jumps).
v(boli, pen).


