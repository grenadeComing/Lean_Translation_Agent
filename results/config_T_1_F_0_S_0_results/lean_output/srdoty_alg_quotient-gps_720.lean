import Mathlib

/-- Prove that SL(n) ⫲ GL(n) and GL(n)/SL(n) ≅ ℝ^×. More precisely: for real n×n matrices, the subgroup SL(n,ℝ) = {A ∈ GL(n,ℝ) | det A = 1} is normal in GL(n,ℝ), and the determinant induces an isomorphism GL(n,ℝ)/SL(n,ℝ) ≅ ℝ^×. -/
theorem is_normal_subgroup_SL_and_quotient_det_iso_R_times (n : ℕ) :
  LinearMap.ker (Matrix.GeneralLinearGroup.determinant ℝ n) ⊲ Matrix.GeneralLinearGroup ℝ n ∧
  (Matrix.GeneralLinearGroup ℝ n) ⧸ LinearMap.ker (Matrix.GeneralLinearGroup.determinant ℝ n) ≅* ℝ^× := by sorry
