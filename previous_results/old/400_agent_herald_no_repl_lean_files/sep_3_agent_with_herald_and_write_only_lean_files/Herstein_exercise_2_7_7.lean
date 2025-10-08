import Mathlib

/-- If φ : G →* G' is a surjective group homomorphism and N ⊲ G is a normal subgroup,
then the image N.map φ is a normal subgroup of G'. -/
theorem map_isNormal_of_surjective {G G' : Type _} [Group G] [Group G'] (φ : G →* G')
  (N : Subgroup G) (hφ : Function.Surjective (φ : G → G)) (hN : IsNormal N) :
  IsNormal (N.map φ) := by
  sorry
