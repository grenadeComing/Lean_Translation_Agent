import Mathlib

variables {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y)

/-- Let f : X → Y be a surjective map. Suppose there exists a compact subset K ⊂ X with f(K)=Y.
    Equip Y with the quotient topology induced by f. Then Y is compact. -/
theorem isCompact_of_surjective_map_quotient (hf : Surjective f) (K : Set X) (hK : IsCompact K)
  (hKcov : f '' K = (univ : Set Y)) (htop : TopologicalSpace Y = TopologicalSpace.coinduced f) :
  IsCompact (univ : Set Y) := by sorry