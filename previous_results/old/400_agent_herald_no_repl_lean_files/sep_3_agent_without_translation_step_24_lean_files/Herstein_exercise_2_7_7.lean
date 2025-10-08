import Mathlib
open Function

section

variable {G G' : Type*}
variable [Group G] [Group G']
variable (φ : G →* G')
variable (N : Subgroup G)

/-- If φ : G →* G' is surjective and N ⫲ G (expressed by the conjugation condition), then the image
    subgroup φ(N) = N.map φ is normal in G'. We state normality by the conjugation property in G'. -/
lemma Herstein_exercise_2_7_7
  (hφ : Surjective (φ : G → G'))
  (hN : ∀ g n, n ∈ N → g * n * g⁻¹ ∈ N) :
  ∀ g' m, m ∈ (N.map φ) → g' * m * g'⁻¹ ∈ N.map φ := by sorry

end
