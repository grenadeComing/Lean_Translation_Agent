import Mathlib

/-!
Exercise (Artin 2.3.2): Prove that the products `a b` and `b a` are conjugate elements in a group.
We state the result: in any group G and for any a b : G there exists g with
g * (a * b) * g⁻¹ = b * a.
-/

theorem Artin_exercise_2_3_2 {G : Type _} [Group G] (a b : G) :
  ∃ g : G, g * (a * b) * g⁻¹ = b * a := by sorry
