import Mathlib

open Polynomial

abbrev F := ZMod (7 : Nat)

noncomputable def p : Polynomial F := (X : Polynomial F) ^ 3 - C (2 : F)
noncomputable def q : Polynomial F := (X : Polynomial F) ^ 3 + C (2 : F)

theorem p_irreducible : Irreducible (p : Polynomial F) := by sorry

theorem q_irreducible : Irreducible (q : Polynomial F) := by sorry

theorem fields_isomorphic : Nonempty ((Polynomial F ⧸ Ideal.span ({p} : Set (Polynomial F))) ≃+* (Polynomial F ⧸ Ideal.span ({q} : Set (Polynomial F)))) := by sorry
