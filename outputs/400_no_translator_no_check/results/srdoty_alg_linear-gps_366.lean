import Mathlib

universe u v

open Matrix

/-- General linear group as a set of invertible n×n matrices over R. -/
def gl (R : Type u) [CommRing R] (n : Type v) [Fintype n] [DecidableEq n] : Set (Matrix n n R) :=
  { A : Matrix n n R | IsUnit A }

/-- Orthogonal group as matrices whose transpose is the inverse. -/
def o (R : Type u) [CommRing R] (n : Type v) [Fintype n] [DecidableEq n] : Set (Matrix n n R) :=
  { A : Matrix n n R | A * A.transpose = 1 }

/-- Statement: O(n) = { A ∈ GL(n) | A * A^T = I }. -/
theorem orthogonal_group_eq_gl (R : Type u) [CommRing R] (n : Type v) [Fintype n] [DecidableEq n] :
  o R n = { A : Matrix n n R | A ∈ gl R n ∧ A * A.transpose = 1 } := by
  sorry
