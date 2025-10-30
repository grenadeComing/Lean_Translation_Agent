import Mathlib

section
variable {F : Type*} [Field F]
variable (n : Type*) [Fintype n]
variable (G : Subgroup (GL n F))

/-- Let F be a field, let G be a subgroup of GL_n(F), and define H = { A ∈ G : det A = ±1 }. Prove that H is a subgroup of G. -/
theorem det_eq_one_or_neg_one_subgroup_is_subgroup : IsSubgroup { A : G | ((A : GL n F).det = 1) ∨ ((A : GL n F).det = -1) } := by
  sorry

end
