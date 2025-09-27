import Mathlib

open Set

/-- A set p is perfect if it is closed and every point is a limit point of p. -/
def IsPerfect {α : Type _} [TopologicalSpace α] (p : Set α) : Prop :=
  IsClosed p ∧ ∀ x, x ∈ p → x ∈ closure (p \ {x})

/-- In a separable metric space, every closed set is the union of a (possibly empty) perfect set
and a set which is at most countable. -/
theorem Rudin_exercise_2_28 {α : Type _} [MetricSpace α] {s : Set α}
  (hsep : ∃ d : Set α, Countable d ∧ Dense d) (hs : IsClosed s) :
  ∃ (p c : Set α), s = p ∪ c ∧ IsPerfect (p : Set α) ∧ Countable c := by sorry
