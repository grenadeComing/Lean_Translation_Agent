import Mathlib

/-- If φ : G →* G' is a surjective group homomorphism and N ⊲ G, then φ(N) ⊲ G'. -/
theorem Herstein_exercise_2_7_7 {G : Type _} {G' : Type _} [Group G] [Group G']
  (φ : G →* G') (hφ : Function.Surjective φ) (N : Subgroup G)
  (hN : ∀ g n, n ∈ N → g * n * g⁻¹ ∈ N) :
  ∀ g' : G', ∀ n' : G', n' ∈ Subgroup.map φ N → g' * n' * g'⁻¹ ∈ Subgroup.map φ N := by sorry
