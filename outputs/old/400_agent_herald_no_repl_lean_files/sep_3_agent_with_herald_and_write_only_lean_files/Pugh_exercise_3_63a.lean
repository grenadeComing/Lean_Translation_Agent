import Mathlib

/-!
Exercise (Pugh 3.63a).
Show that the series ∑_{k≥2} 1 / (k (log k)^p) converges when p > 1.
We state the result for the sequence k ↦ 1 / ((k+2) * (log (k+2))^p) to avoid the singularities at k = 0,1.
-/

theorem pugh_exercise_3_63a (p : ℝ) (hp : 1 < p) :
  Summable (fun k : ℕ => 1 / ((k + 2 : ℝ) * (Real.log (k + 2 : ℝ)) ^ p)) := by sorry
