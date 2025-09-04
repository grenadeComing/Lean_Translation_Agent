import Mathlib

/-
We define the rotation operator rho_theta : R^2 -> R^2 by the usual 2x2 rotation
matrix action on a vector (x,y). Then we state that it fixes the origin.
-/

noncomputable def rho_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun (x,y) =>
  (Real.cos θ * x - Real.sin θ * y, Real.sin θ * x + Real.cos θ * y)

theorem rho_theta_fixes_origin (θ : ℝ) : rho_theta θ (0, 0) = (0, 0) := by sorry
