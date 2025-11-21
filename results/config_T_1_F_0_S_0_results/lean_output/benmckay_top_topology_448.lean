import Mathlib

/-- Let X be a metric space. Prove that if S ⊂ X is closed and bounded, then S is compact. -/
theorem is_compact_of_is_closed_is_bounded {X : Type*} [MetricSpace X] {s : Set X}
  (hs : IsClosed s) (hb : IsBounded s) : IsCompact s := by sorry