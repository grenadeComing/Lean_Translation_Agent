import Mathlib

open Filter
open Topology

/-- Suppose f'(x), g'(x) exist, g'(x) ≠ 0, and f(x)=g(x)=0. Then
    lim_{t → x} f(t)/g(t) = f'(x)/g'(x). -/
theorem Rudin_exercise_5_7 {f g : ℝ → ℝ} {x df dg : ℝ}
  (hf : HasDerivAt f df x) (hg : HasDerivAt g dg x) (hg_ne : dg ≠ 0)
  (fx0 : f x = 0) (gx0 : g x = 0) :
  Tendsto (fun t => f t / g t) (nhds x) (nhds (df / dg)) := by sorry
