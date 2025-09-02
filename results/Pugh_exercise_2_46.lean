import Mathlib

/-- Assume that `A`, `B` are compact, disjoint, nonempty subsets of a metric space `M`.
    Prove that there exist `a0 ∈ A` and `b0 ∈ B` such that for all `a ∈ A` and `b ∈ B` we have
    `dist a0 b0 ≤ dist a b`. -/
theorem Pugh_exercise_2_46 (M : Type _) [MetricSpace M] (A B : Set M)
  (hA : IsCompact A) (hA' : A.Nonempty) (hB : IsCompact B) (hB' : B.Nonempty) (h : Disjoint A B) :
  ∃ a0 b0 : M, ∀ a ∈ A, ∀ b ∈ B, dist a0 b0 ≤ dist a b := by
  sorry
