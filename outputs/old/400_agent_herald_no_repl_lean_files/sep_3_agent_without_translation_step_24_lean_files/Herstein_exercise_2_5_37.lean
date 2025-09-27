import Mathlib

/--
If G is a nonabelian group of order 6, then G is isomorphic to S_3.
This statement is provided without proof (``by sorry'').
-/
theorem Herstein_exercise_2_5_37 {G : Type _} [Group G] [Fintype G]
  (h_card : Fintype.card G = 6) (h_nonabel : ¬(∀ a b : G, a * b = b * a)) :
  Nonempty (MulEquiv G (Equiv.Perm (Fin 3))) := by
  sorry
