import Mathlib

/-!
Exercise 2.27(a), Ireland–Rosen.
Show that \sum'_{n squarefree} 1 / n diverges.
This file states the theorem (no proof).
-/

/-- A natural number n is squarefree if no integer d ≥ 2 has d^2 dividing n. -/
def squarefree (n : ℕ) : Prop := ¬ ∃ d : ℕ, 2 ≤ d ∧ d * d ∣ n

/-- The series of reciprocals of squarefree positive integers is not summable (diverges). -/
theorem sum_over_squarefree_not_summable :
  ¬ Summable (fun n : ℕ => if n ≠ 0 ∧ squarefree n then (1 : ℝ) / (n : ℝ) else 0) := by sorry
