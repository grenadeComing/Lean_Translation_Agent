import Mathlib

variable (n : Nat)

/-- General linear group as the units of n×n real matrices. -/
def GL : Type _ := Units (Matrix (Fin n) (Fin n) ℝ)

/-- Special linear subgroup: determinant equals 1. -/
def SL (g : GL n) : Prop := Matrix.det g.val = 1

/-- SL(n) is normal in GL(n): conjugation preserves determinant 1. -/
theorem SL_normal (g A : GL n) (h : SL n A) : SL n (g * A * g⁻¹) := by
  -- determinant is multiplicative, and det g * det g⁻¹ = 1
  have : Matrix.det (g * A * g⁻¹ : Matrix (Fin n) (Fin n) ℝ) = Matrix.det g.val * Matrix.det A.val * Matrix.det (g⁻¹).val := by sorry
  sorry

/-- The determinant induces a surjective homomorphism GL(n) → ℝˣ with kernel SL(n).
    Statement of existence; proof omitted. -/
theorem GL_mod_SL_equiv_R_units : ∃ (φ : GL n →* Units ℝ),
  Function.Surjective (φ : GL n → Units ℝ) ∧ ∀ A, φ A = 1 ↔ Matrix.det A.val = 1 := by
  sorry
