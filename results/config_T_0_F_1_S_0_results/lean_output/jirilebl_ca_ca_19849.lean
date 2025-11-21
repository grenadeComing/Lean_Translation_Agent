import Mathlib

/-- For z ∈ ℂ with ‖z‖ < 1 we have the estimate
    ‖arctan z‖ ≤ (π / 4) * (‖z‖ / (1 - ‖z‖)). -/
theorem le_norm_arctan_of_norm_lt_one (z : Complex) (h : ‖z‖ < 1) :
  ‖Complex.arctan z‖ ≤ (Real.pi / 4) * (‖z‖ / (1 - ‖z‖)) := by sorry
