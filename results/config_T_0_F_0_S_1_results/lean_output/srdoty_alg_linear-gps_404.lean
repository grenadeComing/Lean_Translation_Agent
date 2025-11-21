import Mathlib

variable (R : Type*) [CommRing R]
variable (n : Type*) [Fintype n] [DecidableEq n]

/-- The set of invertible diagonal n × n matrices over R, viewed as a subset of GL(n, R). -/
def diagonal_units : Set ((Matrix n n R)ˣ) :=
  { A | ∀ i j, i ≠ j → ((A : Matrix n n R) i j) = 0 }

/-- The set of diagonal matrices in GL(n,R) is a subgroup of GL(n,R). -/
theorem diagonal_units_is_subgroup : ∃ H : Subgroup ((Matrix n n R)ˣ), (H : Set ((Matrix n n R)ˣ)) = diagonal_units := by sorry