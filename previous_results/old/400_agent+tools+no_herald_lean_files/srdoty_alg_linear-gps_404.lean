import Mathlib

open Matrix

/-- There exists a subgroup of the group of units of `Matrix n n R` consisting precisely of the
diagonal (invertible) matrices. -/
theorem exists_diagonal_subgroup {n : Type _} [Fintype n] [DecidableEq n]
  {R : Type _} [CommRing R] :
  ∃ H : Subgroup (Units (Matrix n n R)),
    ∀ u : Units (Matrix n n R), u ∈ H ↔ ∀ i j, i ≠ j → (u : Matrix n n R) i j = 0 := by
  sorry
