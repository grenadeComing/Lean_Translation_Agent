import Mathlib

/-- If a real sequence `x : ℕ → ℝ` is bounded (∃ M, ∀ n, abs (x n) ≤ M) and every convergent
    subsequence converges to the same limit `ℓ`, then the whole sequence tends to `ℓ`. -/
theorem subseq_converges_unique_of_bounded {x : ℕ → ℝ} {ℓ : ℝ}
  (hbound : ∃ M : ℝ, ∀ n, abs (x n) ≤ M)
  (h : ∀ (φ : ℕ → ℕ), StrictMono φ → ∀ (L : ℝ), Filter.Tendsto (x ∘ φ) Filter.atTop (nhds L) → L = ℓ) :
  Filter.Tendsto x Filter.atTop (nhds ℓ) := by sorry
