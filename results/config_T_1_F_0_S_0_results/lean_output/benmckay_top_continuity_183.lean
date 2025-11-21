import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]

/-- The one-point space X ⊔ {*} (we represent the extra point by PUnit). -/
def OnePoint := Sum X PUnit

/-- The extra point ∞ in the one-point compactification. -/
def infinity : OnePoint := Sum.inr PUnit.unit

/-- A subset U of OnePoint is declared open iff either it is the image of an open
subset of X under the inclusion, or it contains ∞ and its complement in X is compact.
(This is the usual description of the open sets in the one-point compactification.) -/
def is_open_one_point (U : Set OnePoint) : Prop :=
  (∃ V : Set X, IsOpen (V : Set X) ∧ U = Sum.inl '' V) ∨
  (infinity ∈ U ∧ ∃ C : Set X, IsCompact (C : Set X) ∧ U = insert infinity (Sum.inl '' (X \ C)))

/-- The collection of sets satisfying `is_open_one_point` defines a topology on `OnePoint`.
We state the usual axioms: empty and whole space are open, finite intersections of opens
are open, and arbitrary unions of opens are open. -/
theorem one_point_compactification_is_topology :
  (∅ : Set OnePoint) ∈ {U | is_open_one_point U} ∧
  (Set.univ : Set OnePoint) ∈ {U | is_open_one_point U} ∧
  (∀ s t : Set OnePoint, is_open_one_point s → is_open_one_point t → is_open_one_point (s ∩ t)) ∧
  (∀ S : Set (Set OnePoint), (∀ U ∈ S, is_open_one_point U) → is_open_one_point (⋃₀ S)) := by sorry
