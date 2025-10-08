import Mathlib

open Matrix

variable {m : Nat}

/-- Sign matrix S with S_{i,j} = (-1)^{i+j} -/
def S {α : Type*} [Ring α] : Matrix (Fin m) (Fin m) α := fun i j => (-1 : α) ^ (i.val + j.val)

/-- Cofactor matrix B defined from the adjugate (transpose of adjugate). -/
def B {α : Type*} [CommRing α] (A : Matrix (Fin m) (Fin m) α) : Matrix (Fin m) (Fin m) α := A.adjugate.transpose

/-- Standard adjugate identity: A * A.adjugate = A.det • I. -/
theorem mul_adjugate_eq_det {α : Type*} [CommRing α] (A : Matrix (Fin m) (Fin m) α) :
  A * A.adjugate = A.det • (1 : Matrix (Fin m) (Fin m) α) := by sorry

/-- If A is invertible over a field (det ≠ 0), then (Aᵀ)^{-1} = det(A)^{-1} • B. -/
theorem transpose_inv_of_nonzero_det {α : Type*} [Field α] (A : Matrix (Fin m) (Fin m) α) (h : A.det ≠ 0) :
  (A.transpose)⁻¹ = (A.det)⁻¹ • (B A) := by sorry
