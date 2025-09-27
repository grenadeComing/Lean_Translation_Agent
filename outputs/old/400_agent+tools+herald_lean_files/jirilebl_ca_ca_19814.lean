import Mathlib

/-- If |z| < 1 then |log(1 - z)| ≤ ∑' n, |z|^(n+1)/(n+1) ≤ |z|/(1 - |z|). -/
theorem jirilebl_ca_ca_19814 (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (n : ℕ), (Complex.abs z) ^ (n + 1) / ((n + 1) : ℝ) ∧
  (∑' (n : ℕ), (Complex.abs z) ^ (n + 1) / ((n + 1) : ℝ) ≤ Complex.abs z / (1 - Complex.abs z)) := by
  sorry
