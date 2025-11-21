import Mathlib

variable {X : Type _} [MetricSpace X]

theorem metric_seq_compact_implies_compact
  (h : ∀ s : ℕ → X, ∃ (φ : ℕ → ℕ), StrictMono φ ∧ ∃ x, Tendsto (s ∘ φ) atTop (𝓝 x)) :
  ∀ {ι : Type _} (U : ι → Set X), (∀ i, IsOpen (U i)) → (⋃ i, U i) = (Set.univ : Set X) →
    ∃ (t : Finset ι), (⋃ i ∈ t, U i) = (Set.univ : Set X) := by sorry
