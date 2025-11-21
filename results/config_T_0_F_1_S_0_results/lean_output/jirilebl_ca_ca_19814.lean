import Mathlib

/--
Let z ∈ ℂ with ‖z‖ < 1. Then ‖log(1 - z)‖ ≤ ∑_{n=1}^∞ ‖z‖^n / n ≤ ‖z‖ / (1 - ‖z‖).
Statement only (no proof): ends with `:= by sorry`.
-/
theorem jirilebl_ca_ca_19814 (z : ℂ) (hz : Norm.norm z < 1) :
  Norm.norm (Complex.log (1 - z)) ≤ ∑' (n : ℕ), (Norm.norm z) ^ (n + 1) / (n + 1 : ℝ) ∧
  ∑' (n : ℕ), (Norm.norm z) ^ (n + 1) / (n + 1 : ℝ) ≤ Norm.norm z / (1 - Norm.norm z) := by
  sorry
