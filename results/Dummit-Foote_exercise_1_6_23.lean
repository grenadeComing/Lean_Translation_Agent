import Mathlib

/-- Let G be a finite group which possesses an automorphism σ such that σ(g)=g iff g=1.
    If σ^2 = id_G, then G is abelian. -/
theorem Dummit_Foote_exercise_1_6_23 {G : Type*} [Group G] [Fintype G] (σ : G ≃* G)
  (h_fixed : ∀ g : G, σ g = g ↔ g = 1)
  (h_inv2 : ∀ g : G, σ (σ g) = g) :
  ∀ a b : G, a * b = b * a := by sorry
