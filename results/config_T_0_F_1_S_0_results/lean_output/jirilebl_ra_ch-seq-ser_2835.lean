import Mathlib

open BigOperators

/-!
Suppose \sum_{n=1}^\infty a_n converges absolutely. Show that any series obtained by
grouping terms also converges and has the same sum.

We formalize grouping by an increasing sequence `s : ℕ → ℕ` with `s 0 = 0` and `StrictMono s`.
The grouped terms are
b_k = ∑_{i = 0}^{s (k+1) - s k - 1} a (i + s k),
i.e. the sum of a over the finite block (s k, s (k+1)].
-/

theorem grouping_of_absolutely_summable {E : Type*} [NormedAddCommGroup E] [CompleteSpace E]
  {a : ℕ → E}
  (h_abs : Summable fun n => ‖a n‖)
  (s : ℕ → ℕ) (hs0 : s 0 = 0) (hsm : StrictMono s) :
  Summable (fun k => Finset.sum (Finset.range (s (k+1) - s k)) fun i => a (i + s k))
  ∧ tsum a = tsum (fun k => Finset.sum (Finset.range (s (k+1) - s k)) fun i => a (i + s k)) := by sorry
