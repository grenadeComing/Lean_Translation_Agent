import Mathlib

/-- Rudin exercise 3.21
If {E_n} is a sequence of closed nonempty and bounded sets in a complete metric space X,
if E_n ⊇ E_{n+1}, and if lim_{n→∞} diam E_n = 0, then ⋂_{n=1}^∞ E_n consists of exactly one point. -/
theorem Rudin_exercise_3_21 {α : Type _} [MetricSpace α] [CompleteSpace α]
  (E : ℕ → Set α)
  (h_closed : ∀ n, IsClosed (E n))
  (h_nonempty : ∀ n, (E n).Nonempty)
  (h_subset : ∀ n, E n ⊇ E (n+1))
  (h_diam : Filter.Tendsto (fun n => Metric.diam (E n)) Filter.atTop (𝓝 0)) :
  ∃! x, x ∈ ⋂ n, E n := by sorry
