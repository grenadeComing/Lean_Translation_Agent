import Mathlib

open TopologicalSpace

theorem benmckay_top_fundamental_groups_359 {X : Type _} [TopologicalSpace X] {x : X}
  (path_connected : PathConnectedSpace X)
  (s : Set (Set X))
  (hb : TopologicalSpace.IsTopologicalBasis s)
  (hs_count : Countable s)
  (hs_simply : ∀ U ∈ s, SimplyConnectedSpace (Subtype U)) :
  Countable (FundamentalGroup X x) := by
  sorry
