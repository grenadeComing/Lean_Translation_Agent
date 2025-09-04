import Mathlib

/-- If Y has the coinduced (quotient) topology from f and there is a compact K ⊆ X with f '' K = univ,
then Y is compact. -/
theorem is_compact_univ_of_surjective_image_compact_in_coinduced
  {X Y : Type*} (tX : TopologicalSpace X) (tY : TopologicalSpace Y) (f : X → Y)
  (hf : Function.Surjective f) (K : Set X) (hK : @IsCompact X tX K)
  (hKf : f '' K = (Set.univ : Set Y)) (ht : tY = TopologicalSpace.coinduced f tX) :
  @IsCompact Y tY (Set.univ : Set Y) := by
  sorry
