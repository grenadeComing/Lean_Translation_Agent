import Mathlib

open MeasureTheory
open Set
open Real

/-- Exercise: For a > 0, the integral over the real line of x * sin x / (x^2 + a^2) equals π * exp(-a). -/
theorem Shakarchi_exercise_3_4 (a : ℝ) (ha : 0 < a) :
  (integral volume fun x : ℝ => (x * sin x) / (x ^ 2 + a ^ 2)) = π * exp (-a) := by sorry
