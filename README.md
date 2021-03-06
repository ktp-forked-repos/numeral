# PROLOG : Numeral Operations

## Task

Exercise 1 : Suppose we were to extend the knowledge base above with the clause numeral(X+Y) :- numeral(X), numeral(Y).
Define a predicate add2(X,Y,Z).

Exercise 2 : Next we introduce negative numbers via the function symbol p (for predecessor or −1, just as s stands for successor or +1).
numeral(p(X)) :- numeral(X).
Extend the predicate add2.

Exercise 3 : Define a predicate minus(X,Y).

Exercise 4 : Let us extend numeral further to numeral(-X) :- numeral(X).
Revise the predicate add2(X,Y,Z).

Exercise 5 : Define the predicate subtract(X,Y,Z) for subtracting Y from X to get Z.

Exercise 6 : Extend the predicates add2 and subtract to handle the new rule numeral(X-Y) :- numeral(X), numeral(Y).

## Provided Resources

Each exercise corresponds to a module `exerciseNB.pl`.

`instructions.pdf` provides the advices and instructions provided by the teacher.

## Contribution

This was an assignment. The instructions were provided by Tim Fernando (Lecturer in School of Computer Science and Statistics, Trinity College Dublin, Ireland)
