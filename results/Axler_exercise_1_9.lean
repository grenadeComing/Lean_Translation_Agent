import Mathlib

variable {K : Type _} [Field K]
variable {V : Type _} [AddCommGroup V] [Module K V]

variable (U W : Submodule K V)

/-- The union of two submodules is a submodule iff one is contained in the other. -/
theorem Axler_exercise_1_9 : (∃ S : Submodule K V, (S : Set V) = (U : Set V) ∪ (W : Set V)) ↔ (U ≤ W ∨ W ≤ U) := by sorry
