import Mathlib

open Set Metric

/-!
# Rudin exercise 2.28

Statement: In a separable metric space, every closed set is the union of a (possibly empty) perfect set
and a set which is at most countable.
We formalize separability by assuming the existence of a countable dense subset `q`.
-/

variable {α : Type _} [MetricSpace α] [TopologicalSpace α]

/-- We express `perfect` for metric spaces as closed with no isolated points: every ball around a
point of the set contains a different point of the set. -/
def IsPerfect (s : Set α) : Prop := IsClosed s ∧ ∀ x ∈ s, ∀ r : ℝ, 0 < r → ∃ y ∈ s, y ≠ x ∧ dist x y < r

theorem Rudin_exercise_2_28 (s q : Set α) (hq : q.Countable) (hd : Dense q) (hs : IsClosed s) :
  ∃ t u : Set α, s = t ∪ u ∧ IsPerfect t ∧ Set.Countable u := by sorry
