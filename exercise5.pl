numeral(0).
numeral(s(X)):-numeral(X).
numeral(p(X)):- numeral(X).
numeral(X+Y):-numeral(X),numeral(Y).
numeral(-X) :- numeral(X).

add(0,X,X).
add(s(X),Y,s(Z)):-add(X,Y,Z).
add(p(X),Y,p(Z)):-add(X,Y,Z).

simplify(0,0).
simplify(X+Y,Z):-numeral(X+Y),add(X,Y,Z).
simplify(-X,Y):-numeral(-X),minus(X,Y).
simplify(s(p(X)),Y):-numeral(s(p(X))),simplify(X,Y).
simplify(p(s(X)),Y):-numeral(p(s(X))),simplify(X,Y).
simplify(s(X),s(Y)):-X\=p(_), numeral(s(X)),simplify(X,Y).
simplify(p(X),p(Y)):-X\=s(_),numeral(p(X)),simplify(X,Y).

add2(W,Y,Z):-simplify(W,R1),simplify(Y,R2),add(R1,R2,U),simplify(U,Z).

minus(0,0).
minus(s(X),p(Y)):-X\=p(_),minus(X,Y).
minus(p(X),s(Y)):-X\=s(_),minus(X,Y).
minus(s(p(X)),W):-minus(X,Z), simplify(Z,W).
minus(p(s(X)),W):-minus(X,Z), simplify(Z,W).

subtract(X,Y,Z):-add2(X,-Y,Z).
subtract(X,-Y,Z):-add2(X,Y,Z).

