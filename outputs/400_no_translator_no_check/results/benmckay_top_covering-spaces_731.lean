import Mathlib

/--
If a group Γ has a covering action on a simply connected and locally simply connected Hausdorff
topological space Y, then the quotient map p : Y → Γ \ Y = X is a universal covering map, so
there is a group isomorphism π₁(X) ≃ Γ.

This file gives a formal statement of the existence of the covering and the resulting iso of
fundamental groups. The proof is omitted (`sorry`).
-/
theorem benmckay_top_covering_spaces_731
  {Γ : Type _} [Group Γ]
  {Y : Type _} [TopologicalSpace Y]
  (covering_action_on_Y : Prop) (Y_simply_connected : Prop) (Y_locally_simply_connected : Prop) (Y_haus : Prop) :
  ∃ (X : Type _) (hX : TopologicalSpace X) (p : Y → X) (x : X),
    Nonempty (FundamentalGroup X x ≃ Γ) := by
  sorry
