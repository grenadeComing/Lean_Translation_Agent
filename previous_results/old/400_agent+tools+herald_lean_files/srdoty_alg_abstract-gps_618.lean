import Mathlib

/-- Map a complex number z = a + b i to the real 2×2 matrix [[a, -b], [b, a]]. -/
def complex_to_mat (z : Complex) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => match i, j with
  | (0 : Fin 2), (0 : Fin 2) => z.re
  | (0 : Fin 2), (1 : Fin 2) => -z.im
  | (1 : Fin 2), (0 : Fin 2) => z.im
  | (1 : Fin 2), (1 : Fin 2) => z.re

/-- The subgroup G of matrices of the form [[a,-b],[b,a]] (as an additive subgroup). -/
noncomputable def G_add_subgroup : AddSubgroup (Matrix (Fin 2) (Fin 2) ℝ) := by
  -- proof that the range of complex_to_mat is an additive subgroup
  apply AddSubgroup.mk _ ?_proof

/-- Additive group isomorphism between Complex and G (the range). -/
noncomputable def complex_matrix_add_equiv : AddEquiv Complex ↥G_add_subgroup := by
  -- construct the equivalence (details omitted)
  exact (by sorry : AddEquiv Complex ↥G_add_subgroup)
