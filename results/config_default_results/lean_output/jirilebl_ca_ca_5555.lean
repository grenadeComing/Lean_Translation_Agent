import Mathlib

/-- Schwarz lemma in the complex plane version: if f : ℂ → ℂ is holomorphic and f(0) = 0, then ∥f(z)∥ ≤ ∥z∥ for all z ∈ ℂ. -/
theorem abs_le_abs_ext {f : ℂ → ℂ} {z : ℂ} (h : Holomorphic f) (hz : f 0 = 0) : Complex.abs (f z) ≤ Complex.abs z := by
  sorry
