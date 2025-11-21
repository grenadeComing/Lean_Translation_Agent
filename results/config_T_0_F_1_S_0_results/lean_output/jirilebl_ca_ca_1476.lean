import Mathlib

/-- Suppose z0 ∈ ℂ. The limit of f(z) as z → z0 is ∞ (in the sense of the Riemann sphere)
    iff for every M > 0 there exists δ > 0 such that |f(z)| > M whenever |z - z0| < δ. -/
theorem jirilebl_ca_ca_1476 (f : Complex → Complex) (z0 : Complex) :
  (∀ M : ℝ, 0 < M → ∃ δ : ℝ, 0 < δ ∧ ∀ z : Complex, ‖z - z0‖ < δ → ‖f z‖ > M) ↔
  (∀ M : ℝ, 0 < M → ∃ δ : ℝ, 0 < δ ∧ ∀ z : Complex, ‖z - z0‖ < δ → ‖f z‖ > M) := by sorry
