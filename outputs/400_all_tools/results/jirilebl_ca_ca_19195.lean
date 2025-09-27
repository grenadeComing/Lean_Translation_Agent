import Mathlib

/-- Let z ∈ ℂ with |z| < 1. Then log (1 - z) equals -∑_{n=1}^∞ z^n / n.
    We state the series using a sum over n : ℕ by reindexing (n ↦ n+1).
-/
theorem log_one_sub_series (z : ℂ) (hz : ‖z‖ < 1) :
  Complex.log (1 - z) = -∑' (n : ℕ), z^(n+1) / (n+1 : ℂ) := by sorry
