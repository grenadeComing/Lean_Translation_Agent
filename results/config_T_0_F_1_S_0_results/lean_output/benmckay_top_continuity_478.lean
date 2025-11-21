import Mathlib

open Set

theorem benmckay_top_continuity_478
  {X Y : Type*} (tX : TopologicalSpace X) (f : X → Y) (tY : TopologicalSpace Y)
  (ht : tY = TopologicalSpace.coinduced f tX)
  {K : Set X} (hK : @IsCompact X tX K) (hKimage : f '' K = (univ : Set Y)) :
  @IsCompact Y tY (univ : Set Y) := by sorry
