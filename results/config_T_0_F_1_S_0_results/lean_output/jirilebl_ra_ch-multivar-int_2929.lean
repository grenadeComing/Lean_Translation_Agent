import Mathlib

open Set MeasureTheory

/-- A set is Jordan measurable if it is bounded and its boundary has Lebesgue measure zero. -/
def IsJordanMeasurable {n : ℕ} (s : Set (Fin n → ℝ)) : Prop :=
  Bounded (s : Set (Fin n → ℝ)) ∧ (MeasureTheory.MeasureSpace.volume (α := Fin n → ℝ)) (frontier s) = 0

/-- Every bounded convex set in R^n is Jordan measurable. -/
theorem bounded_convex_jordan_measurable {n : ℕ} {s : Set (Fin n → ℝ)} (hconv : Convex ℝ s)
  (hbd : Bounded (s : Set (Fin n → ℝ))) : IsJordanMeasurable (s : Set (Fin n → ℝ)) := by sorry
