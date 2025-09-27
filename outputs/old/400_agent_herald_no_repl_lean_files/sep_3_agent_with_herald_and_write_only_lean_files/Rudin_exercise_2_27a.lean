import Mathlib

variable {k : ℕ}
variable {E : Set (Fin k → ℝ)}

/-- The set of condensation points of E: those x such that every neighborhood of x
    meets E in an uncountable set. -/
def condensation_set : Set (Fin k → ℝ) :=
  { x | ∀ ε, 0 < ε → Set.Uncountable (E ∩ Metric.ball x ε) }

/-- Rudin, Exercise 2.27(a): If E ⊆ ℝ^k is uncountable and P is the set of
    condensation points of E, then P is perfect.  -/
theorem Rudin_exercise_2_27a (hE : Set.Uncountable E) :
  IsClosed (condensation_set : Set (Fin k → ℝ)) ∧ ∀ x ∈ condensation_set, x ∈ closure (condensation_set \ {x}) := by sorry
