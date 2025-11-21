import Mathlib

/-!
Inverse Function Theorem (statement only).
We work in ℝ^n modelled as `Fin n → ℝ`.
Given an open set `U`, a C¹-map `f : (Fin n → ℝ) → (Fin n → ℝ)` and a point `p ∈ U` such that
the derivative at `p` is a continuous linear equivalence, there exist open neighbourhoods
`V` of `p` and `W = f '' V` and a C¹-local inverse `g : W → V` whose derivative at `y = f x`
is the inverse (as a continuous linear map) of the derivative of `f` at `x`.
-/

theorem inverse_function_theorem {n : ℕ}
  {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → (Fin n → ℝ)} {p : Fin n → ℝ}
  (hU : IsOpen U) (hp : p ∈ U) (hf : ContDiffOn ℝ 1 f U)
  (hderiv_at_p : ∃ (A : (Fin n → ℝ) ≃L[ℝ] (Fin n → ℝ)), A.toContinuousLinearMap = fderiv ℝ f p) :
  ∃ (V W : Set (Fin n → ℝ)) (g : (Fin n → ℝ) → (Fin n → ℝ)),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x ∈ V, g (f x) = x) ∧ (∀ y ∈ W, f (g y) = y) ∧
    ContDiffOn ℝ 1 g W ∧
    (∀ x ∈ V, ∃ (A : (Fin n → ℝ) ≃L[ℝ] (Fin n → ℝ)),
        A.toContinuousLinearMap = fderiv ℝ f x ∧ fderiv ℝ g (f x) = A.symm.toContinuousLinearMap) := by sorry
