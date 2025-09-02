import Mathlib

/-
Exercise (Pugh 2.46) translated to Lean4/Mathlib4.
Assume A, B are compact, disjoint, nonempty subsets of a metric space M.
There exist a0 ∈ A and b0 ∈ B minimizing the distance between A and B.
-/

theorem Pugh_exercise_2_46 {M : Type _} [MetricSpace M] {A B : Set M}
  (hA : IsCompact A) (hB : IsCompact B) (hneA : A.Nonempty) (hneB : B.Nonempty) (hdis : Disjoint A B) :
  ∃ a0 b0, a0 ∈ A ∧ b0 ∈ B ∧ ∀ a ∈ A, ∀ b ∈ B, dist a0 b0 ≤ dist a b := by
  sorry
