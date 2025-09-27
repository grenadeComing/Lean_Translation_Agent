import Mathlib

/-- If z ∈ ℂ and |z| < 1, then |log (1 - z)| ≤ |z| / (1 - |z|). -/
theorem jirilebl_ca_ca_18866 (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.log (1 - z)) ≤ Complex.abs z / (1 - (Complex.abs z : ℝ)) := by sorry
