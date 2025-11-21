import Mathlib

set_option linter.deprecated false

/-- If z ∈ ℂ and |z| < 1, then |log(1 - z)| ≤ |z| / (1 - |z|). -/
theorem jirilebl_ca_ca_18866 (z : ℂ) (h : Complex.abs z < (1 : ℝ)) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - Complex.abs z) := by
  sorry
