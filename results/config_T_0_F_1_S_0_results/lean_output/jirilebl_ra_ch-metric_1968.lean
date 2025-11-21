import Mathlib

open Filter

theorem sequential_compact_metric_implies_compact {X : Type _} [MetricSpace X]
  (h : ∀ (u : ℕ → X), ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : X), Tendsto (u ∘ φ) atTop (nhds x)) :
  IsCompact (Set.univ : Set X) := by sorry
