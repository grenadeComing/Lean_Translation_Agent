import Mathlib

/-- The predicate describing the open sets of the one-point compactification of a topological
space `α`, modeled as `Option α` where `none` is the point at infinity.  A subset `U` of
`Option α` is declared open if either it is the image under `some` of an open set of `α`,
or it is `{none} ∪ some ` (X \ C)` for some compact `C ⊆ α`. -/
def one_point_compactification_is_open {α : Type _} [TopologicalSpace α] (U : Set (Option α)) : Prop :=
  (∃ V : Set α, IsOpen (V : Set α) ∧ U = Option.some '' V) ∨ (∃ C : Set α, IsCompact C ∧ U = ({none} : Set (Option α)) ∪ Option.some '' (Set.compl C))

/-- There exists a topology on `Option α` whose open sets are exactly those described by
`one_point_compactification_is_open`. This is the one-point compactification topology. -/
theorem exists_one_point_compactification_topology {α : Type _} [TopologicalSpace α] :
  ∃ (t : TopologicalSpace (Option α)), ∀ U : Set (Option α), @IsOpen _ t U ↔ one_point_compactification_is_open U :=
by sorry
