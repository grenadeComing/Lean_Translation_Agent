import Mathlib

open Filter

/-- Let f : ℂ → ℂ and z0 ∈ ℂ.  The function f tends to ∞ as z → z0 (in the sense of the
Riemann sphere, i.e. along the punctured neighborhood of z0) if and only if for every
M > 0 there exists δ > 0 such that |f z| > M whenever 0 < |z - z0| < δ. -/
theorem tendsto_at_infty_iff_abs_gt {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => Complex.abs (f z)) (nhdsWithin z0 {z | z ≠ z0}) atTop ↔
  (∀ M : ℝ, 0 < M → ∃ δ : ℝ, 0 < δ ∧ ∀ z : ℂ, z ≠ z0 → Complex.abs (z - z0) < δ → Complex.abs (f z) > M) := by sorry
