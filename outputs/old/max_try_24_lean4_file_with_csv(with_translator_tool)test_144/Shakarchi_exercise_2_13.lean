import Mathlib

open Complex

theorem Shakarchi_exercise_2_13 (f : ℂ → ℂ)
  (h : ∀ z0 : ℂ, ∃ p : FormalMultilinearSeries ℂ ℂ ℂ, HasFPowerSeriesAt f p z0 ∧ ∃ n : ℕ, p.coeff n = 0) :
  ∃ P : Polynomial ℂ, ∀ z : ℂ, f z = P.eval z := by sorry
