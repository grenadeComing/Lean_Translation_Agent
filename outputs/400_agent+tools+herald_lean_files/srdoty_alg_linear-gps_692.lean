import Mathlib

noncomputable def R_theta (θ : ℝ) : ℝ × ℝ → ℝ × ℝ :=
  fun (x,y) => (x * Real.cos θ - y * Real.sin θ, x * Real.sin θ + y * Real.cos θ)

noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := R_theta θ

theorem rho_fix_origin (θ : ℝ) : rho θ (0,0) = (0,0) := by sorry
