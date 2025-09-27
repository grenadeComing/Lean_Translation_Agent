import Mathlib

/--
If a function is C^1 (continuously differentiable of order 1), then it is differentiable.
This states that ContDiff 𝕜 1 f implies DifferentiableAt 𝕜 f x for any point x.
-/
theorem cont_diff_one_implies_differentiable_at {𝕜 : Type _} [NontriviallyNormedField 𝕜]
  {E : Type _} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {F : Type _} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  {f : E → F} {x : E} (h : ContDiff 𝕜 1 f) : DifferentiableAt 𝕜 f x := by sorry
