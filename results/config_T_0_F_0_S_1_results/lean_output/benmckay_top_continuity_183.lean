import Mathlib

open Set

/-- One-point compactification topology on Option X.

We assert existence of a topology on `Option X` whose open sets are precisely
those of the form `Option.some '' V` for `V` open in `X`, together with sets of the
form `{none} ∪ Option.some '' (X \ C)` for `C` compact in `X`.
-/
theorem one_point_compactification_topology_exists (X : Type*) [TopologicalSpace X] :
  ∃ (t : TopologicalSpace (Option X)),
    ∀ U : Set (Option X),
      (U ∈ t.IsOpen) ↔
        ((∃ V : Set X, IsOpen (V) ∧ U = Option.some '' V) ∨
         (∃ C : Set X, IsCompact C ∧ U = {none} ∪ Option.some '' (X \ C))) := by sorry
