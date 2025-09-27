import Mathlib

/-!
Exercise (Artin, 2.3.2): In a group G, for any elements a and b, the products a * b and b * a are conjugate.
We state the lemma below. The proof is omitted (ended with `by sorry`) per instructions.
-/

theorem Artin_exercise_2_3_2 {G : Type*} [Group G] (a b : G) : IsConj (a * b) (b * a) := by sorry
