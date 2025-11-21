import Mathlib

/-- Suppose f : X → Y is a surjective map from a topological space X,
and suppose there exists a compact subset K ⊆ X with f(K) = Y.
Prove that Y is compact in the quotient topology. -/
theorem quotient_map_compact_of_compact_image {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {f : X → Y} (hf : ∀ U : Set Y, IsOpen U ↔ IsOpen (f ⁻¹' U))
  (K : Set X) (hK : IsCompact K) (hKsurj : f '' K = (Set.univ : Set Y)) : IsCompact (Set.univ : Set Y) := by sorry
