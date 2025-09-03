import Mathlib

/-- Rudin exercise 3.5: For real sequences a_n, b_n one has
    limsup_{n→∞} (a_n + b_n) ≤ limsup_{n→∞} a_n + limsup_{n→∞} b_n,
    provided the sum on the right is not of the form ∞ - ∞.

This file gives a direct Lean formulation of the statement; the proof is omitted. -/

theorem limsup_add_le {a b : ℕ → ℝ} :
  Filter.limsup (fun n => a n + b n) ≤ (Filter.limsup a + Filter.limsup b) := by sorry
