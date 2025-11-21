import Mathlib

/-- Show that if (x_n) is bounded and every convergent subsequence has the same limit ℓ,
then x_n → ℓ. -/
theorem tendsto_of_subseq_tendsto {x : ℕ → ℝ} {ℓ : ℝ}
  (hx : ∃ M, 0 ≤ M ∧ ∀ n, |x n| ≤ M)
  (h : ∀ (φ : ℕ → ℕ), StrictMono φ → (∃ y, Filter.Tendsto (x ∘ φ) Filter.atTop (nhds y)) → Filter.Tendsto (x ∘ φ) Filter.atTop (nhds ℓ)) :
  Filter.Tendsto x Filter.atTop (nhds ℓ) := by sorry
