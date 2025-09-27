import Mathlib
open Set Filter TopologicalSpace Topology Function

/-- Suppose f is a real function with domain R^{1} which has the intermediate value property: if f(a)<c<f(b), then f(x)=c for some x between a and b. Suppose also, for every rational r, that the set of all x with f(x)=r is closed. Prove that f is continuous. -/
theorem Rudin_exercise_4_19 {f : ℝ → ℝ}
  (hf : ∀ a b c, a < b → f a < c → c < f b → ∃ x, a < x ∧ x < b ∧ f x = c)
  (h_closed : ∀ r : ℚ, IsClosed {x | f x = r}) : Continuous f := by sorry
