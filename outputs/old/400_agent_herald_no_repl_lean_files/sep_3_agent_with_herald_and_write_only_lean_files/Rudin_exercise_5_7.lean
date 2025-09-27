import Mathlib

/-- Suppose f'(x), g'(x) exist, g'(x) ≠ 0, and f(x)=g(x)=0. Then
    lim_{t → x} f(t)/g(t) = f'(x)/g'(x).

This is a local form of L'Hôpital's rule in the case where both functions vanish at x. -/
theorem lhopital_local_zero {f g : ℝ → ℝ} {x a b : ℝ}
  (hf : HasDerivAt f a x) (hg : HasDerivAt g b x) (hb : b ≠ 0) (hf0 : f x = 0) (hg0 : g x = 0) :
  Tendsto (fun t => f t / g t) (𝓝 x) (𝓝 (a / b)) := by sorry
