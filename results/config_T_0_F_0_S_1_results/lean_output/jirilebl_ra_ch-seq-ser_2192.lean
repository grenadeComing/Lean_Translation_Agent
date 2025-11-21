import Mathlib

/--
If a real sequence is bounded and every convergent subsequence has the same limit `ℓ`,
then the whole sequence converges to `ℓ`.
-/
theorem bounded_seq_unique_subseq_limit {x : ℕ → ℝ} {ℓ : ℝ}
  (h_bdd : Bounded (range x))
  (h_unique : ∀ s : ℕ → ℕ, StrictMono s → ∀ L, Tendsto (fun n => x (s n)) atTop (nhds L) → L = ℓ) :
  Tendsto x atTop (nhds ℓ) := by sorry