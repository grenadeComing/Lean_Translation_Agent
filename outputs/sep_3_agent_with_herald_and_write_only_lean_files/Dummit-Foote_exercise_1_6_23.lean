/-!
Dummit and Foote exercise 1.6.23
-/

import Mathlib

/-- Let G be a finite group which possesses an automorphism σ such that σ(g) = g iff g = 1.
    If σ^2 is the identity map from G to G, then G is abelian. -/
theorem Dummit_Foote_exercise_1_6_23 {G : Type _} [Group G] [Fintype G] (σ : G ≃* G)
  (hfix : ∀ g : G, σ g = g ↔ g = 1) (h2 : σ.trans σ = MulEquiv.refl G) :
  ∀ a b : G, a * b = b * a := by sorry
