import Mathlib

/-!
Lemma (informal): Let U ⊂ ℂ be open and f : U → ℂ holomorphic. Suppose f is not constant and f'(z0)=0.
Then z0 is a zero of f' of some finite order.

The statement below formalises this by producing a radius r>0 and an integer n ≥ 0 and an analytic function g
on the ball of radius r around z0 with g(z0) ≠ 0 such that on that ball we have
  deriv f z = (z - z0)^n * g z.
-/

lemma deriv_zero_has_finite_order (U : Set ℂ) {f : ℂ → ℂ} {z0 : ℂ}
  (hU : IsOpen U) (hf : AnalyticOn ℂ f U) (hz0 : z0 ∈ U)
  (h_nonconst : ¬ ∀ z ∈ U, f z = f z0) (hder0 : deriv f z0 = 0) :
  ∃ (n : ℕ) (r : ℝ) (g : ℂ → ℂ),
    (0 < r) ∧ (ball z0 r ⊆ U) ∧ (AnalyticOn ℂ g (ball z0 r)) ∧ (g z0 ≠ 0) ∧
    (∀ z ∈ (ball z0 r), deriv f z = (z - z0) ^ n * g z) := by sorry
