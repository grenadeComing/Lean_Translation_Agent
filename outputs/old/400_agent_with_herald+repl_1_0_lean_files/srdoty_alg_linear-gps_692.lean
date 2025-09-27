import Mathlib

/-- Rotation operator ρ_θ on ℝ^2. -/
def rho (θ : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  (Real.cos θ * x.fst - Real.sin θ * x.snd, Real.sin θ * x.fst + Real.cos θ * x.snd)

/-- ρ_θ fixes the origin. -/
theorem rho_fix_origin (θ : ℝ) : rho θ (0, 0) = (0, 0) := by sorry
