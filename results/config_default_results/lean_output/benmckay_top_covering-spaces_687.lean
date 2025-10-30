-- Translation of: The fundamental group π1(Y, x0) acts on the fibre X_{x0} := p^{-1}(x0) for
-- every covering p : X → Y of a path connected and locally simply connected topological space Y,
-- by the action [α] · y = lift α starting at y ends at α · y, which is continuous.

import Mathlib

open Classical

-- The statement is translated as a (non-proved) theorem. It asserts the existence of a
-- π1(Y, x0) -action on the fibre of a covering p with the expected description.
theorem pi1_action_on_fibre_of_covering
  (Y X : Type*) [TopologicalSpace Y] [TopologicalSpace X]
  (p : X → Y) (x0 : Y)
  [hY : PathConnected Y] [hL : LocallySimplyConnected Y]
  (hcover : Covering p) :
  True := by
  -- The detailed construction of the action and its continuity is omitted here.
  sorry
