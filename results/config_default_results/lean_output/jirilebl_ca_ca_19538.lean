import Mathlib

/--
Equivalent real formulation: for r ∈ ℝ with 0 ≤ r < 1, we have
∑_{n=1}^∞ r^n / n ≤ r / (1 - r).
This is equivalent to the complex statement with r = |z|.
-/

theorem jirilebl_ca_ca_19538 (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r < 1) :
  ∑' (n : ℕ), r ^ n / (n : ℝ) ≤ r / (1 - r) := by sorry
