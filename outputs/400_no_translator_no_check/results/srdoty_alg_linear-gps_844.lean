import Mathlib

variable (F : Type*) [Field F]

open Matrix

/-- G is the set of 4x4 block matrices [[A,B],[0,C]] with A,B,C 2x2 matrices over F and det(A*C) ≠ 0. -/
def G_set : Set (Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F) :=
  { M | ∃ (A B C : Matrix (Fin 2) (Fin 2) F), M = fromBlocks A B (0 : Matrix (Fin 2) (Fin 2) F) C ∧ det (A * C) ≠ 0 }

/-- G as a subgroup of GL(4,F) (the units of 4x4 block matrices indexed by Fin 2 ⊕ Fin 2). -/
def G_subgroup : Subgroup (Units (Matrix (Fin 2 ⊕ Fin 2) (Fin 2 ⊕ Fin 2) F)) := by
  -- Proof that G_set defines a subgroup under multiplication is omitted.
  sorry
