import Mathlib

variable {α : Type _} [NormedAddCommGroup α]

/--
Suppose ∑ a_n converges absolutely. Any series obtained by grouping terms also converges
and has the same sum. We formalize this for a strictly increasing sequence n : ℕ → ℕ with n 0 = 0,
and grouped terms b_k := ∑_{i = n k}^{n (k+1)-1} a_i (using Finset.Ico).
-/
theorem summable_grouping (a : ℕ → α) (n : ℕ → ℕ)
  (hmono : StrictMono n) (h0 : n 0 = 0)
  (habs : Summable fun m => ‖a m‖) :
  Summable (fun k => Finset.sum (Finset.Ico (n k) (n (k+1))) fun i => a i) ∧
  (tsum fun k => Finset.sum (Finset.Ico (n k) (n (k+1))) fun i => a i) = tsum a := by
  sorry
