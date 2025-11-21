import Mathlib

/-!
Prove that [a,b] ⊂ ℝ is compact for any a ≤ b.
This file only contains the statement (no proof):
-/

theorem is_compact_Icc_real {a b : ℝ} (h : a ≤ b) : IsCompact (Set.Icc a b) := by sorry
