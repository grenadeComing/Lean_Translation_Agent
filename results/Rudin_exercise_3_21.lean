import Mathlib

variable {α : Type*} [MetricSpace α] [CompleteSpace α]

theorem Rudin_exercise_3_21 (E : ℕ → Set α)
  (h_nonempty : ∀ n, Set.Nonempty (E n))
  (h_closed : ∀ n, IsClosed (E n))
  (h_bounded : ∀ n, Set.Bounded (E n))
  (h_mono : ∀ n, E n ⊇ E (n+1))
  (h_diam : Filter.Tendsto (fun n => Metric.diam (E n)) Filter.atTop (nhds 0)) :
  (⋂ n, E n).Nonempty ∧ ∃! x, x ∈ ⋂ n, E n := by sorry
