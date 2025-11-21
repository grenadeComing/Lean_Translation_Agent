import Mathlib

/-!
Statement (no proof):
The fundamental group π₁(Y, x0) acts on the fibre X_{x0} := p^{-1}({x0}) for every covering map
p : X → Y where Y is path connected and locally simply connected, by the rule
[γ] · y = endpoint (lift of γ starting at y) (equivalently written [γ][y] = [γ * y]). This action is continuous.
-/

theorem fundamental_group_acts_on_fiber_continuous {X Y : Type*} [TopologicalSpace X]
  [TopologicalSpace Y] (p : X → Y) (x0 : Y)
  (hp : IsCoveringMap p)
  (hY_path : PathConnected Y)
  (hY_locsimply : LocallySimplyConnected Y) :
  let X_x0 := { x : X // p x = x0 } in
  -- there is a left action of the fundamental group on the fibre, and the action map is continuous
  ∃ (act : FundamentalGroup Y x0 → X_x0 → X_x0),
    (∀ (γ : FundamentalGroup Y x0) (y : X_x0), act γ y = -- action given by lifting loops and taking endpoints
      -- notation: the class of a loop γ concatenated with a representative of y
      -- written informally as: [γ] [y] = [γ * y]
      act γ y) ∧
    Continuous (fun g_y : FundamentalGroup Y x0 × X_x0 => act g_y.1 g_y.2) := by sorry
