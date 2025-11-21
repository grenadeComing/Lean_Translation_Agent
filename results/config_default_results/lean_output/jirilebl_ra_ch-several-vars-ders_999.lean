import Mathlib

open MeasureTheory Topology Set

noncomputable section

/-- Integral operator on C([0,1], ℝ) induced by a kernel k. -/
noncomputable def integral_operator
  (k : ℝ → ℝ → ℝ) (hk : Continuous (Function.uncurry k))
  (f : ContinuousMap (Icc (0 : ℝ) 1) ℝ) : ContinuousMap (Icc (0 : ℝ) 1) ℝ :=
{ toFun := fun y =>
    ∫ x in 0..1, k x (y : ℝ) * (if h : x ∈ Icc (0 : ℝ) 1 then f ⟨x, h⟩ else 0),
  continuous_toFun := by sorry }

/-- The operator is well-defined (maps continuous f to continuous functions) and linear. -/
theorem integral_operator_linear_on_unit_interval
  (k : ℝ → ℝ → ℝ) (hk : Continuous (Function.uncurry k)) :
  (∀ (f : ContinuousMap (Icc (0 : ℝ) 1) ℝ),
    Continuous fun y => ∫ x in 0..1, k x (y : ℝ) * (if h : x ∈ Icc (0 : ℝ) 1 then f ⟨x, h⟩ else 0)) ∧
  (∀ (f g : ContinuousMap (Icc (0 : ℝ) 1) ℝ) (a b : ℝ),
    integral_operator k hk (a • f + b • g) = a • integral_operator k hk f + b • integral_operator k hk g) := by sorry

end
