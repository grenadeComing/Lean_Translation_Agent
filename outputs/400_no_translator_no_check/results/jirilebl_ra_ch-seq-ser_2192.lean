import Mathlib

open Filter

/-- If a real sequence is bounded and every convergent subsequence has the same limit `ℓ`,
then the whole sequence converges to `ℓ`. -/
theorem subseq_unique_limit_imp_seq_tendsto {x : ℕ → ℝ} {ℓ : ℝ}
  (hbounded : ∃ M : ℝ, ∀ n, |x n| ≤ M)
  (huniq : ∀ (φ : ℕ → ℕ), StrictMono φ → ∀ y, Tendsto (x ∘ φ) atTop (nhds y) → y = ℓ) :
  Tendsto x atTop (nhds ℓ) := by
  sorry
