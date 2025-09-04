import Mathlib

open Matrix

/-- Matrices of the form [[a, -b], [b, a]] -/
def rot_matrix (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    if i = 0 then
      if j = 0 then a else -b
    else
      if j = 0 then b else a

/-- The set G of such matrices. -/
def G : Set (Matrix (Fin 2) (Fin 2) ℝ) :=
  { A | ∃ a b, A = rot_matrix a b }

/-- G is an additive subgroup of the 2x2 real matrices. -/
noncomputable def G_addsub : AddSubgroup (Matrix (Fin 2) (Fin 2) ℝ) := by
  sorry

/-- There is an additive group isomorphism between (ℂ, +) and G (as a subtype). -/
noncomputable def complex_add_equiv_G : AddEquiv Complex (Matrix (Fin 2) (Fin 2) ℝ) := by
  sorry
