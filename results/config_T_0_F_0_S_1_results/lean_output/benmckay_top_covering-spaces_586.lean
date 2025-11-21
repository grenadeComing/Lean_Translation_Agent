import Mathlib

/--
Every path connected and locally simply connected topological space `X` has a universal
covering space `\tilde X` with covering map `p : \tilde X → X`.

We state this as the existence of a topological space `tildeX` and a continuous map `p`
which is a covering map and whose domain is simply connected.
-/
theorem exists_universal_covering_space {X : Type _} [TopologicalSpace X]
  [PathConnectedSpace X] [LocallySimplyConnectedSpace X] :
  ∃ (tildeX : Type _) (tilde_top : TopologicalSpace tildeX) (p : tildeX → X),
    IsCoveringMap p ∧ IsSimplyConnected tildeX := by sorry