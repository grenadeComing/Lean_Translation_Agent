import Mathlib

variable {n : Type*} [Fintype n] [DecidableEq n]

/-!
  Statement (informal):
  For a finite index type `n`, the special linear group SL(n, ℝ) is a normal subgroup of
  the general linear group GL(n, ℝ), and the quotient GL(n, ℝ) / SL(n, ℝ) is isomorphic
  (as a multiplicative group) to the group of units of the real numbers, `Units ℝ`.

  The following declarations record these statements in Lean. Proofs are omitted ("sorry").
-/

-- SL(n, ℝ) is a normal subgroup of GL(n, ℝ).
theorem special_linear_group_normal :
  (SpecialLinearGroup n ℝ : Subgroup (GeneralLinearGroup n ℝ)).Normal := by sorry

-- The quotient GL(n, ℝ) / SL(n, ℝ) is isomorphic to ℝˣ (the multiplicative group of nonzero reals).
theorem general_linear_mod_special_linear_equiv_units :
  (GeneralLinearGroup n ℝ) ⧸ (SpecialLinearGroup n ℝ : Subgroup (GeneralLinearGroup n ℝ)) ≃* Units ℝ := by sorry
