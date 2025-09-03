import Mathlib

/-- Let G be a group such that all subgroups of G are normal in G. If a, b ∈ G, prove that ba = a^j b for some j. -/
theorem Herstein_exercise_2_5_23 (G : Type*) [Group G]
  (hnormal : ∀ H : Subgroup G, ∀ g : G, Set.image (fun h => g * h * g⁻¹) (H : Set G) = (H : Set G))
  (a b : G) : ∃ j : Int, b * a = a ^ j * b := by sorry
