import Mathlib

open Polynomial

def F := ZMod 7

def p : Polynomial F := X ^ 3 - C (2 : F)

def q : Polynomial F := X ^ 3 + C (2 : F)

theorem Herstein_exercise_4_5_23 :
  Irreducible (p : Polynomial F) ∧ Irreducible (q : Polynomial F) ∧
  Nonempty (RingEquiv (Polynomial F ⧸ Ideal.span ({p} : Set (Polynomial F)))
                      (Polynomial F ⧸ Ideal.span ({q} : Set (Polynomial F)))) :=
by sorry
