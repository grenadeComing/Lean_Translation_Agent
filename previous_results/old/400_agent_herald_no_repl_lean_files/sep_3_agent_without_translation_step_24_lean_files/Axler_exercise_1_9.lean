import Mathlib

variable {R : Type _} [Semiring R]
variable {V : Type _} [AddCommMonoid V] [Module R V]

/-- The union of two submodules is a submodule iff one is contained in the other. -/
theorem submodule_union_is_submodule_iff (U W : Submodule R V) :
  (∃ S : Submodule R V, (S : Set V) = (U : Set V) ∪ (W : Set V)) ↔ U ≤ W ∨ W ≤ U :=
by sorry
