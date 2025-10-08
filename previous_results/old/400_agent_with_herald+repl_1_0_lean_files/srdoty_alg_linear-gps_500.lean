import Mathlib

def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun ⟨x, y⟩ =>
  (x * cos θ - y * sin θ, x * sin θ + y * cos θ)

theorem rho_on_polar (θ r φ : ℝ) :
  rho θ (r * cos φ, r * sin φ) = (r * cos (φ + θ), r * sin (φ + θ)) := by
  sorry
