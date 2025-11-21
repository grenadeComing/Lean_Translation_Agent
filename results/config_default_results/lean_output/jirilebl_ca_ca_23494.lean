import Mathlib

open Set

/-
Inverse Function Theorem (local version) for finite-dimensional real normed spaces.
Formalization of the statement:
Suppose U ⊂ ℝ^n is open, f : U → ℝ^n is continuously differentiable, p ∈ U,
and the derivative Df|_p is invertible. Then there exist open sets V, W with
p ∈ V ⊂ U, f(V) = W, f|_V is injective, and the inverse g : W → V is
continuously differentiable and has derivative at y = f(x) equal to the inverse
of the derivative of f at x.
-/

theorem inverse_function_theorem {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]
  [FiniteDimensional ℝ E]
  (U : Set E) (f : E → E) (p : E)
  (hU : IsOpen U) (hp : p ∈ U)
  (hf : ContDiffOn ℝ 1 f U)
  (hderivp : HasFDerivAt f (fderiv ℝ f p) p)
  (hinv_at_p : ∃ Linv_p : E →L[ℝ] E,
    Linv_p.comp (fderiv ℝ f p) = ContinuousLinearMap.id ℝ E ∧ (fderiv ℝ f p).comp Linv_p = ContinuousLinearMap.id ℝ E) :
  ∃ (V W : Set E) (g : E → E),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧ InjOn f V ∧
    ContDiffOn ℝ 1 g W ∧
    (∀ (x : E) (hx : x ∈ V) (y : E), y = f x → (fderiv ℝ g y).comp (fderiv ℝ f x) = ContinuousLinearMap.id ℝ E
                                                       ∧ (fderiv ℝ f x).comp (fderiv ℝ g y) = ContinuousLinearMap.id ℝ E) := by sorry
