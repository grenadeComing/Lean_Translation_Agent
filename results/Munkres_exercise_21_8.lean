import Mathlib

variable {X : Type _} [TopologicalSpace X]
variable {Y : Type _} [MetricSpace Y]

theorem Munkres_exercise_21_8 (f_n : ℕ → X → Y) (f : X → Y) (x_n : ℕ → X) (x : X)
  (h_cont : ∀ n, Continuous (f_n n))
  (h_x : Filter.Tendsto x_n Filter.atTop (nhds x))
  (h_uniform : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x' : X, dist (f_n n x') (f x') < ε) :
  Filter.Tendsto (fun n => f_n n (x_n n)) Filter.atTop (nhds (f x)) := by
  sorry
