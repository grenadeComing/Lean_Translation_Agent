import Mathlib

open Set

variable (X : Type*) [TopologicalSpace X]

/-- We add a point `none : Option X` as the point at infinity. We describe which subsets
    of `Option X` are to be declared open.

    A set `U : Set (Option X)` is declared open iff either
    * it does not contain `none` and `Option.some ⁻¹' U` is open in `X`, or
    * it contains `none` and there is a compact `C ⊆ X` with
      `U = {none} ∪ Option.some '' (X \ C)`.
-/
noncomputable def isOpenOnePoint (U : Set (Option X)) : Prop :=
  (none ∉ U ∧ IsOpen (Option.some ⁻¹' U)) ∨
  (none ∈ U ∧ ∃ C : Set X, IsCompact C ∧ U = {none} ∪ Option.some '' (X \ C))

/-- The statement that the above predicate on subsets of `Option X` defines a topology.
    We assert existence of a `TopologicalSpace (Option X)` whose open sets are exactly
    those satisfying `isOpenOnePoint X`.

    (Proof omitted.) -/
theorem one_point_compactification_defines_topology :
  ∃ (t : TopologicalSpace (Option X)), ∀ U : Set (Option X), t.IsOpen U ↔ isOpenOnePoint X U := by sorry
