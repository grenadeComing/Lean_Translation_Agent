import Mathlib

/-- For every natural number n and every set s : Set (Fin n → ℝ), if s is convex and bounded then s is Jordan measurable. -/
theorem convex_bounded_is_jordan_measurable {n : ℕ} {s : Set (Fin n → ℝ)} (hconv : Convex ℝ s) (hbdd : Bounded s) : MeasureTheory.JordanMeasurableSet s := by sorry