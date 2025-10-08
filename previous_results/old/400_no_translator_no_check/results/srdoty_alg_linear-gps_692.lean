import Mathlib

/-!
Show that for every θ ∈ ℝ, the rotation operator ρ_θ : ℝ^2 → ℝ^2,
defined by ρ_θ(x,y) = (cos θ * x - sin θ * y, sin θ * x + cos θ * y),
fixes the origin.
-/

noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p =>
  (Real.cos θ * p.fst - Real.sin θ * p.snd,
   Real.sin θ * p.fst + Real.cos θ * p.snd)

theorem rho_fix_origin (θ : ℝ) : rho θ (0, 0) = (0, 0) := by sorry
