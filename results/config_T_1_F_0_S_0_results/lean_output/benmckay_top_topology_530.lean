import Mathlib

/-- In a Hausdorff (T2) space, every compact set is closed. -/
namespace IsCompact

theorem is_closed {X : Type*} [TopologicalSpace X] [T2Space X] {K : Set X} (hK : IsCompact K) : IsClosed K := by sorry

end IsCompact
