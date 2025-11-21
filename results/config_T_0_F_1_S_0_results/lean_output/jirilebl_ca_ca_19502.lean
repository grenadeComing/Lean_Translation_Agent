import Mathlib

/-!
Translate: Let z ∈ ℂ with |z| < 1. Show that ∑_{n=1}^∞ |z|^n = |z| / (1 - |z|).
This file contains only the statement (no proof).
-/

/-- Real version: if 0 ≤ r < 1 then ∑_{n=1}^∞ r^n = r / (1 - r). -/
theorem sum_geometric_real (r : ℝ) (hr_nonneg : 0 ≤ r) (hr_lt : r < 1) :
  tsum (fun n : ℕ => r ^ (n + 1)) = r / (1 - r) := by sorry
