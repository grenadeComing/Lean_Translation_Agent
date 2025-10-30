import Mathlib

open Set

theorem bounded_convex_set_jordan_measurable {n : ℕ} (s : Set (ℝ^n)) (hs : s.IsBounded) (hc : Convex ℝ s) : JordanMeasurable s := by sorry
