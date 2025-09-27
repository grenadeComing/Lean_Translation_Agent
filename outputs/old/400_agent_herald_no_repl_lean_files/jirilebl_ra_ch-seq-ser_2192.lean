import Mathlib

/-- If a real sequence is bounded and every convergent subsequence has the same
limit `ℓ`, then the sequence converges to `ℓ`. -/
theorem subseq_bounded_unique_limit_tendsto {x : ℕ → ℝ} {ℓ : ℝ}
  (h_bounded : Bounded (range x))
  (h_subseq : ∀ (s : ℕ → ℕ), StrictMono s → ∀ a : ℝ, Tendsto (x ∘ s) atTop (nhds a) → a = ℓ) :
  Tendsto x atTop (nhds ℓ) := by sorry
