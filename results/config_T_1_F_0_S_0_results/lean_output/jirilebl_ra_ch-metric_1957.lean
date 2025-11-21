import Mathlib

/-- If X is a metric space and every open cover of X has a finite subcover (i.e. X is compact),
then every sequence in X has a convergent subsequence. The conclusion is stated in ε–N form.
-/
theorem compact_metric_space_sequential_compact (X : Type _) [MetricSpace X] [CompactSpace X] :
  ∀ u : ℕ → X,
    ∃ φ : ℕ → ℕ, StrictMono φ ∧ ∃ x : X, ∀ ε > 0, ∃ N : ℕ, ∀ n : ℕ, n ≥ N → dist (u (φ n)) x < ε := by sorry