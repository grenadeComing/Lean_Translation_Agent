import Mathlib

/-- For 0 ≤ r < 1 the geometric series sums to r / (1 - r). This applies in particular to r = |z| for z ∈ ℂ with |z| < 1. -/
theorem jirilebl_ca_ca_15355 (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r < 1) :
  tsum (fun n : ℕ => r ^ (n + 1)) = r / (1 - r) := by sorry
