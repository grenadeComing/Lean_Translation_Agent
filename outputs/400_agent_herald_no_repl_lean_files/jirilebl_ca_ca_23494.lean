import Mathlib

/-
Inverse Function Theorem (local) for ℝ^n, informal/formal translation.
We work with ℝ^n represented as Fin n → ℝ. The statement below records the
existence of local inverse neighborhoods and the differentiability of the
inverse. The precise formula for the derivative of the inverse (Dg_y = (Df_x)^{-1}
for y = f x) is noted in the comment; we do not provide a full formalisation
of the derivative-equality term here.
-/

theorem inverse_function_theorem_Rn
  {n : ℕ} {U : Set (Fin n → ℝ)} (hU : IsOpen U)
  {f : (Fin n → ℝ) → (Fin n → ℝ)} {p : Fin n → ℝ}
  (f' : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ))
  (hf : HasFDerivAt f f' p)
  (h_inv : ∃ g : (Fin n → ℝ) →L[ℝ] (Fin n → ℝ),
    g.comp f' = ContinuousLinearMap.id ℝ (Fin n → ℝ) ∧ f'.comp g = ContinuousLinearMap.id ℝ (Fin n → ℝ)) :
  ∃ V W : Set (Fin n → ℝ),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    Function.Injective (f.restrict V) ∧
    ∃ g : W → V, (∀ y ∈ W, g y = (f.restrict V)⁻¹ y) ∧ ContDiffOn ℝ 1 g W := by sorry

/-
Remark (informal, not formalised above):
Under the same hypotheses, the local inverse g satisfies for all x ∈ V and y = f x
that g is differentiable at y and Dg|_y = (Df|_x)^{-1}.
-/
