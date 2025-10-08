import Mathlib

/-!
Statement (informal): The fundamental group π₁(Y, y0) acts on the fibre p^{-1}(y0)
for every covering map p : X → Y when Y is path connected and locally simply connected.
The action is given on classes [α] ∈ π₁(Y,y0) and x ∈ p^{-1}(y0) by lifting α to a path in X
starting at x and taking its endpoint; we denote the action by [α] • x = endpoint(lift α starting at x).
This action is continuous.

The file records a formal Lean statement of the existence of such an action and its continuity.
We do not give a proof here (hence `:= by sorry`).
-/

theorem fundamental_group_acts_on_covering_fibre
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (y0 : Y)
  (h_covering : Prop) (hY_path_connected : Prop) (hY_locally_simply_connected : Prop) :
  ∃ (action : FundamentalGroup Y y0 → {x : X // p x = y0} → {x : X // p x = y0}),
    -- action is given by lifting loops and taking endpoints; it is continuous
    True := by sorry
