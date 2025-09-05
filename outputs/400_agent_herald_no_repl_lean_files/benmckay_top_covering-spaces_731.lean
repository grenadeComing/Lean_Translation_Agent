import Mathlib

open TopologicalSpace

/-- If a group Γ has a covering action on a simply connected and locally simply connected Hausdorff topological space Y,
then the quotient map p : Y → Γ \ Y (= X) is a universal covering map, so there is a group isomorphism π_1(X) ≅ Γ. -/
theorem covering_action_universal_cover {Γ : Type*} [Group Γ] {Y : Type*} [TopologicalSpace Y] [T2Space Y]
  [LocallyPathConnected Y] [IsSimplyConnected Y]
  (act : MulAction Γ Y) (hcover : CoveringAction Γ Y) :
  let X := Quotient (OrbitRel Γ Y)
  let p : Y → X := Quotient.mk' in
  IsCoveringMap p ∧ (FundamentalGroup X ≃ Γ) := by sorry
