import Mathlib

open Function

theorem linear_map_fderiv_of_linear {m n : Nat} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  DifferentiableAt ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x ∧ fderiv ℝ (A : (Fin n → ℝ) → (Fin m → ℝ)) x = A :=
by sorry
