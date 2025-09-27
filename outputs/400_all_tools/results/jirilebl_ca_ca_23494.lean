import Mathlib

open Function Set

/-- Inverse function theorem for maps R^n -> R^n (local version). -/
theorem inverse_function_theorem_Rn {n : ℕ} (U : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → (Fin n → ℝ)) (p : Fin n → ℝ) :
  IsOpen U →
  ContDiffOn ℝ 1 f U →
  p ∈ U →
  IsUnit (LinearMap.det ((fderivWithin ℝ f U p).toLinearMap)) →
  ∃ (V W : Set (Fin n → ℝ)),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    Set.InjOn f V ∧
    ∃ (g : (Fin n → ℝ) → (Fin n → ℝ)), (∀ y, y ∈ W → g y ∈ V) ∧ (∀ y, y ∈ W → f (g y) = y) ∧
    ContDiffOn ℝ 1 g W ∧
    ∀ x, x ∈ V → (fderivWithin ℝ g W (f x)) = (ContinuousLinearMap.inverse (fderivWithin ℝ f U x)) := by sorry
