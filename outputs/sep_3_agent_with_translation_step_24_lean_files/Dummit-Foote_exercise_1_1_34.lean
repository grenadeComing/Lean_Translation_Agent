import Mathlib

/-!
Exercise: If x is an element of infinite order in G, prove that the elements x^n, n ∈ ℤ are all distinct.
This file contains only the statement (proof omitted).
-/

theorem Dummit_Foote_exercise_1_1_34 {G : Type*} [Group G] {x : G} (h : orderOf x = 0) :
  ∀ {m n : Int}, m ≠ n → x ^ m ≠ x ^ n := by
  sorry
