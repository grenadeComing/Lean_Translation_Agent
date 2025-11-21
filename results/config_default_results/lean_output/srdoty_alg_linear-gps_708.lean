import Mathlib

noncomputable def rho (theta : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  (x.1 * Real.cos theta - x.2 * Real.sin theta,
   x.1 * Real.sin theta + x.2 * Real.cos theta)

/-- For theta ∈ ℝ and nonzero x ∈ ℝ^2, the rotation rho(theta, x) has the expected dot-product
and 2D-determinant with x, which imply the angle between x and rho theta x has cosine cos theta
and sine sin theta, i.e. the rotation is by theta. -/
theorem rotation_angle_dot_det (theta : ℝ) (x : ℝ × ℝ) (h : x ≠ (0, 0)) :
  (x.1 * (rho theta x).1 + x.2 * (rho theta x).2 = (x.1 ^ 2 + x.2 ^ 2) * Real.cos theta) ∧
  (x.1 * (rho theta x).2 - x.2 * (rho theta x).1 = (x.1 ^ 2 + x.2 ^ 2) * Real.sin theta) := by
  sorry
