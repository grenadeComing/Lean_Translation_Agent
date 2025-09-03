import Mathlib

/-- The unit circle S1 as a subtype of R × R. -/
def S1 : Type := { p : ℝ × ℝ // p.fst ^ 2 + p.snd ^ 2 = 1 }

instance : TopologicalSpace S1 := TopologicalSpace.induced (Subtype.val : S1 → ℝ × ℝ) inferInstance

/-- The antipodal map on the circle. -/
def antipode (x : S1) : S1 :=
  ⟨(-x.val.fst, -x.val.snd), by
    simpa using x.prop⟩

/-- Exercise: any continuous map f : S1 → ℝ takes equal values at some antipodal pair. -/
theorem munkres_exercise_24_2 {f : S1 → ℝ} (hf : Continuous f) : ∃ x : S1, f x = f (antipode x) := by sorry
