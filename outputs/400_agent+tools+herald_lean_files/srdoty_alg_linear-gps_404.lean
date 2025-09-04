import Mathlib

variable {n : Type _} [DecidableEq n] [Fintype n]
variable {R : Type _} [CommRing R]

/-- A matrix is diagonal if all off-diagonal entries are zero. -/
def is_diag (A : Matrix n n R) : Prop := ∀ i j, i ≠ j → A i j = 0

/-- The set D(n) of diagonal n × n matrices over R. -/
def D : Set (Matrix n n R) := { A | is_diag A }

/-- The subset of units (invertible matrices) which are diagonal. -/
def D_units : Set (Units (Matrix n n R)) := { U | is_diag (U.val : Matrix n n R) }

/-- Claim: D(n) (the invertible diagonal matrices) is a subgroup of the general linear group.
    Proof omitted. -/
theorem D_units_is_subgroup : Subgroup (Units (Matrix n n R)) := by sorry
