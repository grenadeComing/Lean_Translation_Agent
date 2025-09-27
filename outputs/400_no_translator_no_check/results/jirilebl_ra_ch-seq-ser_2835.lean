import Mathlib

/-!
Suppose \sum_{n=1}^\infty a_n converges absolutely. Show that any series obtained by grouping terms
also converges and has the same sum.
We formalize grouping by a strictly increasing sequence m : ℕ → ℕ with m 0 = 0 and define
b k = \sum_{i = m k}^{m (k+1) - 1} a i.
-/

noncomputable section

open Finset

def grouped_seq {E : Type*} [NormedAddCommGroup E] (a : ℕ → E) (m : ℕ → ℕ) (k : ℕ) : E :=
  (Finset.sum (Finset.Ico (m k) (m (k+1))) fun i => a i)

theorem grouped_series_of_absolutely_summable
{E : Type*} [NormedAddCommGroup E] {a : ℕ → E}
(h : Summable (fun n => ‖a n‖))
{m : ℕ → ℕ} (hm : StrictMono m) (m0 : m 0 = 0) :
  Summable (grouped_seq a m) ∧ tsum (grouped_seq a m) = tsum a := by
  sorry
