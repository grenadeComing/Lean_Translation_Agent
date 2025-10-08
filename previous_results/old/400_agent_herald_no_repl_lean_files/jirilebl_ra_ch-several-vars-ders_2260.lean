import Mathlib

open Matrix

variable {R : Type*} [CommRing R]

/-- Let A be an m×m matrix over a commutative ring R and S the matrix with S_{i,j} = (-1)^{i+j}.
    Then A S Aᵀ is diagonal, i.e. its off-diagonal entries vanish. -/
theorem asa_transpose_diagonal {m : Nat} (A : Matrix (Fin m) (Fin m) R) :
  let S : Matrix (Fin m) (Fin m) R := fun i j => (-1 : R) ^ (i.val + j.val) in
  ∀ i j, i ≠ j → (A * S * Aᵀ) i j = 0 := by
  sorry

/-- If A is invertible (equivalently det A is a unit), and B is the matrix of cofactors
    (Matrix.cofactor A), then (Aᵀ)^{-1} = (1 / det A) • B. -/
theorem transpose_inv_eq_cofactor_div_det {m : Nat} (A : Matrix (Fin m) (Fin m) R)
  (h : IsUnit (det A)) :
  (Aᵀ)⁻¹ = (1 / (det A) : R) • Matrix.cofactor A := by
  sorry
