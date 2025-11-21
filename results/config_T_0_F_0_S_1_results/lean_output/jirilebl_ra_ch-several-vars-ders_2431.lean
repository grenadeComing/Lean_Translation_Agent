import Mathlib

variable {n m : ℕ}

variable [NormedAddCommGroup (Fin n → ℝ)] [NormedSpace ℝ (Fin n → ℝ)]
variable [NormedAddCommGroup (Fin m → ℝ)] [NormedSpace ℝ (Fin m → ℝ)]
variable [FiniteDimensional ℝ (Fin n → ℝ)] [FiniteDimensional ℝ (Fin m → ℝ)]

lemma operator_norm_on_fin_eq_sups (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ‖A‖ = Sup ({‖A x‖ | x : Fin n → ℝ, ‖x‖ = 1} : Set ℝ) ∧
  ‖A‖ = Sup ({‖A x‖ | x : Fin n → ℝ, ‖x‖ ≤ 1} : Set ℝ) ∧
  ‖A‖ = Sup ({‖A x‖ | x : Fin n → ℝ, ‖x‖ < 1} : Set ℝ) := by sorry
