import Mathlib

/-!
Exercise: Let G be a finite group which possesses an automorphism σ such that σ(g)=g iff g=1.
If σ^2 = id_G, prove that G is abelian.
-/

theorem Dummit_Foote_exercise_1_6_23 {G : Type _} [Group G] [Fintype G] (σ : G ≃* G)
  (h2 : σ.trans σ = MulEquiv.refl G) (hfix : ∀ g : G, σ g = g ↔ g = 1) :
  ∀ a b : G, a * b = b * a := by sorry
