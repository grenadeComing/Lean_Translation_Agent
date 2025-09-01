import Mathlib

/-- If P is a p-Sylow subgroup of G and P is normal in G (i.e. closed under conjugation by elements of G),
    then P is the only p-Sylow subgroup of G. -/
theorem herstein_exercise_2_11_6 {G : Type*} [Group G] {p : ℕ}
  (P : Sylow p G)
  (hP_normal : ∀ g x, (x : G) ∈ (P : Subgroup G) → (g * x * g⁻¹ : G) ∈ (P : Subgroup G)) :
  ∀ (Q : Sylow p G), (Q : Subgroup G) = (P : Subgroup G) := by sorry
