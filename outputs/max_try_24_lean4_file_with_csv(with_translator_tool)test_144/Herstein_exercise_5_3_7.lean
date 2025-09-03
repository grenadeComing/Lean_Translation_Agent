import Mathlib

variable {F K : Type _} [Field F] [Field K] [Algebra F K]

/-- If a^2 is algebraic over F, then a is algebraic over F. -/
theorem herstein_exercise_5_3_7 (a : K) (h : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a := by sorry
