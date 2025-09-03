import Mathlib

/-!
Exercise (Herstein 2.2.5).
Let G be a group in which (a b)^3 = a^3 b^3 and (a b)^5 = a^5 b^5 for all a, b in G. Show that G is abelian.
-/

theorem Herstein_exercise_2_2_5 {G : Type _} [Group G]
  (h3 : ∀ a b : G, (a * b) ^ 3 = a ^ 3 * b ^ 3)
  (h5 : ∀ a b : G, (a * b) ^ 5 = a ^ 5 * b ^ 5) : ∀ a b : G, a * b = b * a :=
by sorry
