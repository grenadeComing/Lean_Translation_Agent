import Mathlib

/--
Let k : Icc (0:ℝ) 1 × Icc (0:ℝ) 1 → ℝ be continuous. Define L by
(L f)(y) := ∫_{x ∈ [0,1]} k (x,y) * f x.

The statement below formalises that there exists an operator L sending continuous functions
on [0,1] to continuous functions on [0,1] given by the above integral kernel, and that L is linear.
The proof is omitted (:= by sorry).
-/
theorem jirilebl_ra_ch_several_vars_ders_999
  (k : Icc (0:ℝ) 1 × Icc (0:ℝ) 1 → ℝ) (hk : Continuous k) :
  ∃ (L : ContinuousMap (Icc (0:ℝ) 1) ℝ → ContinuousMap (Icc (0:ℝ) 1) ℝ),
    (∀ (f : ContinuousMap (Icc (0:ℝ) 1) ℝ) (y : Icc (0:ℝ) 1),
      (L f).toFun y = ∫ (x : Icc (0:ℝ) 1), k (x, y) * (f x)) ∧
    Linear ℝ (fun f => L f) := by sorry
