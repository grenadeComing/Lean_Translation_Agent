import Mathlib

/-- The projection maps from a product space are open maps. -/
-- We state the lemmas; proofs are left as `by sorry` per instructions.

theorem prod_fst_is_open_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  IsOpenMap (Prod.fst : X × Y → X) := by sorry

theorem prod_snd_is_open_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  IsOpenMap (Prod.snd : X × Y → Y) := by sorry
