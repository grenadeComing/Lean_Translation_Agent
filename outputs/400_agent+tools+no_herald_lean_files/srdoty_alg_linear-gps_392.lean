import Mathlib

/-- A very small wrapper for a "matrix group": a set of invertible n × n matrices
    (represented as units of the matrix monoid) containing 1 and closed under
    multiplication and inverses. -/
structure MatrixGroup (R : Type*) (n : Nat) [Semiring R] where
  carrier : Set (Units (Matrix (Fin n) (Fin n) R))
  one_mem : (1 : Units (Matrix (Fin n) (Fin n) R)) ∈ carrier
  mul_mem : ∀ a b, a ∈ carrier → b ∈ carrier → a * b ∈ carrier
  inv_mem : ∀ a, a ∈ carrier → a⁻¹ ∈ carrier

/-- The intersection of two matrix groups is a matrix group. -/
def matrix_group_inter {R : Type*} {n : Nat} [Semiring R] (G H : MatrixGroup R n) : MatrixGroup R n := by
  -- proof omitted
  sorry
