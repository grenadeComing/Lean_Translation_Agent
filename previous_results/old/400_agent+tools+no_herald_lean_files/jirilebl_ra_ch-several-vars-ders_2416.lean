import Mathlib

open Set

lemma jirilebl_ra_ch_several_vars_ders_2416 (n : ℕ) (A : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ)) :
  ContinuousLinearMap.opNorm A =
    sSup ((fun x => ‖A x‖) '' {x : Fin n → ℝ | ‖x‖ = 1}) ∧
  ContinuousLinearMap.opNorm A =
    sSup ((fun x => ‖A x‖) '' {x : Fin n → ℝ | ‖x‖ ≤ 1}) ∧
  ContinuousLinearMap.opNorm A =
    sSup ((fun x => ‖A x‖) '' {x : Fin n → ℝ | ‖x‖ < 1}) := by sorry
