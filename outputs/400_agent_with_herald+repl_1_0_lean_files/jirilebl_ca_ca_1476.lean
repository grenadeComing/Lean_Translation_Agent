import Mathlib

open Filter Metric Set

/-- For f : ℂ → ℂ and z0 ∈ ℂ, the statement that f(z) → ∞ as z → z0 (in the punctured neighborhood)
    is equivalent to the ε-δ style formulation: for every M > 0 there exists δ > 0 such that
    |f(z)| > M whenever 0 < |z - z0| < δ. -/
theorem tendsto_complex_at_top_iff {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => Complex.abs (f z)) (nhdsWithin z0 {z | z ≠ z0}) atTop ↔
  ∀ M : ℝ, M > 0 → ∃ δ > 0, ∀ z : ℂ, z ≠ z0 → Complex.abs (z - z0) < δ → Complex.abs (f z) > M :=
by sorry