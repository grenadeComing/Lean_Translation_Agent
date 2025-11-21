import Mathlib

/-- If a metric space X has the property that every sequence has a convergent subsequence
    (sequential compactness), then every open cover of X has a finite subcover
    (compactness).  -/
theorem sequentially_compact_metric_space_is_compact {X : Type*} [MetricSpace X]
  (h : ∀ (u : ℕ → X), ∃ (x : X) (φ : ℕ → ℕ) (hφ : StrictMono φ), Tendsto (u ∘ φ) atTop (𝓝 x)) :
  ∀ (U : Set (Set X)), (∀ V ∈ U, IsOpen V) → sUnion U = (univ : Set X) → ∃ (F : Set (Set X)),
    F ⊆ U ∧ Set.Finite F ∧ sUnion F = univ := by sorry