import Mathlib

/-!
# Compactness of closed interval

Proves that the closed interval [a, b] in ℝ is compact when a ≤ b.
-/

theorem is_compact_Icc_real {a b : ℝ} (h : a ≤ b) : IsCompact (Set.Icc a b) := by sorry
