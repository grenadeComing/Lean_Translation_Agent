import Mathlib

/-!
Exercise: Show that the series \sum_{k >= 2} 1/(k (log k)^p) converges when p > 1.
This file only states the result; the proof is omitted (``by sorry'').
-/

open Real

theorem pugh_exercise_3_63a (p : ℝ) (hp : 1 < p) :
  Summable (fun n : ℕ => if 2 ≤ n then (1 : ℝ) / ((n : ℝ) * Real.rpow (Real.log (n : ℝ)) p) else (0 : ℝ)) :=
by sorry
