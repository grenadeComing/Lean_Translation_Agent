import Mathlib

/-- For every covering space p : X → Y of a path connected and locally simply connected topological space Y,
    the fundamental group π1(Y,y0) acts on the fibre X_{y0} := p^{-1}(y0) by [x][y] = [x * y], and this action is continuous.

    This is a translated statement: we do not construct the fundamental group or the covering map here,
    but assert the existence of an action with the usual properties. -/

theorem fundamental_group_acts_on_fiber
  {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (p : X → Y) (h_covering : Prop) (h_path_conn : Prop) (h_loc_simply_conn : Prop) (y0 : Y) :
  ∃ (π1 : Type*) (grp : Group π1) (π1_top : TopologicalSpace π1)
    (act : π1 → {x : X // p x = y0} → {x : X // p x = y0}),
    (∀ g h x, act (g * h) x = act g (act h x)) ∧
    (∀ x, act (1 : π1) x = x) ∧
    Continuous (fun z : π1 × {x : X // p x = y0} => act z.1 z.2) := by sorry
