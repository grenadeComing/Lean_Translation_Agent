import Mathlib

/--
Exercise: show that the series \sum_{k=2}^\infty 1/(k (log k)^p) converges for p > 1.
We state the result for a sequence on ℕ which is zero at k = 0,1 and equals
1 / (k * (log k)^p) for k >= 2.
-/

theorem Pugh_exercise_3_63a (p : ℝ) (hp : 1 < p) :
  Summable (fun k : ℕ => if 2 ≤ k then 1 / ((k : ℝ) * (Real.log (k : ℝ)) ^ p) else 0) := by
  sorry
