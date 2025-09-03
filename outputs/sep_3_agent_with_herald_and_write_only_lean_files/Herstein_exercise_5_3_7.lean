import Mathlib

/-- If a ∈ K is such that a^2 is algebraic over the subfield F of K, then a is algebraic over F. -/
theorem Herstein_exercise_5_3_7 {F K : Type _} [Field F] [Field K] [Algebra F K] {a : K}
  (h : IsAlgebraic F K (a ^ 2)) : IsAlgebraic F K a := by sorry
