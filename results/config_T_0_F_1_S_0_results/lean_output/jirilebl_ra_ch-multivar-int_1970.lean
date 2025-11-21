import Mathlib

/-
Let U ⊆ ℝ^n open and f : U → ℝ continuous. Let G = { (x, f x) : x ∈ U } ⊆ ℝ^(n+1).
Then G has Lebesgue measure zero in ℝ^(n+1).
-/

theorem jirilebl_ra_ch_multivar_int_1970 {n : ℕ} {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → ℝ}
  (hU : IsOpen U) (hf : ContinuousOn f U) :
  MeasureTheory.volume ({ p : (Fin n → ℝ) × ℝ | p.1 ∈ U ∧ p.2 = f p.1 }) = 0 := by sorry
