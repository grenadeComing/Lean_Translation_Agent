import Mathlib

open Equiv

theorem absolutely_summable_series_rearrangement {E : Type*} [NormedAddCommGroup E] [CompleteSpace E]
  {a : ℕ → E} (h_abs : Summable fun n => ‖a n‖) (σ : ℕ ≃ ℕ) :
  tsum (fun n => a (σ n)) = tsum a := by sorry
