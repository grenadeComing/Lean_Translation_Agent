import Mathlib

open Filter

/-- Let x : ℕ → ℝ and ℓ : ℝ. If x is bounded and every convergent subsequence has limit ℓ, then x → ℓ. -/
theorem seq_limit_of_all_convergent_subseqs_same_limit {x : ℕ → ℝ} {ℓ : ℝ}
  (hb : ∃ M, ∀ n, |x n| ≤ M)
  (hsub : ∀ (φ : ℕ → ℕ) (hφ : StrictMono φ) {L : ℝ}, Tendsto (x ∘ φ) Filter.atTop (nhds L) → L = ℓ) :
  Tendsto x Filter.atTop (nhds ℓ) := by sorry
