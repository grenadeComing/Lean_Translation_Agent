import Mathlib

/-!
Let X be a metric space such that every open cover of X has a finite subcover
(i.e. X is compact). Prove that every sequence in X has a convergent subsequence.
This is the standard fact that compact metric spaces are sequentially compact.
-/

lemma compact_space_sequentially_compact {X : Type _} [MetricSpace X] [CompactSpace X]
  (u : ℕ → X) :
  ∃ (φ : ℕ → ℕ) (hφ : StrictMono φ) (x : X), Filter.Tendsto (u ∘ φ) Filter.atTop (nhds x) := by sorry
