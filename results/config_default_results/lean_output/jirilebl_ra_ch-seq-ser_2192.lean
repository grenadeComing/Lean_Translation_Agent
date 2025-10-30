import Mathlib

/--
Show that if {x_n} is bounded and every convergent subsequence has the same limit ell, then x_n → ell.
This is a placeholder translation; the actual proof is omitted (left as sorry).
-/
lemma bounded_seq_tendsto_of_subseq_lim_eq
  {x : ℕ → ℝ} {ell : ℝ}
  (h_bounded : ∃ C : ℝ, ∀ n, |x n| ≤ C)
  (h_subseq_lim_eq :
     ∀ ⦃s : ℕ → ℕ⦄, StrictMono s → ∀ {y : ℝ}, Tendsto (fun n => x (s n)) atTop (𝓝 y) → y = ell)
  : Tendsto x atTop (𝓝 ell) := by
  sorry
