import Mathlib

/-- The closed interval [a, b] in ℝ is compact for any a ≤ b. -/
theorem is_compact_Icc_real {a b : ℝ} (h : a ≤ b) : IsCompact (Set.Icc a b) := by sorry
