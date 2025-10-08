import Mathlib

/- This is a translation of the statement:
   Let f : S¹ → ℝ be a continuous map. Show there exists x ∈ S¹ such that f x = f (-x).
   We represent S¹ as the unit circle in ℝ²: {x : ℝ × ℝ | x.1^2 + x.2^2 = 1}.
-/

open Set

/-- There exists x on the unit circle S¹ with f x = f (-x). -/
theorem exists_antipodal_eq {f : {x : ℝ × ℝ // x.1 ^ 2 + x.2 ^ 2 = 1} → ℝ}
  (hf : Continuous f) : ∃ x, f x = f (-x) := by sorry
