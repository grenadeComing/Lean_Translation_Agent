import Mathlib

theorem jirilebl_ca_ca_19538 (z : ℂ) (hz : Complex.abs z < 1) :
  tsum (fun n : ℕ => (Complex.abs z)^(n+1) / (n+1)) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry
