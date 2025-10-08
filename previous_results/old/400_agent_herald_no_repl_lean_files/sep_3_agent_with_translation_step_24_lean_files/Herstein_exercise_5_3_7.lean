import Mathlib

/-- If a ∈ K is such that a^2 is algebraic over the subfield F of K, show that a is algebraic over F. -/
theorem is_algebraic_of_is_algebraic_sq {F K : Type _} [Field F] [Field K] [Algebra F K] {a : K}
  (ha : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a := by sorry
