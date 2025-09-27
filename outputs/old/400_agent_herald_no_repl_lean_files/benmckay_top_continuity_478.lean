import Mathlib

open Set

/--
If f : X → Y is a quotient map and there exists a compact K ⊆ X with f(K) = Y,
then Y is compact (i.e., the whole space Y is compact).
-/
theorem compact_of_quotient_surjective_image {X Y : Type _} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf : QuotientMap f) (K : Set X) (hK : IsCompact K) (himage : f '' K = (univ : Set Y)) :
  IsCompact (univ : Set Y) := by sorry
