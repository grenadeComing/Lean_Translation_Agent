import Mathlib

/--
Let Z_sqrt2 denote the ring ℤ[√2] and let `sqrt2` denote the element √2 in Z_sqrt2.
We assume ℤ[√2] is a U.F.D. The polynomial X^2 - sqrt2 is irreducible over ℤ[√2].
-/

constant Z_sqrt2 : Type _
constant sqrt2 : Z_sqrt2

open Polynomial

def f : Polynomial Z_sqrt2 := X ^ 2 - C sqrt2

theorem Dummit_Foote_exercise_9_4_9 : Irreducible (f : Polynomial Z_sqrt2) := by sorry
