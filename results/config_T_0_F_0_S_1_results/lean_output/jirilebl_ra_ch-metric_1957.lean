import Mathlib

theorem jirilebl_ra_ch_metric_1957 {α : Type _} [MetricSpace α] [CompactSpace α] :
  ∀ (u : ℕ → α), ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (a : α), Tendsto (u ∘ φ) atTop (𝓝 a) := by sorry
