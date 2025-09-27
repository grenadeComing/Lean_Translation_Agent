import Mathlib

open Filter Metric

/-- For z0 : ℂ and f : ℂ → ℂ, lim_{z→z0} f(z) = ∞ (equivalently |f(z)| → ∞) iff for every M > 0 there exists δ > 0 such that |f(z)| > M whenever 0 < |z - z0| < δ. -/
theorem tendsto_norm_atTop_iff {z0 : Complex} {f : Complex → Complex} :
  Tendsto (fun z => Complex.abs (f z)) (nhdsWithin z0 {z | z ≠ z0}) atTop ↔
    ∀ M : ℝ, M > 0 → ∃ δ > 0, ∀ z, z ≠ z0 → Complex.abs (z - z0) < δ → M < Complex.abs (f z) := by
  sorry
