import Mathlib

open Set

theorem compact_of_surjective_map_compact_image_coinduced {X Y : Type*} [TopologicalSpace X]
  (f : X → Y) (hf : Surjective f) (K : Set X) (hK : IsCompact K)
  (hcover : f '' K = (univ : Set Y)) :
  @IsCompact Y (TopologicalSpace.coinduced f) (univ : Set Y) := by sorry
