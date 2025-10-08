import Mathlib

variable {X : Type _}

/-- If 𝔖 is a family of topologies on X, the intersection of their open sets defines a topology on X. -/
def sInter_topology (𝔖 : Set (TopologicalSpace X)) : TopologicalSpace X := by
  -- Define IsOpen' U := ∀ t ∈ 𝔖, @TopologicalSpace.IsOpen X t U
  -- One proves that TopologicalSpace.mk IsOpen' ... satisfies the axioms.
  sorry
