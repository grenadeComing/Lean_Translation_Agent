import Mathlib

/-- Suppose z0 ∈ ℂ. The function f tends to ∞ in the sense of the Riemann sphere at z0
    iff for every M > 0 there exists δ > 0 such that |f(z)| > M whenever 0 < |z - z0| < δ. -/
theorem tendsto_riemann_sphere_at_top_iff (z0 : ℂ) (f : ℂ → ℂ) :
  Tendsto (fun z => |f z|) (nhdsWithin z0 (univ \ {z0})) atTop ↔
    ∀ M : ℝ, M > 0 → ∃ δ > 0, ∀ z : ℂ, z ≠ z0 → |z - z0| < δ → M < |f z| := by sorry