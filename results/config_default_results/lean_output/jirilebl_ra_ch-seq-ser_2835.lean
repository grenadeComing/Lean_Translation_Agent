import Mathlib

open Finset

theorem summable_grouping_of_summable_norm {α : Type*} [NormedAddCommGroup α]
  {a : ℕ → α} {c : ℕ → ℕ} (hc0 : c 0 = 0) (hc_mono : StrictMono c)
  (h : Summable fun n => ‖a n‖) :
  Summable (fun k => Finset.sum (Ico (c k) (c (k+1))) fun i => a i) ∧
  (∑' k : ℕ, Finset.sum (Ico (c k) (c (k+1))) fun i => a i) = ∑' n, a n := by sorry
