import Mathlib

/-
If {E_n} is a sequence of closed nonempty and bounded sets in a complete metric space X,
if E_n ⊇ E_{n+1}, and if lim_{n→∞} diam E_n = 0, then ⋂_{n=1}^∞ E_n consists of exactly one point.
-/

theorem Rudin_exercise_3_21 {X : Type _} [MetricSpace X] [CompleteSpace X]
  (E : ℕ → Set X)
  (h_closed : ∀ n, IsClosed (E n))
  (h_nonempty : ∀ n, (E n).Nonempty)
  (h_mono : ∀ n, E n ⊇ E (n+1))
  (h_diam : Filter.Tendsto (fun n => Metric.diam (E n)) Filter.atTop (nhds (0 : ℝ))) :
  (⋂ n, E n).Nonempty ∧ Set.Subsingleton (⋂ n, E n) := by sorry
