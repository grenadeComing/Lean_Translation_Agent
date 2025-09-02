import Mathlib
open scoped BigOperators

variable {E : Type*}
variable [SeminormedAddCommGroup E] [InnerProductSpace ℝ E]
variable {m : ℕ} (e : Fin m → E) (h : Orthonormal ℝ e) (v : E)

theorem axler_exercise_6_13 :
  (‖v‖ ^ 2 = ∑ i, (Inner.inner ℝ v (e i)) ^ 2) ↔ v ∈ Submodule.span ℝ (Set.range e) := by sorry
