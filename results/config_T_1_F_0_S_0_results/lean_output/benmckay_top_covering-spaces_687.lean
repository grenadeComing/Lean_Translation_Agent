import Mathlib

/-- For every covering map p : X → Y where Y is path connected and locally simply connected,
    the fundamental group π_1(Y, x0) acts continuously on the fibre p ⁻¹' {x0}.

    The action may be described as follows: for a loop class [γ] ∈ π_1(Y, x0) and a point y
    in the fibre (so p y = x0), let γ̃ be the unique lift of γ starting at y; then [γ] • y := γ̃ 1.

    We state the existence of such a continuous action (no proof). -/
theorem fundamental_group_acts_continuously_on_fiber {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {p : X → Y} (hp : IsCoveringMap p) (x0 : Y) [PathConnectedSpace Y] [LocallySimplyConnectedSpace Y] :
  ∃ (act : FundamentalGroup Y x0 → Subtype (p ⁻¹' ({x0})) → Subtype (p ⁻¹' ({x0}))),
    (∀ (g1 g2 : FundamentalGroup Y x0) (y : Subtype (p ⁻¹' ({x0}))), act (g1 * g2) y = act g1 (act g2 y)) ∧
    (∀ (y : Subtype (p ⁻¹' ({x0}))), act (1 : FundamentalGroup Y x0) y = y) ∧
    Continuous (fun (g : FundamentalGroup Y x0) (y : Subtype (p ⁻¹' ({x0}))) => act g y) := by sorry