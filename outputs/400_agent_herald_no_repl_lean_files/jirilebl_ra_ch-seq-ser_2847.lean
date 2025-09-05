import Mathlib

/-!
If the series ∑ a_n converges but the series ∑ |a_n| diverges, then the series is
conditionally convergent. We state a predicate `ConditionallyConvergent` and give the
corresponding implication.
-/

def ConditionallyConvergent (a : ℕ → ℝ) : Prop := Summable a ∧ ¬ Summable (fun n => |a n|)

theorem series_conditionally_convergent_of_convergent_not_absolutely {a : ℕ → ℝ}
  (h1 : Summable a) (h2 : ¬ Summable fun n => |a n|) :
  ConditionallyConvergent a := by sorry
