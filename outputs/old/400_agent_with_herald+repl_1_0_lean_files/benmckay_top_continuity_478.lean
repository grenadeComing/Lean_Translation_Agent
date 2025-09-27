import Mathlib

/-- Let f : X → Y be a surjective map. Suppose there exists a compact subset K ⊆ X with f(K) = Y.
Equip Y with the quotient (coinduced) topology induced by f. Prove that Y is compact.
This file states the lemma; the proof is omitted (:= by sorry) as requested. -/

theorem compact_quotient_of_compact_image {X Y : Type*} [TopologicalSpace X]
  (f : X → Y) (K : Set X) (hK : IsCompact K) (hKsurj : f '' K = (Set.univ : Set Y)) :
  @IsCompact Y (TopologicalSpace.coinduced f) (Set.univ : Set Y) := by sorry
