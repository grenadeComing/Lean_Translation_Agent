import Mathlib

variable {F : Type _} [Field F] {K : Type _} [Field K] [Algebra F K]

/-- If a^2 is algebraic over the subfield F of K, then a is algebraic over F. -/
theorem is_algebraic_of_square (a : K) (h : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a := by sorry
