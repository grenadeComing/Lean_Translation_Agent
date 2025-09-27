import Mathlib

/-- A map between subtypes of metric spaces is continuous (in the topological sense)
    iff it satisfies the usual ε-δ condition on the subtypes. -/
theorem continuous_subtype_iff_metric {α : Type*} {β : Type*} [MetricSpace α] [MetricSpace β]
  {s : Set α} {t : Set β} (f : s → t) :
  Continuous f ↔
    ∀ x : s, ∀ ε > (0 : ℝ), ∃ δ > (0 : ℝ), ∀ y : s, dist (y : α) (x : α) < δ → dist (f y : β) (f x : β) < ε := by
  sorry
