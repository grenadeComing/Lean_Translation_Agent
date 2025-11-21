import Mathlib
open Filter Finset NNReal Topology

/-- If \sum_{n=1}^\infty a_n converges and \sum_{n=1}^\infty |a_n| diverges, then the series is conditionally convergent. -/
def IsConditionallyConvergent (a : ℕ → ℝ) : Prop := Summable a ∧ ¬ Summable (fun n => |a n|)

theorem series_conditionally_convergent_of_not_absolutely {a : ℕ → ℝ} (h1 : Summable a) (h2 : ¬ Summable (fun n => |a n|)) : IsConditionallyConvergent a := by sorry
