import Mathlib

open Set
open MeasureTheory

theorem integral_operator_well_defined_and_linear (k : ℝ × ℝ → ℝ) (hk : Continuous k) :
  (∀ f, ContinuousOn f (Icc (0 : ℝ) 1) →
    ContinuousOn (fun y => MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.volume (Icc (0 : ℝ) 1)) (fun x => k (x, y) * f x)) (Icc (0 : ℝ) 1))
  ∧
  (∀ (f g : ℝ → ℝ), ContinuousOn f (Icc (0 : ℝ) 1) → ContinuousOn g (Icc (0 : ℝ) 1) →
    ∀ (a b : ℝ),
      (fun y => MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.volume (Icc (0 : ℝ) 1)) (fun x => k (x, y) * (a * f x + b * g x)))
        = fun y => a * MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.volume (Icc (0 : ℝ) 1)) (fun x => k (x, y) * f x) + b * MeasureTheory.integral (MeasureTheory.Measure.restrict MeasureTheory.volume (Icc (0 : ℝ) 1)) (fun x => k (x, y) * g x)) := by
  sorry
