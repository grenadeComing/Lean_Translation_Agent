import Mathlib

/-
We work with n×n real matrices. We assume a finite index type `n` so that
`Matrix n n ℝ` is the usual n×n matrices.
-/
variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Normality of the special linear subgroup: conjugation preserves determinant = 1. -/
lemma SL_normal (h g : (Matrix n n ℝ)ˣ) (hg : g.val.det = 1) : ( (h * g * h⁻¹).val.det = 1 ) := by sorry

/-- The determinant induces a surjective group homomorphism from GL(n,ℝ) to ℝˣ
    whose kernel is exactly the special linear group; in particular the quotient
    GL(n,ℝ)/SL(n,ℝ) is (canonically) isomorphic to the multiplicative group ℝˣ. -/
lemma GL_quot_SL_equiv_R_units :
  ∃ (φ : (Matrix n n ℝ)ˣ →* Units ℝ),
    (∀ g, (φ g = 1) ↔ g.val.det = 1) ∧ Function.Surjective (φ : (Matrix n n ℝ)ˣ → _) := by sorry