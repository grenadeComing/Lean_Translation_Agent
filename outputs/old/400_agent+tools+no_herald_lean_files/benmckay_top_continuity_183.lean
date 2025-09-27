import Mathlib

/-- The one-point compactification topology on Option X (with none as ∞).
    A set U ⊆ Option X is declared open iff either
    * it does not contain none and its preimage under `some` is open in X, or
    * it contains none and there exists a compact C ⊆ X with
      U = {none} ∪ (some '' (X \ C)). -/

def one_point_compactification (X : Type*) [TopologicalSpace X] : TopologicalSpace (Option X) := by
  -- We would construct the topology by specifying the `IsOpen` predicate and
  -- proving the axioms. The full construction and proofs are omitted.
  sorry
