import Mathlib
open Filter Topology

/-- If a real sequence is bounded and every convergent subsequence has the same limit `ℓ`,
then the sequence converges to `ℓ`. -/
theorem tendsto_of_bounded_subseq_unique {x : ℕ → ℝ} {ℓ : ℝ}
  (h_bound : ∃ M : ℝ, ∀ n : ℕ, |x n| ≤ M)
  (h_subseq : ∀ s : ℕ → ℕ, StrictMono s → ∀ l : ℝ, Tendsto (x ∘ s) atTop (𝓝 l) → l = ℓ) :
  Tendsto x atTop (𝓝 ℓ) := by sorry