import Mathlib

open Filter

/-- Rudin exercise: Suppose f and g are real functions, have derivatives f_der and g_der at x,
    g_der ≠ 0, and f x = g x = 0. Then lim_{t → x} f(t)/g(t) = f_der/g_der. -/
theorem Rudin_exercise_5_7 {f g : ℝ → ℝ} {f_der g_der : ℝ} {x : ℝ}
  (hf : HasDerivAt f f_der x) (hg : HasDerivAt g g_der x) (hg_ne : g_der ≠ 0)
  (hf0 : f x = 0) (hg0 : g x = 0) :
  Tendsto (fun t => f t / g t) (nhds x) (nhds (f_der / g_der)) := by sorry
