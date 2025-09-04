import Mathlib

open Matrix

variable {R : Type*} [CommRing R]

/-- Let A be an m-by-m matrix over a commutative ring R. Let S be the matrix with
    S_{k,l} = (-1)^{k+l}. Then for i ≠ j the (i,j)-entry of A * S * Aᵀ is 0, i.e. the product is diagonal. -/
theorem ASA_transpose_diagonal {m : ℕ} (A : Matrix (Fin m) (Fin m) R) :
  let S : Matrix (Fin m) (Fin m) R := fun (k l : Fin m) => (-1 : R) ^ (k.toNat + l.toNat) in
  ∀ i j, i ≠ j → (A * S * Aᵀ) i j = 0 := by
  sorry

/-- If det A is a unit (so A is invertible), then the transpose inverse of A equals
    (1 / det A) times the matrix of cofactors (the adjugate). -/
theorem transpose_inverse_via_cofactor {m : ℕ} (A : Matrix (Fin m) (Fin m) R)
  (h : IsUnit (A.det : R)) :
  Aᵀ * ((↑(h.unit⁻¹) : R) • (A.adjugate)ᵀ) = 1 ∧ ((↑(h.unit⁻¹) : R) • (A.adjugate)ᵀ) * Aᵀ = 1 := by
  sorry
