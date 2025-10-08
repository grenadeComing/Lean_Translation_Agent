import Mathlib.Topology.Basic

open Set

/-!
Simple lemma: Any set is contained in its closure.
-/

theorem subset_closure {X : Type _} [TopologicalSpace X] (A : Set X) : A ⊆ closure A := by sorry
