import Mathlib

/-
Define a relation ≈ on the real numbers by a ≈ b iff a - b ∈ ℤ.
We express this as: approx a b := ∃ k : Int, a - b = k.
-/

def approx (a b : Real) : Prop := ∃ k : Int, a - b = k

theorem approx_equivalence : Equivalence (approx : Real → Real → Prop) := by sorry
