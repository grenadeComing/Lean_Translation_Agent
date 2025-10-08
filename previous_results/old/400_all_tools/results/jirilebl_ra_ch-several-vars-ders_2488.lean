import Mathlib

/-
Let A : ℝ^n → ℝ^m be a linear operator. Prove that A is differentiable at every x ∈ ℝ^n
and that the derivative at x equals A (as a linear map).
-/

variable {n m : Nat}

-- We represent ℝ^n as Fin n → ℝ

theorem linear_map_is_differentiable_at (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  HasFDerivAt (fun y => (A : (Fin n → ℝ) → (Fin m → ℝ)) y) A x := by sorry

theorem fderiv_linear_map (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) (x : Fin n → ℝ) :
  fderiv ℝ (fun y => (A : (Fin n → ℝ) → (Fin m → ℝ)) y) x = A := by sorry
