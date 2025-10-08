import Mathlib

open Set IntervalIntegral

noncomputable def L (k : ℝ × ℝ → ℝ) (f : ℝ → ℝ) : ℝ → ℝ :=
  fun y => integral (fun x => k (x, y) * f x) (0 : ℝ) 1

theorem L_maps_continuous (k : ℝ × ℝ → ℝ)
  (hk : ContinuousOn k (Icc (0 : ℝ) 1 ×ˢ Icc (0 : ℝ) 1))
  (f : ℝ → ℝ) (hf : ContinuousOn f (Icc (0 : ℝ) 1)) :
  ContinuousOn (L k f) (Icc (0 : ℝ) 1) := by sorry

theorem L_linear (k : ℝ × ℝ → ℝ) (f g : ℝ → ℝ) (a b : ℝ) :
  L k (fun x => a * f x + b * g x) = fun y => a * L k f y + b * L k g y := by sorry
