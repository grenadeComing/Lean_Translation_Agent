import Mathlib

/-- For z ∈ ℂ with ‖z‖ < 1, the principal branch of the complex logarithm satisfies
    log(1 - z) = -∑_{n=1}^∞ z^n / n.
-/
theorem jirilebl_ca_ca_19195 (z : Complex) (hz : ‖z‖ < 1) :
  Complex.log (1 - z) = - ∑' (n : ℕ), z ^ (n + 1) / (n + 1 : Complex) := by sorry
