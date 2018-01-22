numeral(0).
numeral(s(X)):-numeral(X).
numeral(X+Y):-numeral(X),numeral(Y).

add(0,X,X).
add(s(X),Y,s(Z)):-add(X,Y,Z).

simplify(0,0).
simplify(X+Y,Z):-numeral(X+Y),add(X,Y,Z).
simplify(s(X),s(Y)):-numeral(s(X)),simplify(X,Y).

add2(W,Y,Z):-simplify(W,R1),simplify(Y,R2),add(R1,R2,U),simplify(U,Z).
