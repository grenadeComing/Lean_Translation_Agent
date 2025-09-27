import Mathlib

/-! # Herstein Exercise 2.5.37

If G is a nonabelian group of order 6, then G ≃ S_3.
-/

theorem Herstein_exercise_2_5_37 (G : Type _) [Group G] [Fintype G]
  (hcard : Fintype.card G = 6)
  (nonabel : ¬∀ a b : G, a * b = b * a) :
  G ≃* Equiv.Perm (Fin 3) := by sorry
