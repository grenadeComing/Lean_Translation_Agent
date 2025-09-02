import Mathlib

variable {G : Type _} [Group G]

/-- If x has infinite order, then its integer powers are all distinct. -/
theorem Dummit_Foote_exercise_1_1_34 (x : G) (h : ∀ n : Int, n ≠ 0 → x ^ n ≠ (1 : G)) :
  ∀ m n : Int, m ≠ n → x ^ m ≠ x ^ n := by sorry
