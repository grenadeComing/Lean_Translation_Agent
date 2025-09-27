import Mathlib

/-!
Suppose ∑ a_n is conditionally convergent. Show that the terms a_n do not tend to zero “fast enough” to ensure absolute convergence.

We formalize this as: if ∑ a_n converges but ∑ |a_n| diverges, then there is no nonnegative summable majorant b_n such that |a_n| ≤ b_n eventually.
-/

theorem conditional_not_dominated_by_summable {a : ℕ → ℝ}
  (h_conv : Summable a) (h_not_abs : ¬ Summable fun n => |a n|) :
  ∀ (b : ℕ → ℝ), Summable b → (∀ n, 0 ≤ b n) → ¬ (∃ N, ∀ n, n ≥ N → |a n| ≤ b n) := by
  intro b hb_nonneg hb_summ
  intro H
  -- If such a summable nonnegative b eventually dominates |a|, then by comparison ∑ |a_n| would be summable.
  rcases H with ⟨N, hN⟩
  have : Summable (fun n => if n < N then |a n| else |a n|) := by
    -- trivial reindexing; placeholder
    sorry
  -- From eventual domination |a_n| ≤ b_n for n ≥ N and nonnegativity of b, we get Summable |a_n|, contradicting h_not_abs.
  sorry
