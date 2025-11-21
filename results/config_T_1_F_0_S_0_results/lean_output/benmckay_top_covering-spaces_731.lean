import Mathlib

/-- If a group Γ has a covering action on a simply connected and locally simply connected Hausdorff topological space Y,
then the quotient map p : Y → Γ \ Y (denoted X) is a universal covering map, so there is a group isomorphism π_1(X) ≅ Γ. -/
theorem covering_action_yields_universal_cover_and_pi1_eq_group {Γ : Type*} [Group Γ]
  {Y : Type*} [TopologicalSpace Y]
  (h_simply_connected : SimplyConnectedSpace Y)
  (h_locally_simply_connected : LocallySimplyConnectedSpace Y)
  (h_hausdorff : HausdorffSpace Y)
  (h_action : CoveringAction Γ Y) :
  let X := Quotient (CoveringAction.to_setoid Γ Y) in
  let p : Y → X := Quotient.mk in
  IsUniversalCoveringMap p ∧ (FundamentalGroup X ≃ Γ) := by sorry