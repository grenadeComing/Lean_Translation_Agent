import Mathlib

/-- A sequence is conditionally convergent if it is summable but not absolutely summable. -/
def ConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable fun n => |a n|

/-- If a series converges but the series of absolute values diverges, then it is conditionally convergent. -/
theorem convergent_not_absolutely_convergent_conditional {a : ℕ → ℝ} :
  Summable a → ¬ Summable (fun n => |a n|) → ConditionallyConvergent a := by
  intro h1 h2
  exact And.intro h1 h2
