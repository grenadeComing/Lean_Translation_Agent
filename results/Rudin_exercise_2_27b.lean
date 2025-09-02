import Mathlib

open Set Metric

/-- Rudin exercise 2.27(b): Suppose E ⊆ ℝ^k is uncountable, and let P be the set of
condensation points of E (every neighborhood of a condensation point meets E in an
uncountable set). Prove that at most countably many points of E are not in P. -/
theorem Rudin_exercise_2_27b {k : ℕ} (E : Set (Fin k → ℝ)) (hE : ¬ E.Countable) :
  let P := { x : Fin k → ℝ | ∀ r > 0, ¬ ((Metric.ball x r ∩ E).Countable) } in
  (E \ P).Countable := by sorry
