import Mathlib

open Complex

noncomputable section

theorem jirilebl_ca_ca_20226 (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ ∑' (n : ℕ), Complex.abs z ^ (n + 1) / (n + 1) ∧
  ∑' (n : ℕ), Complex.abs z ^ (n + 1) / (n + 1) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry

end
