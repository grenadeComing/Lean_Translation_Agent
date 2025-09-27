import Mathlib

open Filter Topology

variable {α : Type*} [PseudoMetricSpace α]

/-- If (x_n) is a bounded sequence in a metric space and every convergent subsequence has the same
limit ℓ, then x_n → ℓ. -/
theorem tendsto_of_bdd_subseq_unique_limit {x : ℕ → α} {ℓ : α}
  (h_bdd : ∃ c : α, ∃ R : ℝ, ∀ n, dist (x n) c ≤ R)
  (h_subseq : ∀ (s : ℕ → ℕ), StrictMono s → ∀ (l : α), Filter.Tendsto (x ∘ s) Filter.atTop (𝓝 l) → l = ℓ) :
  Filter.Tendsto x Filter.atTop (𝓝 ℓ) := by sorry
