import Mathlib

open MeasureTheory Set Real

theorem Shakarchi_exercise_2_2 :
  MeasureTheory.integral (MeasureTheory.volume.restrict (Ioi (0 : ℝ))) (fun x => Real.sin x / x) = Real.pi / 2 := by sorry
