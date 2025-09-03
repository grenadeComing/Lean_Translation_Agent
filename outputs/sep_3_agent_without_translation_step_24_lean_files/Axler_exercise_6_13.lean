import Mathlib
open BigOperators

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]

theorem Axler_exercise_6_13 {m : ℕ} (e : Fin m → V) (v : V) (h : Orthonormal ℝ e) :
  ‖v‖ ^ 2 = ∑ i, (@Inner.inner ℝ V _ v (e i)) ^ 2 ↔ v ∈ Submodule.span ℝ (Set.range e) := by
  sorry
