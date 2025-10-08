import Mathlib

open Polynomial

/-- Dummit & Foote, Ex. 9.4.2(b): show the integer polynomial
    x^6 + 30 x^5 - 15 x^3 + 6 x - 120
    is irreducible in Z[x]. -/
lemma Dummit_Foote_exercise_9_4_2b :
  Irreducible (X^6 + C (30 : Int) * X^5 - C (15 : Int) * X^3 + C (6 : Int) * X - C (120 : Int) : Polynomial Int) :=
by
  sorry
