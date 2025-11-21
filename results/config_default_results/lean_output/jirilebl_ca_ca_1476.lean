import Mathlib

open Filter

/-- Suppose z0 ∈ ℂ. Show that lim_{z→z0} f(z) = ∞ in the sense of the Riemann sphere iff for every M > 0 there exists δ > 0 such that ‖f(z)‖ > M whenever ‖z - z0‖ < δ. -/
theorem tendsto_riemann_sphere_at_top_iff {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => Norm.norm (f z)) (nhds z0) atTop ↔
  ∀ M : ℝ, M > 0 → ∃ δ : ℝ, δ > 0 ∧ ∀ z : ℂ, Norm.norm (z - z0) < δ → Norm.norm (f z) > M := by sorry
