import Mathlib

open Real

/-- Exercise: show the series Sum_{k=2}^\infty 1/(k (log k)^p) diverges for p ≤ 1. -/
theorem Pugh_exercise_3_63b (p : ℝ) (hp : p ≤ 1) :
  ¬ Summable (fun n => if n ≥ 2 then 1 / ((n:ℝ) * Real.rpow (Real.log (n:ℝ)) p) else 0) := by sorry
