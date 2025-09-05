import Mathlib
open CategoryTheory

/-- The morphism of fundamental groups f_* : π_1(X) → π_1(Y) induced by a covering map
    f : X ⟶ Y on a Hausdorff space X is injective. -/
theorem inducing_fundamentalGroup_injective_extracted {X Y : TopCat} (f : X ⟶ Y) [T2Space X] (hf : IsCoveringMap f) :
  Function.Injective (FundamentalGroup.map f) := by sorry