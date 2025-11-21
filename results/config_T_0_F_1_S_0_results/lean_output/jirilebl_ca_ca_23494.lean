import Mathlib

/-- Inverse function theorem for maps R^n -> R^n (statement only). -/
theorem inverse_function_theorem_real_n {n : ℕ}
  (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → (Fin n → ℝ)) (p : Fin n → ℝ)
  (hU : IsOpen U) (hp : p ∈ U) (hcont : ContDiffOn ℝ 1 f U)
  (hexp : ∃ e : (Fin n → ℝ) ≃L[ℝ] (Fin n → ℝ), e.toContinuousLinearMap = fderiv ℝ f p) :
  ∃ (V W : Set (Fin n → ℝ)) (g : (Fin n → ℝ) → (Fin n → ℝ)),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    Set.InjOn f V ∧
    (∀ y ∈ W, f (g y) = y) ∧ (∀ x ∈ V, g (f x) = x) ∧
    ContDiffOn ℝ 1 g W ∧
    (∀ x ∈ V, (fderiv ℝ g (f x)).comp (fderiv ℝ f x) = ContinuousLinearMap.id ℝ (Fin n → ℝ)) := by sorry
