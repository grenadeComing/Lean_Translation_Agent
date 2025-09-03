import Mathlib

/-!
If x is an element of infinite order in G, prove that the elements x^n, n ∈ ℤ are all distinct.
We express infinite order by `orderOf x = 0` (mathlib4 convention).
-/

theorem Dummit_Foote_exercise_1_1_34 {G : Type*} [Group G] {x : G} (h : orderOf x = 0) :
  ∀ m n : Int, (x ^ m : G) = x ^ n → m = n := by sorry
