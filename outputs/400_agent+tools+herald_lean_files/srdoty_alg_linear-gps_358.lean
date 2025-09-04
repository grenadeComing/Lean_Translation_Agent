import Mathlib

/-- The orthogonal group O(n) as a subtype of n×n real matrices satisfying A * Aᵀ = I. -/
def O (n : ℕ) : Type :=
  { A : Matrix (Fin n) (Fin n) Real // A * Matrix.transpose A = 1 }

noncomputable def O_group (n : ℕ) : Group (O n) := by
  -- Group structure: multiplication inherited from matrices, identity = 1, inverse = transpose.
  -- Proof omitted.
  sorry
