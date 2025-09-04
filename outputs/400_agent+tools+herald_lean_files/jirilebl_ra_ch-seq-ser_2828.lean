import Mathlib

theorem tsum_eq_tsum_of_rearrangement {a : ℕ → ℝ} {σ : ℕ → ℕ} (hb : Function.Bijective σ)
  (h : Summable (fun n => |a n|)) : (∑' n, a n) = (∑' n, a (σ n)) := by sorry
