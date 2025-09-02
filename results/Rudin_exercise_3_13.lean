import Mathlib

open Finset

def rudin_cauchy_product (a b : ℕ → ℝ) (n : ℕ) : ℝ :=
  Finset.sum (Finset.range (n + 1)) (fun k => a k * b (n - k))

theorem rudin_exercise_3_13 (a b : ℕ → ℝ)
  (ha : Summable (fun n => abs (a n))) (hb : Summable (fun n => abs (b n))) :
  Summable (fun n => abs (rudin_cauchy_product a b n)) := by
  sorry
