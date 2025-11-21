import Mathlib

/-!
Statement: For z ∈ ℂ with |z| < 1, the principal complex logarithm satisfies
log (1 - z) = - ∑_{n=1}^∞ z^n / n.
This is stated here in a form equivalent to the above, using the index shift
∑_{n=1}^∞ z^n / n = ∑' (n : ℕ), z^(n+1) / (n+1).
-/

theorem complex_log_one_sub_series {z : ℂ} (hz : Complex.abs z < 1) :
  Complex.log (1 - z) = - ∑' n : ℕ, z ^ (n + 1) / (n + 1 : ℂ) := by
  sorry
