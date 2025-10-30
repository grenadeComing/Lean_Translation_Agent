import Mathlib

open Set

universe u
variable {E : Type u} [NormedAddCommGroup E] [NormedSpace ℝ E]

theorem lipschitz_on_compact_of_bounded_grad
  (f : E → ℝ) (grad_f : E → E) (K : Set E)
  (hf : Differentiable ℝ f)
  (hgrad : Continuous grad_f)
  (hK : IsCompact K)
  (c : ℝ≥0)
  (hM : ∀ x ∈ K, ‖grad_f x‖ ≤ (c : ℝ)) :
  LipschitzOnWith c f K := by
  -- placeholder: the real proof uses the mean value inequality with a bounded gradient on K
  sorry
