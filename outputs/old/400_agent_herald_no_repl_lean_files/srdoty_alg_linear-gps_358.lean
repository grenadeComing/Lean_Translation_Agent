import Mathlib

open Matrix

/-- The orthogonal matrices O(n) as a subtype of n×n real matrices. -/
def O (n : ℕ) : Type := { A : Matrix (Fin n) (Fin n) ℝ // A ⬝ Aᵀ = 1 }

/-- O(n) is a group under matrix multiplication. The proof is omitted; one shows
closure under multiplication, the identity, associativity (inherited), and
existence of inverses (for A with A Aᵀ = 1 the inverse is Aᵀ using
(AB)ᵀ = Bᵀ Aᵀ and (AB)⁻¹ = B⁻¹ A⁻¹). -/
noncomputable def orthogonal_group (n : ℕ) : Group (O n) := by sorry
