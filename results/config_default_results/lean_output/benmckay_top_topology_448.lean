import Mathlib

/-- Let X be a metric space. Prove that if S ⊂ X is closed and bounded, then S is compact. -/
theorem compact_of_closed_bounded {X : Type*} [MetricSpace X] {S : Set X}
  (hclosed : IsClosed S)
  (hbounded : ∃ (x0 : X) (R : ℝ), ∀ x ∈ S, dist x x0 ≤ R) :
  IsCompact S := by sorry
