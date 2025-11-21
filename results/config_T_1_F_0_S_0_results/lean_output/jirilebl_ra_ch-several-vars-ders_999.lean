import Mathlib

/-- Interval [0,1] as a closed interval in ℝ. -/
def I := Set.Icc (0 : ℝ) 1

variable {k : I × I → ℝ} (hk : Continuous k)

/--
There exists an integral operator L : C([0,1], ℝ) → C([0,1], ℝ) given by
(L f)(y) = ∫_{0}^{1} k(x,y) f(x) dx, and this operator is linear.

We state this by exhibiting an L : ContinuousMap I ℝ → ContinuousMap I ℝ which satisfies
the pointwise integral formula and is ℝ-linear.
-/
theorem integral_operator_linear :
  ∃ (L : ContinuousMap I ℝ → ContinuousMap I ℝ),
    (∀ (f : ContinuousMap I ℝ) (y : I), (L f).toFun y = ∫ x in 0..1, k (x, y) * (f.toFun x)) ∧
    (∀ (f g : ContinuousMap I ℝ) (a b : ℝ), L (a • f + b • g) = a • L f + b • L g) := by sorry