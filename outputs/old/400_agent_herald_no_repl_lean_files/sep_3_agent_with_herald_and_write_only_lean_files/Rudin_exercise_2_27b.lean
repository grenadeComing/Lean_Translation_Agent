import Mathlib

open Set Filter

variable {k : ℕ}

/-- A point x is a condensation point of E if every neighborhood of x meets E in an uncountable set. -/
def isCondensationPoint (E : Set (Fin k → ℝ)) (x : Fin k → ℝ) : Prop :=
  ∀ U, U ∈ nhds x → ¬ (E ∩ U).Countable

/-- Rudin, exercise 2.27(b): Suppose E ⊆ ℝ^k is uncountable, and let P be the set of condensation
points of E. Prove that at most countably many points of E are not in P. -/
theorem Rudin_exercise_2_27b (E : Set (Fin k → ℝ)) (hE : ¬ E.Countable) :
  (E \ {x | isCondensationPoint E x}).Countable := by
  sorry
