import Mathlib

variable {n : ℕ}

/-- The linear map A : ℝ → (Fin n → ℝ) given by A x = x • a. -/
def linear_of_vec (a : Fin n → ℝ) : ℝ →ₗ[ℝ] (Fin n → ℝ) :=
  LinearMap.mk
    ((AddMonoidHom.mk (fun x : ℝ => x • a) (by intros x y; simp)) : ℝ →+ (Fin n → ℝ))
    (by intros m x; simp)

/-- The corresponding continuous linear map. -/
def A (a : Fin n → ℝ) : ℝ →L[ℝ] (Fin n → ℝ) :=
  ContinuousLinearMap.mk (linear_of_vec a) (by continuity)

/-- Operator norm of A equals the Euclidean norm of a. -/
theorem opNorm_of_smul_vec (a : Fin n → ℝ) : ‖A a‖ = ‖a‖ := by sorry
