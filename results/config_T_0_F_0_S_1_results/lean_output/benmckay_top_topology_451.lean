import Mathlib

/-!
Let `X` be a metric space and suppose that `X` is sequentially compact.
Then every open cover of `X` admits a finite subcover, i.e. the whole space is compact.
This is stated here as `IsCompact (univ : Set X)`.
-/

lemma sequentially_compact_metric_space_is_compact {X : Type _} [MetricSpace X]
  (h : SequentiallyCompactSpace X) : IsCompact (univ : Set X) := by sorry
