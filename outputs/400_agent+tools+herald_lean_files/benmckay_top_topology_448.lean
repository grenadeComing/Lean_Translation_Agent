import Mathlib

/-- Let X be a complete metric space. If S ⊆ X is closed and totally bounded, then S is compact. -/
theorem isCompact_of_completeSpace_isClosed_totallyBounded {X : Type*} [MetricSpace X] [CompleteSpace X]
  {S : Set X} (hS : IsClosed S) (hTB : TotallyBounded S) : IsCompact S := by sorry
