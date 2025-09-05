import Mathlib

/--
Given a covering map p : X → Y where Y is path-connected and locally simply connected,
the fundamental group π₁(Y, y0) acts on the fibre p ⁻¹' {y0} (the fibre over y0) by monodromy.
This action (monodromy) is continuous.
-/
theorem pi_1_action_on_fiber_continuous {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (hp : IsCovering p) [PathConnectedSpace Y] [LocallySimplyConnectedSpace Y]
  (y0 : Y) :
  Continuous (fun (γ : FundamentalGroup Y y0) (x : { x : X // p x = y0 }) => γ • x) := by sorry
