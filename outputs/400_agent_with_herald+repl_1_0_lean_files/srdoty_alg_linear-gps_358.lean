import Mathlib

/-- Orthogonal group O(n) as the subtype of n×n real matrices satisfying A * Aᵀ = I. -/
def O (n : Nat) := Subtype fun A : Matrix (Fin n) (Fin n) ℝ => A ⬝ Matrix.transpose A = (1 : Matrix (Fin n) (Fin n) ℝ)

/-- O(n) is a group under matrix multiplication. Statement only; proof omitted. -/
instance O_group (n : Nat) : Group (O n) := by
  -- proof uses (AB)^{-1} = B^{-1}A^{-1} and (AB)^{T} = B^{T}A^{T}
  sorry
