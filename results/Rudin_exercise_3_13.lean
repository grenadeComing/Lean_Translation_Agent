import Mathlib

variable {𝕜 : Type*} [NormedField 𝕜]

/-- Rudin exercise 3.13: the Cauchy product of two absolutely convergent series converges absolutely. -/
theorem Rudin_exercise_3_13 {a b : ℕ → 𝕜} (ha : Summable (fun n => ‖a n‖)) (hb : Summable (fun n => ‖b n‖)) :
  Summable (fun k => ‖(Finset.range (k+1)).sum fun i => a i * b (k - i)‖) := by sorry
