import Mathlib

/-!
Local form of the inverse function theorem for maps ℝ^n → ℝ^n, using `Fin n → ℝ` as the model for ℝ^n.
We formalize the existence of open neighborhoods V, W and a local inverse g which is C^1 on W.
We do not formalize the explicit formula for the derivative of g; we only comment it below.
-/

variable {n : ℕ}

theorem inverse_function_theorem_fin (U : Set (Fin n → ℝ)) (hU : IsOpen U)
  (f : (Fin n → ℝ) → (Fin n → ℝ)) (hf : ContDiffOn ℝ 1 f U)
  (p : Fin n → ℝ) (hp : p ∈ U)
  (h_deriv : ∃ (L : (Fin n → ℝ) ≃L[ℝ] (Fin n → ℝ)), L.toContinuousLinearMap = fderivWithin ℝ f U p) :
  ∃ (V W : Set (Fin n → ℝ)),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧ Set.InjOn f V ∧
    ∃ g : (Fin n → ℝ) → (Fin n → ℝ),
      (∀ y, y ∈ W → f (g y) = y) ∧ (∀ x, x ∈ V → g (f x) = x) ∧ ContDiffOn ℝ 1 g W :=
  by
  -- Furthermore, one has the derivative equality: for x ∈ V and y = f x,
  --   Dg|_y = (Df|_x)^{-1}.
  -- We do not formalize the pointwise equality of derivatives here; we only assert the existence
  -- of the local C^1 inverse `g` and its basic inverse properties.
  sorry
