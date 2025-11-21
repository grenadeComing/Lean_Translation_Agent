import Mathlib

variable {X : Type _} [MetricSpace X]

/-- A simple predicate expressing that a set is bounded in the metric sense. -/
def bounded_set (s : Set X) : Prop :=
  ∃ (R : ℝ), 0 < R ∧ ∀ x y, x ∈ s → y ∈ s → dist x y ≤ R

/-- Statement: In a metric space, every closed and bounded set is compact. -/
theorem closed_bounded_compact (S : Set X) (hS : IsClosed S) (hb : bounded_set S) : IsCompact S := by sorry
