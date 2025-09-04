import Mathlib

variable {X : Type _} [TopologicalSpace X]

open Set

/-- The one-point compactification topology on Option X. -/
noncomputable def one_point_compact_topology : TopologicalSpace (Option X) :=
  TopologicalSpace.generateFrom
    (({ U : Set (Option X) | None ∉ U ∧ IsOpen (Option.some ⁻¹' U) } : Set (Set (Option X)))
      ∪ { U | None ∈ U ∧ ∃ C : Set X, IsCompact C ∧ U = {None} ∪ (univ \ C) })

/-- There exists a topology on Option X (with None as the point at infinity) whose open
sets are exactly those U such that either None ∉ U and Option.some ⁻¹' U is open in X,
or None ∈ U and U = {None} ∪ (univ \ C) for some compact C ⊆ X. -/
theorem one_point_compactification_exists :
  ∀ U : Set (Option X),
    @IsOpen (Option X) one_point_compact_topology U ↔
      ((None ∉ U ∧ IsOpen (Option.some ⁻¹' U)) ∨
       (None ∈ U ∧ ∃ C : Set X, IsCompact C ∧ U = {None} ∪ (univ \ C))) := by
  sorry
