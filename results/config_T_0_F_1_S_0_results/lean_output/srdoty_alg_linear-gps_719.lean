import Mathlib

open Matrix

noncomputable def R (theta : Real) : Matrix (Fin 2) (Fin 2) Real := fun i j =>
  match i, j with
  | 0, 0 => Real.cos (2 * theta)
  | 0, 1 => -Real.sin (2 * theta)
  | 1, 0 => Real.sin (2 * theta)
  | 1, 1 => Real.cos (2 * theta)

def H0 : Matrix (Fin 2) (Fin 2) Real := fun i j =>
  match i, j with
  | 0, 0 => (1 : Real)
  | 0, 1 => 0
  | 1, 0 => 0
  | 1, 1 => (-1 : Real)

/-- explicit 2x2 matrix multiplication to avoid depending on Mathlib notation -/
def mul2 (A B : Matrix (Fin 2) (Fin 2) Real) : Matrix (Fin 2) (Fin 2) Real := fun i j =>
  A i 0 * B 0 j + A i 1 * B 1 j

theorem R_mul_H0_mul_R_eq_H0 (theta : Real) : mul2 (mul2 (R theta) H0) (R theta) = H0 := by sorry
