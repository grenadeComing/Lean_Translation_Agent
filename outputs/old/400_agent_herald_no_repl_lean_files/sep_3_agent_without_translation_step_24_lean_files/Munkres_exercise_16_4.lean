import Mathlib

open Set

/-- A map f : X → Y is said to be an open map if for every open set U of X, f " U is open in Y. -/
def is_open_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) : Prop :=
  ∀ U : Set X, IsOpen U → IsOpen (f '' U)

/-- The first projection π1 : X × Y → X is an open map. -/
theorem prod_fst_is_open_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  is_open_map (Prod.fst : X × Y → X) := by sorry

/-- The second projection π2 : X × Y → Y is an open map. -/
theorem prod_snd_is_open_map {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y] :
  is_open_map (Prod.snd : X × Y → Y) := by sorry
