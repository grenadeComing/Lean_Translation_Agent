import Mathlib

/--
Rudin exercise 3.13: The Cauchy product of two absolutely convergent series converges absolutely.
We state the result for a normed field, using the usual norm ‖·‖.
-/
theorem Rudin_exercise_3_13 {α : Type*} [NormedField α] {a b : ℕ → α}
  (ha : Summable (fun n => ‖a n‖)) (hb : Summable (fun n => ‖b n‖)) :
  Summable (fun n => ‖(Finset.sum (Finset.range (n + 1)) fun k => a k * b (n - k))‖) := by sorry
