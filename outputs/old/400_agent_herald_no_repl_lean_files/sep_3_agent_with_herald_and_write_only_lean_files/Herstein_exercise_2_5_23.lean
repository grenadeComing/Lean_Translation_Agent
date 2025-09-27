import Mathlib

/-- Let G be a group such that all subgroups of G are normal in G. If a, b ∈ G, then
    ba = a^j b for some integer j. -/
theorem Herstein_exercise_2_5_23 {G : Type*} [Group G] (h : ∀ H : Subgroup G, H.Normal) (a b : G) :
  ∃ j : Int, b * a = a ^ j * b := by sorry
