import Mathlib

open Filter

variable {X : Type*} [MetricSpace X]

/-- In a metric space, compactness (every open cover has a finite subcover)
implies sequential compactness: every sequence has a convergent subsequence. -/
theorem compact_space_sequentially_compact (h : CompactSpace X) :
  ∀ (x : ℕ → X), ∃ (a : X) (f : ℕ → ℕ), StrictMono f ∧ Tendsto (fun n => x (f n)) atTop (nhds a) :=
by sorry
