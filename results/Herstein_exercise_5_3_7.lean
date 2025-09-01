import Mathlib

/-!
If a ∈ K and a^2 is algebraic over the subfield F of K, then a is algebraic over F.
-/

theorem Herstein_exercise_5_3_7 {F K : Type*} [Field F] [Field K] [Algebra F K] {a : K}
  (h : IsAlgebraic F (a ^ 2)) : IsAlgebraic F a := by sorry
