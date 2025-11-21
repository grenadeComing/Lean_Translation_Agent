import Mathlib

theorem rearrangement_of_abs_summable_series {E : Type _} [NormedAddCommGroup E] [CompleteSpace E]
  {a : ℕ → E} (h : Summable fun n => ‖a n‖) {f : ℕ → ℕ} (hf : Function.Bijective f) :
  Summable fun n => a (f n) ∧ (tsum fun n => a (f n) = tsum fun n => a n) := by sorry