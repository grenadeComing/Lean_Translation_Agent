import Mathlib

theorem abs_add_sq (a b : ℂ) :
  ‖a + b‖ ^ 2 = ‖a‖ ^ 2 + ‖b‖ ^ 2 + 2 * (Complex.re (a * (starRingEnd ℂ b))) := by sorry
