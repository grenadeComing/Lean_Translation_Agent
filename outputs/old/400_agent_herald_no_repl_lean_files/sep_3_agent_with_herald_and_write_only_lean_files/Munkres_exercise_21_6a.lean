import Mathlib

/--
Exercise: Define f_n(x) = x^n on [0,1]. Show (f_n(x)) converges for each x in [0,1].
We state the existence of a limit for each x ∈ [0,1].
-/
theorem Munkres_exercise_21_6a (x : ℝ) (hx : 0 ≤ x) (hx' : x ≤ 1) :
  ∃ L : ℝ, Tendsto (fun n : ℕ => x ^ n) atTop (nhds L) := by
  sorry
