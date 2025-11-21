import Mathlib

open Complex

/-- The real 2×2 matrix representing the ℝ-linear map z ↦ ξ*z + ζ*conj z
    with respect to the real basis (1, I).  We encode the matrix by its entries
    (row and column indexed by `Fin 2` with `0` ↦ `1`, `1` ↦ `i`). -/
def M_of (ξ ζ : ℂ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun (i j : Fin 2) =>
    match i.val, j.val with
    | 0, 0 => (ξ.re + ζ.re)
    | 0, 1 => - (ξ.im - ζ.im)
    | 1, 0 => (ξ.im + ζ.im)
    | 1, 1 => (ξ.re - ζ.re)
    | _, _ => 0

/-- For the ℝ-linear map f(z) = ξ z + ζ conj(z) its real 2×2 determinant equals
    |ξ|^2 - |ζ|^2. -/
theorem det_M_of (ξ ζ : ℂ) : Matrix.det (M_of ξ ζ) = (Complex.abs ξ) ^ 2 - (Complex.abs ζ) ^ 2 := by sorry
