import Mathlib

open Filter

variable {x : ℕ → ℝ} {ℓ : ℝ}

theorem bounded_subseqs_same_limit_tendsto
  (h_bdd : ∃ M, 0 ≤ M ∧ ∀ n, |x n| ≤ M)
  (h_subseq : ∀ s : ℕ → ℕ, StrictMono s → ∀ L : ℝ, Tendsto (x ∘ s) atTop (nhds L) → L = ℓ) :
  Tendsto x atTop (nhds ℓ) := by sorry
