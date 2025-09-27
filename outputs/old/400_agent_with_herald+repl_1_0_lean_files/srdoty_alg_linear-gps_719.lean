import Mathlib

structure Mat2 where
  a : ℝ
  b : ℝ
  c : ℝ
  d : ℝ

def mat_mul (M N : Mat2) : Mat2 :=
  ⟨M.a * N.a + M.b * N.c,
   M.a * N.b + M.b * N.d,
   M.c * N.a + M.d * N.c,
   M.c * N.b + M.d * N.d⟩

def H0 : Mat2 := ⟨1, 0, 0, -1⟩

def R2theta (θ : ℝ) : Mat2 :=
  ⟨Real.cos (2 * θ), -Real.sin (2 * θ), Real.sin (2 * θ), Real.cos (2 * θ)⟩

theorem rotation_conjugation (θ : ℝ) : mat_mul (mat_mul (R2theta θ) H0) (R2theta θ) = H0 := by sorry
