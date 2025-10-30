import Mathlib

-- A lightweight formalization of the notion of conditional convergence for a real series.
-- We encode: ConditionallyConvergent a := Summable a ∧ ¬ Summable (fun n => abs (a n)).
-- The statement to translate: if a series ∑ a_n is conditionally convergent, then the terms a_n do not tend to zero
-- fast enough to ensure absolute convergence. In Lean we express this by showing that Summable (fun n => abs (a n)) does not hold.

def ConditionallyConvergent (a : ℕ → ℝ) : Prop :=
  Summable a ∧ ¬ Summable (fun n => abs (a n))

theorem condconv_implies_not_summable_abs {a : ℕ → ℝ} (h : ConditionallyConvergent a) : ¬ Summable (fun n => abs (a n)) := by
  -- This is a direct consequence of the definition of ConditionallyConvergent.
  sorry
