import Mathlib

/-- Suppose f_n -> f uniformly on [a,b] and g is continuous on [a,b].
    Then lim_{n->∞} ∫_a^b f_n g = ∫_a^b f g. -/
theorem integral_mul_of_uniform_limit {f : ℕ → ℝ → ℝ} {f' g : ℝ → ℝ} {a b : ℝ}
  (h_uni : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x ∈ Icc a b, |f n x - f' x| < ε)
  (h_cont : ContinuousOn g (Icc a b)) :
  Tendsto (fun n => ∫ x in a..b, f n x * g x) atTop (𝓝 (∫ x in a..b, f' x * g x)) := by sorry
