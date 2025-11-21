import Mathlib

/-!
Let k : [0,1]^2 → ℝ be continuous. Define L : C([0,1], ℝ) → C([0,1], ℝ) by
(L f)(y) = ∫_0^1 k(x,y) f(x) dx.

The following statement formalises that this operator is well-defined (maps continuous
functions to continuous functions) and is linear.
-/

open Set IntervalIntegral Topology

theorem integral_kernel_operator_linear
  (k : Icc (0:ℝ) 1 × Icc (0:ℝ) 1 → ℝ) (hk : Continuous k) :
  ∃ (L : (Icc (0:ℝ) 1 →ᶜ ℝ) → (Icc (0:ℝ) 1 →ᶜ ℝ)),
    (∀ (f : Icc (0:ℝ) 1 →ᶜ ℝ) (y : Icc (0:ℝ) 1),
       (L f : Icc (0:ℝ) 1 → ℝ) y = ∫ x in 0..1, k (x, y) * (f : Icc (0:ℝ) 1 → ℝ) x) ∧
    (∀ (f g : Icc (0:ℝ) 1 →ᶜ ℝ) (a b : ℝ),
       L (a • f + b • g) = a • L f + b • L g) := by
  -- Proof omitted: one shows first that for fixed f the function y ↦ ∫_0^1 k(x,y) f(x) dx
  -- is continuous using the continuity of k on the compact set [0,1]^2 and the
  -- continuity of f; then linearity is immediate from linearity of the integral.
  sorry
