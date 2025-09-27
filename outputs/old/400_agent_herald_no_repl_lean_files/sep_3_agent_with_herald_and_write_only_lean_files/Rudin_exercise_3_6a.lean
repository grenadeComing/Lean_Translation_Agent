import Mathlib

/-
  Rudin exercise 3.6(a): Let a_i = sqrt(i+1) - sqrt(i). Prove that the partial sums
  sum_{i<n} a_i diverge to +infty.

  We state the result in Lean: the sequence of partial sums tends to at_top in ℝ.
  (Proof omitted.)
-/

theorem Rudin_exercise_3_6a :
  Tendsto (fun n : ℕ => Finset.sum (Finset.range n) fun i => Real.sqrt ((i : ℝ) + 1) - Real.sqrt (i : ℝ))
    atTop (atTop : Filter ℝ) := by sorry
