import Mathlib

/-
Let D(n) be the set of all diagonal matrices in GL(n).
We state that the diagonal invertible matrices form a subgroup of the group of units of the
matrix algebra Matrix n n R (which is the matrix group GL(n) over a commutative ring R).

This file provides the Lean4 translation; the proof is omitted and replaced by `by sorry`.
-/

variable {R : Type _} [CommRing R]
variable {n : Type _} [Fintype n] [DecidableEq n]

open Matrix

/-- The set of (matrix) diagonal matrices whose diagonal entries are units. -/
def diagonal_invertible_matrices : Set (Matrix n n R) :=
  {A | ∃ d : n → R, (∀ i, IsUnit (d i)) ∧ A = Matrix.diagonal d}

/-- The diagonal invertible matrices form a subgroup of GL(n).
    (Translation of: D(n) is a matrix group.) -/
def diagonal_invertible_subgroup : Subgroup (Units (Matrix n n R)) := by
  -- proof omitted
  sorry
