import Mathlib

variables {F : Type*} [Field F] {n : Type*} [DecidableEq n] [Fintype n]

open Matrix

/-- Let G be a subgroup of GL_n(F). Define H = { A ∈ G | det A = ±1 }.
    We state that there exists a subgroup H of GL_n(F) whose elements are exactly
    those elements of G with determinant ±1. The proof is omitted. -/
theorem H_is_subgroup (G : Subgroup ((Matrix n n F)ˣ)) :
  ∃ H : Subgroup ((Matrix n n F)ˣ),
    ∀ A : (Matrix n n F)ˣ,
      A ∈ H ↔ A ∈ G ∧ (det (A : Matrix n n F) = 1 ∨ det (A : Matrix n n F) = -1) := by
  sorry
