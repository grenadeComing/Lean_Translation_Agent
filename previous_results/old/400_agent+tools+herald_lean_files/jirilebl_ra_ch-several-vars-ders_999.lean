import Mathlib

noncomputable section

open MeasureTheory

/-- Integral operator with kernel k: (integral_op k f) y = ∫_0^1 k(x,y) f(x) dx (Lebesgue on ℝ).
    We do not provide the proofs here (use := by sorry). -/
def integral_op (k : ℝ × ℝ → ℝ) (f : ℝ → ℝ) (y : ℝ) : ℝ :=
  MeasureTheory.integral (MeasureTheory.MeasureSpace.volume (α := ℝ)) fun x => k (x, y) * f x

/-- If k is continuous, then integral_op maps continuous functions to continuous functions. -/
theorem integral_op_maps_continuous (k : ℝ × ℝ → ℝ) (hk : Continuous k) :
  ∀ f : ℝ → ℝ, Continuous f → Continuous (fun y => integral_op k f y) := by sorry

/-- If k is continuous, then integral_op is linear. -/
theorem integral_op_linear (k : ℝ × ℝ → ℝ) (hk : Continuous k) :
  ∀ (f g : ℝ → ℝ) (a b : ℝ),
    (fun y => integral_op k (fun x => a * f x + b * g x) y) = fun y => a * integral_op k f y + b * integral_op k g y := by sorry

end noncomputable
