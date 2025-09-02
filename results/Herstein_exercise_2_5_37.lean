import Mathlib

/-- Exercise: If G is a nonabelian group of order 6, then G is isomorphic to S₃. -/
theorem Herstein_exercise_2_5_37 {G : Type*} [Group G] [Fintype G]
  (hcard : Fintype.card G = 6) (hnonabel : ∃ a b : G, a * b ≠ b * a) :
  Nonempty (G ≃* Equiv.Perm (Fin 3)) := by sorry
