import Mathlib

open Matrix

/-!
Let D1(n) be the set of all diagonal matrices in SL(n).
We formalize this as the set of diagonal matrices with determinant 1,
and show it is a subgroup of the multiplicative group of units of `Matrix n n R`.
-/

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

/-- A matrix is diagonal if all off-diagonal entries are zero. -/
def is_diagonal (A : Matrix n n R) : Prop := ∀ i j, i ≠ j → A i j = 0

/-- The set D1 of diagonal matrices with determinant 1. -/
def D1_set : Set (Matrix n n R) := {A | is_diagonal A ∧ A.det = 1}

/-- View D1 as a subset of the unit group of matrices (invertible matrices). -/
def D1_units : Set (Matrix n n R)ˣ := {u | is_diagonal (u : Matrix n n R) ∧ (u : Matrix n n R).det = 1}

/-- The main statement: D1 is a subgroup of the multiplicative group of units of `Matrix n n R`.
    (Proof omitted.) -/
theorem D1_is_subgroup : IsSubgroup (Matrix n n R)ˣ D1_units := by sorry
