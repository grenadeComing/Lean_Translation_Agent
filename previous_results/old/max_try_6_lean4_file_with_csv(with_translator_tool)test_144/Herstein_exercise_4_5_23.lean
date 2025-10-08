import Mathlib

/-!
Exercise: Let F = Z_7 and let p(x) = x^3 - 2 and q(x) = x^3 + 2 in F[x].
Show that p(x) and q(x) are irreducible in F[x] and that the fields
F[x]/(p(x)) and F[x]/(q(x)) are isomorphic.
-/

open Polynomial

abbrev F := ZMod 7

abbrev two : F := (2 : ZMod 7)

def p : Polynomial F := X ^ 3 - C (two)

def q : Polynomial F := X ^ 3 + C (two)

theorem p_irreducible : IsIrreducible p := by sorry

theorem q_irreducible : IsIrreducible q := by sorry

noncomputable def fields_iso : (Polynomial F) ⧸ Ideal.span ({p} : Set (Polynomial F)) ≃+* (Polynomial F) ⧸ Ideal.span ({q} : Set (Polynomial F)) := by sorry
