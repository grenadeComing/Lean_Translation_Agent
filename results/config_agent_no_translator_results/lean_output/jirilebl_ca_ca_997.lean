import Mathlib

-- Matrix representing a + i b as a 2x2 real matrix, then viewed over ℂ
def M_complex (a b : ℝ) : Matrix (Fin 2) (Fin 2) ℂ :=
  ![![Complex.ofReal a, -(Complex.ofReal b)], ![Complex.ofReal b, Complex.ofReal a]]

def vec_plus : Fin 2 → ℂ := ![(1 : ℂ), - Complex.I]
def vec_minus : Fin 2 → ℂ := ![(1 : ℂ), Complex.I]

/-- Translation of the statement: the complexified matrix has eigenpairs for a ± i b with eigenvectors vec_plus and vec_minus -/
theorem two_eigenpairs_complex_repr (a b : ℝ) :
  ∃ v_plus : Fin 2 → ℂ, v_plus ≠ 0 ∧ (M_complex a b).mulVec v_plus = ((a : ℂ) + Complex.I * (b : ℂ)) • v_plus ∧
  ∃ v_minus : Fin 2 → ℂ, v_minus ≠ 0 ∧ (M_complex a b).mulVec v_minus = ((a : ℂ) - Complex.I * (b : ℂ)) • v_minus ∧
  v_plus = vec_plus ∧ v_minus = vec_minus := by
  sorry
