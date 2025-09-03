import Mathlib

/-- The unit circle as a subtype of R × R. -/
def S1 : Type := { p : ℝ × ℝ // p.fst ^ 2 + p.snd ^ 2 = 1 }

-- Give S1 the subspace topology induced from ℝ × ℝ.
instance : TopologicalSpace S1 :=
  TopologicalSpace.induced Subtype.val (inferInstance : TopologicalSpace (ℝ × ℝ))

/-- The antipodal map on the circle. -/
def antipodal (x : S1) : S1 :=
  ⟨(-x.1.1, -x.1.2), by
    have h : (-x.1.1) ^ 2 + (-x.1.2) ^ 2 = x.1.1 ^ 2 + x.1.2 ^ 2 := by simp
    rw [h]
    exact x.2⟩

/-- Munkres exercise: any continuous map f : S1 → ℝ takes some pair of antipodal
    points to the same value. -/
theorem Munkres_exercise_24_2 (f : S1 → ℝ) (hf : Continuous f) : ∃ x : S1, f x = f (antipodal x) := by sorry
