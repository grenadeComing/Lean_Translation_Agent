import Mathlib

theorem Dummit_Foote_exercise_3_1_22a {G : Type _} [Group G] {H K : Subgroup G}
  (hH : ∀ (g x : G), x ∈ H → g * x * g⁻¹ ∈ H)
  (hK : ∀ (g x : G), x ∈ K → g * x * g⁻¹ ∈ K) :
  ∀ (g x : G), x ∈ H ∧ x ∈ K → g * x * g⁻¹ ∈ H ∧ g * x * g⁻¹ ∈ K := by
  sorry
