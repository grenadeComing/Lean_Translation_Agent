import Mathlib

universe u

/-- Abstract predicates for the statement, given unique names to avoid clashes. -/
axiom BM_IsPathConnected (X : Type u) [TopologicalSpace X] : Prop
axiom BM_IsLocallySimplyConnected (X : Type u) [TopologicalSpace X] : Prop
axiom BM_IsCoveringMap {E X : Type u} [TopologicalSpace E] [TopologicalSpace X] (p : E → X) : Prop
axiom BM_IsSimplyConnected (E : Type u) [TopologicalSpace E] : Prop

/-- Every path connected and locally simply connected topological space X
    has a universal covering space `\tilde X → X`.

    Formally: if X is path connected and locally simply connected, then there
    exists a covering map `p : E → X` with E simply connected. -/
theorem exists_universal_covering_space (X : Type u) [TopologicalSpace X]
  (hpc : BM_IsPathConnected X) (hlsc : BM_IsLocallySimplyConnected X) :
  ∃ (E : Type u) (HE : TopologicalSpace E) (p : E → X), BM_IsCoveringMap (p) ∧ BM_IsSimplyConnected E :=
by sorry
