import Mathlib

open Set

/-- Every bounded convex set in R^n is Jordan measurable. -/
theorem bounded_convex_set_is_jordan_measurable {n : ℕ} (s : Set (Fin n → ℝ))
  (hs_convex : Convex ℝ s) (hs_bdd : Bounded s) : IsJordanMeasurable s := by sorry