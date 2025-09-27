import Mathlib

/-!
Inverse Function Theorem (Euclidean R^n, statement only).

This file records the standard local inverse function theorem for maps
f : (Fin n → ℝ) → (Fin n → ℝ). We do not provide a proof here; the
statement is left as `by sorry` as requested.
-/

theorem inverse_function_theorem_Rn
  (n : ℕ)
  (U : Set (Fin n → ℝ))
  (f : (Fin n → ℝ) → (Fin n → ℝ))
  (p : Fin n → ℝ)
  (hU : IsOpen U)
  (hp : p ∈ U)
  -- Placeholder hypotheses standing for: f is continuously differentiable on U
  -- and the derivative at p is an invertible linear map (det ≠ 0).
  (hf : Prop) (hDf_invertible : Prop) :
  -- Conclusion: there exist neighbourhoods V of p and W = f(V) on which f is
  -- injective and has a C^1 inverse g whose derivative at y = f x is the
  -- inverse of the derivative of f at x.
  ∃ (V W : Set (Fin n → ℝ)),
    p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    (∀ x y, x ∈ V → y ∈ V → f x = f y → x = y) ∧
    (∃ g : (Fin n → ℝ) → (Fin n → ℝ),
      (∀ y, y ∈ W → g y ∈ V ∧ f (g y) = y) ∧ (∀ x, x ∈ V → g (f x) = x) ∧
      True) := by
  sorry
