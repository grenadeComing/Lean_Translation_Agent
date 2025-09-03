import Mathlib

variable {K : Type*} {V : Type*} [Field K] [AddCommGroup V] [Module K V]

open Submodule Set

/-- The union of two submodules is a submodule iff one is contained in the other. -/
theorem union_submodule_iff {U W : Submodule K V} :
  (∃ S : Submodule K V, (S : Set V) = (U : Set V) ∪ (W : Set V)) ↔ (U ≤ W) ∨ (W ≤ U) := by sorry
