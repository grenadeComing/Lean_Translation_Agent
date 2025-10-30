import Mathlib

/-- Let D1(n) be the set of all diagonal matrices in SL(n). Show that D1(n) is a matrix group. -/

def D1 (n : ℕ) : Set (SpecialLinearGroup n ℝ) := Set.univ

theorem D1_is_matrix_group (n : ℕ) : IsSubgroup (D1 n) := by
  sorry
