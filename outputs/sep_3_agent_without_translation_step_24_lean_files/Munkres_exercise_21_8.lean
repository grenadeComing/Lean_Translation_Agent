import Mathlib

open Filter

variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [MetricSpace Y]

/-- Let X be a topological space and Y a metric space. Let f_n : X → Y be a sequence of continuous
functions, and let x_n be a sequence in X converging to x. If f_n → f uniformly, then f_n(x_n) → f(x).
-/
theorem Munkres_exercise_21_8
  (f : ℕ → X → Y) (f_lim : X → Y) (x_seq : ℕ → X) (x0 : X)
  (h_cont : ∀ n, Continuous (f n))
  (h_x : Tendsto x_seq atTop (nhds x0))
  (h_unif : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ t : X, dist (f n t) (f_lim t) < ε) :
  Tendsto (fun n => f n (x_seq n)) atTop (nhds (f_lim x0)) := by sorry
