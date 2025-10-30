import Mathlib
open Matrix

/-- Let G ⊆ GL_n(ℝ) be a nonempty set closed under products and inverses (i.e., a matrix group). Prove that the identity element of GL_n(ℝ) belongs to G. -/
theorem one_mem_of_nonempty_of_isSubgroup_tac_1044 (G : Set (Matrix n n ℝ)) [Nonempty G] (hG : IsSubgroup G) : 1 ∈ G := by
  sorry