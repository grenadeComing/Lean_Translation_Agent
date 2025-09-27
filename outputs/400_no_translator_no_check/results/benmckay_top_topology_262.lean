import Mathlib

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z] [Nonempty Y]

/-- A continuous map on X × Y is `constant_on_fibers` if it is constant on each slice {x} × Y. -/
def constant_on_fibers (F : ContinuousMap (X × Y) Z) : Prop := ∀ x y1 y2, F (x, y1) = F (x, y2)

/-- Precomposition with `Prod.fst` gives an equivalence between continuous maps X → Z and
continuous maps X × Y → Z which are constant on each fiber {x} × Y (assuming Y is nonempty).
-/
def comp_fst_equiv_constant_on_fibers : ContinuousMap X Z ≃ {F : ContinuousMap (X × Y) Z // constant_on_fibers F} := by
  sorry
