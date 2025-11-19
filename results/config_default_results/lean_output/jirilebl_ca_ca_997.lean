import Mathlib

/-- If the 2×2 real matrix M represents the complex number a + i b via
    M = [[a, -b], [b, a]], then M (viewed as a complex matrix) has two
    eigenpairs: eigenvalue a + i b with eigenvector [1; -i], and
    eigenvalue a - i b with eigenvector [1; i]. -/
theorem matrix_repr_complex_eigenpairs (a b : ℝ) :
  let M : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
    match i, j with
    | 0, 0 => a
    | 0, 1 => -b
    | 1, 0 => b
    | 1, 1 => a
  let Mc := M.map (algebraMap ℝ ℂ)
  let v1 : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else -Complex.I
  let v2 : Fin 2 → ℂ := fun i => if i = 0 then (1 : ℂ) else Complex.I
  Mc.mulVec v1 = (a + b * Complex.I) • v1 ∧ Mc.mulVec v2 = (a - b * Complex.I) • v2 := by sorry
