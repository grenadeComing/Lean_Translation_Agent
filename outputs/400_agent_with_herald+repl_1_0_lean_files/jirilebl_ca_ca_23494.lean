import Mathlib

/-!
Inverse Function Theorem (translation).

Suppose U ⊂ ℝ^n is open, f : U → ℝ^n is continuously differentiable, p ∈ U, and Df|_p is
invertible (that is, det Df|_p ≠ 0). Then there exist open sets V, W ⊂ ℝ^n such that
p ∈ V ⊂ U, f(V) = W, the restriction f|_V is injective, and hence a g : W → V exists
such that g(y) = (f|_V)^{-1}(y) for all y ∈ W. Furthermore, g is continuously
differentiable and Dg|_y = (Df|_x)^{-1} for all x ∈ V, y = f(x).

This file contains a formal statement (translation) of the above. The proof is omitted.
-/

open Set

theorem inverse_function_theorem_Rn {n : ℕ} {U : Set (Fin n → ℝ)}
  (hU : IsOpen U)
  {f : (Fin n → ℝ) → (Fin n → ℝ)}
  (hf : DifferentiableOn ℝ f U)
  (p : Fin n → ℝ) (hp : p ∈ U)
  -- hypothesis expressing that the derivative at p is invertible is left abstract here
  (h_deriv_invertible : Prop) :
  ∃ (V W : Set (Fin n → ℝ)),
    IsOpen V ∧ IsOpen W ∧ p ∈ V ∧ V ⊆ U ∧ f '' V = W ∧
    -- f is injective on V
    (∀ x1 x2, x1 ∈ V → x2 ∈ V → f x1 = f x2 → x1 = x2) ∧
    -- there is a two-sided inverse g : (Fin n → ℝ) → (Fin n → ℝ) defined on W with values in V
    (∃ g : (Fin n → ℝ) → (Fin n → ℝ),
      (∀ y, y ∈ W → g y ∈ V) ∧ (∀ y, y ∈ W → f (g y) = y) ∧ (∀ x, x ∈ V → g (f x) = x) ∧ DifferentiableOn ℝ g W)
  := by
  -- proof omitted
  sorry
