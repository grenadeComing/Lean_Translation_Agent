import Mathlib

/--
Suppose f : X → Y is a surjective map from a topological space X, and suppose there exists a compact subset
K ⊆ X with f(K) = Y. Then Y is compact when endowed with the quotient (coinduced) topology from f.
-/

theorem quotient_compact_of_surjective_compact_image {X Y : Type _} (f : X → Y)
  (tX : TopologicalSpace X) (tY : TopologicalSpace Y) (ht : tY = TopologicalSpace.coinduced f tX)
  (hf : Function.Surjective f) (K : Set X) (hK : IsCompact K) (hKf : f '' K = (univ : Set Y)) : @CompactSpace Y tY := by
  sorry
