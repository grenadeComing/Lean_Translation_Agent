import Mathlib

/-- Every bounded convex set in R^n is Jordan measurable. -/
theorem bounded_convex_is_jordan_measurable {n : ℕ} {s : Set (Fin n → ℝ)}
  (hconv : Convex ℝ s) (hbounded : Bounded s) : IsJordanMeasurable s := by sorry
