import Mathlib

open Filter

variable {X : Type*} [TopologicalSpace X]
variable {Y : Type*} [MetricSpace Y]

variable (f_seq : ℕ → X → Y) (f : X → Y) (x_seq : ℕ → X) (x : X)

/-- Each f_n is continuous. -/
def continuous_seq := ∀ n, Continuous (f_seq n)

/-- The sequence x_n converges to x. -/
def seq_converges := Tendsto x_seq atTop (𝓝 x)

/-- f_n converges uniformly to f. -/
def uniform_conv := ∀ ε : ℝ, 0 < ε → ∃ N, ∀ n ≥ N, ∀ t : X, dist (f_seq n t) (f t) < ε

/-- Exercise (Munkres 21.8): If f_n are continuous, x_n → x, and f_n → f uniformly,
    then f_n(x_n) → f(x). -/
theorem Munkres_exercise_21_8 (hcont : continuous_seq f_seq) (hx : seq_converges x_seq x) (huni : uniform_conv f_seq f) :
  Tendsto (fun n => f_seq n (x_seq n)) atTop (𝓝 (f x)) := by sorry
