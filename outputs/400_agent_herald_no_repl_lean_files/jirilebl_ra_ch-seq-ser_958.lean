import Mathlib

open Filter

/-!
Monotonicity of liminf and limsup for sequences, and a corollary when one sequence converges.
-/-

theorem liminf_mono_seq {α : Type*} [Preorder α] (x y : ℕ → α) (h : ∀ n, x n ≤ y n) :
  Filter.liminf x atTop ≤ Filter.liminf y atTop := by sorry

theorem limsup_mono_seq {α : Type*} [Preorder α] (x y : ℕ → α) (h : ∀ n, x n ≤ y n) :
  Filter.limsup x atTop ≤ Filter.limsup y atTop := by sorry

/-- If x_n → a and x_n ≤ y_n for all n, then a ≤ liminf y_n and a ≤ limsup y_n. -/
theorem convergent_seq_le_liminf_limsup {x y : ℕ → ℝ} {a : ℝ} (hconv : Tendsto x atTop (nhds a))
  (h : ∀ n, x n ≤ y n) :
  a ≤ Filter.liminf y atTop ∧ a ≤ Filter.limsup y atTop := by sorry
