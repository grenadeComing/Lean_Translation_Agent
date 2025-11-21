import Mathlib

/-- Inverse Function Theorem (local form) for maps R^n → R^n.

Suppose U ⊂ ℝ^n is open, f : U → ℝ^n is continuously differentiable, p ∈ U,
and the derivative Df|_p is invertible (equivalently its Jacobian determinant is nonzero).

Then there exist open sets V, W ⊂ ℝ^n with p ∈ V ⊂ U and f(V) = W such that
f|_V is injective, hence there is a local inverse g : W → V with g ∘ f = id_V and f ∘ g = id_W.
Moreover g is continuously differentiable and its derivative at y = f(x) is the inverse of the
derivative of f at x: Dg|_y = (Df|_x)^{-1}.
-/
theorem inverse_function_theorem {n : ℕ}
  {U : Set (Fin n → ℝ)} {f : (Fin n → ℝ) → (Fin n → ℝ)} {p : Fin n → ℝ}
  (hU : IsOpen U) (hf : IsC1On ℝ f U) (hp : p ∈ U)
  (hdet : (fderiv ℝ f p).toLinearMap.det ≠ 0) :
  ∃ (V W : Set (Fin n → ℝ)),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ MapsTo f V W ∧ InjectiveOn f V ∧
    (∃ g : W → (Fin n → ℝ), (∀ y ∈ W, g y ∈ V ∧ f (g y) = y) ∧ IsC1On ℝ g W ∧
      (∀ x ∈ V, let y := f x in fderiv ℝ g y = (fderiv ℝ f x).toLinearMap.symm)) := by sorry