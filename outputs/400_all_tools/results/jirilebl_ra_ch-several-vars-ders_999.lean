import Mathlib

open Set
open MeasureTheory

/-- Given a continuous kernel k on the square [0,1]×[0,1], the integral operator
    L(f)(y) = ∫_0^1 k(x,y) f(x) dx maps functions continuous on [0,1] to functions
    continuous on [0,1], and is linear.  -/
theorem integral_operator_linear
  (k : ℝ × ℝ → ℝ)
  (hk : ContinuousOn k (Set.Icc (0:ℝ) 1 ×ˢ Set.Icc (0:ℝ) 1)) :
  ∃ (L : (ℝ → ℝ) → ℝ → ℝ),
    (∀ f, ContinuousOn f (Set.Icc (0:ℝ) 1) → ContinuousOn (fun y => L f y) (Set.Icc (0:ℝ) 1)) ∧
    (∀ f y, y ∈ Set.Icc (0:ℝ) 1 → L f y = MeasureTheory.integral volume (fun x => k (x,y) * f x)) ∧
    (∀ (a : ℝ) (f g : ℝ → ℝ), ContinuousOn f (Set.Icc (0:ℝ) 1) →
      ContinuousOn g (Set.Icc (0:ℝ) 1) →
      L (fun x => a * f x + g x) = fun y => a * (L f y) + (L g y)) := by
  -- Proof omitted
  sorry
