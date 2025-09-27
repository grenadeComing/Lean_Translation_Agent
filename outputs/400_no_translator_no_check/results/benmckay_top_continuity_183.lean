import Mathlib

open Set

variable {X : Type _} [TopologicalSpace X]

/-- A set `s : Set (WithTop X)` is declared open in the one-point compactification iff
either it is the image under `WithTop.some` of an open set of `X`, or it contains the point
`none : WithTop X` and its complement in `X` is compact. -/
def one_point_compactification_is_open (s : Set (WithTop X)) : Prop :=
  (∃ U : Set X, IsOpen U ∧ s = WithTop.some '' U) ∨
  (∃ C : Set X, IsCompact C ∧ s = ({none} : Set (WithTop X)) ∪ WithTop.some '' (Set.univ \ C))

/-- The predicate above gives a topology on `WithTop X` (one-point compactification). -/
noncomputable def one_point_compactification_topology : TopologicalSpace (WithTop X) := by sorry
