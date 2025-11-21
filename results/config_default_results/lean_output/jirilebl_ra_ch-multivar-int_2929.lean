import Mathlib

variable {n : ℕ}

-- Predicate: a set in R^n is bounded.
axiom IsBounded : Set (Fin n → ℝ) → Prop

-- Predicate: a set in R^n is convex.
axiom IsConvex : Set (Fin n → ℝ) → Prop

-- Predicate: a set in R^n is Jordan measurable.
axiom JordanMeasurable : Set (Fin n → ℝ) → Prop

-- Every bounded convex set in R^n is Jordan measurable.
theorem bounded_convex_set_jordan_measurable {s : Set (Fin n → ℝ)} (hb : IsBounded s)
    (hc : IsConvex s) : JordanMeasurable s := by sorry
