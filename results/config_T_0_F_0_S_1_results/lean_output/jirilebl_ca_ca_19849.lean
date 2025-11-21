import Mathlib

/--
For z ∈ ℂ, |atan z| ≤ (π/4) * (|z| / (1 - |z|)) whenever |z| < 1.
This statement is left without proof (:= by sorry).
-/
theorem jirilebl_ca_ca_19849 (z : ℂ) (hz : Complex.abs z < 1) :
  Complex.abs (Complex.atan z) ≤ (π / 4) * (Complex.abs z / (1 - Complex.abs z)) := by sorry
