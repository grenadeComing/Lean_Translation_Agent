import Mathlib

/-- If F ⊆ K are fields and a ∈ K with a^2 algebraic over F, then a is algebraic over F. -/
theorem herstein_exercise_5_3_7 {F K : Type*} [Field F] [Field K] [Algebra F K] (a : K)
  (h : IsAlgebraic F (a * a)) : IsAlgebraic F a := by sorry
