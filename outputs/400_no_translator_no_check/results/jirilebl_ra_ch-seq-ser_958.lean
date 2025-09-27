import Mathlib

/-!
Suppose {x_n} converges and x_n ≤ y_n for all n. Show that liminf x_n ≤ liminf y_n
and limsup x_n ≤ limsup y_n.

We state the monotonicity of liminf/limsup for real sequences.
-/

open Filter

theorem liminf_le_liminf_of_seq_le {x y : ℕ → ℝ} (h : ∀ n, x n ≤ y n) :
  Filter.liminf x atTop ≤ Filter.liminf y atTop := by sorry

theorem limsup_le_limsup_of_seq_le {x y : ℕ → ℝ} (h : ∀ n, x n ≤ y n) :
  Filter.limsup x atTop ≤ Filter.limsup y atTop := by sorry
