import Mathlib

variable {n m : Nat}

open ContinuousLinearMap

theorem jirilebl_ra_ch_several_vars_ders_2431 (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ∃ x : Fin n → ℝ,
    ‖x‖ = 1 ∧
    (‖A x‖ = A.opNorm) ∧
    (∀ y, ‖y‖ = 1 → ‖A y‖ ≤ ‖A x‖) ∧
    (∀ y, ‖y‖ ≤ 1 → ‖A y‖ ≤ A.opNorm) ∧
    (∀ ε : ℝ, 0 < ε → ∃ y, ‖y‖ < 1 ∧ ‖A y‖ > A.opNorm - ε) :=
by sorry
