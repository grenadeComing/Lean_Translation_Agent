import Mathlib

/-!
Suppose ∑ a_n converges absolutely. Show that for any rearrangement of the series,
the sum remains the same.
-/

open Function

theorem tsum_of_abs_summable_rearrangement {a : ℕ → ℝ} (h : Summable fun n => |a n|) (e : ℕ ≃ ℕ) :
  tsum (fun n => a (e n)) = tsum a := by sorry
