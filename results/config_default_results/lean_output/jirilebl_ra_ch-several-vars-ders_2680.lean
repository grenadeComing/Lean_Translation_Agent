import Mathlib

theorem c1_implies_differentiable_at {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
  {f : E → ℝ} {x0 : E} {s : Set E} (hs : IsOpen s) (hx0 : x0 ∈ s)
  (hf : ∀ x ∈ s, HasFDerivAt f (fderiv ℝ f x) x)
  (hcont : ContinuousAt (fun x => fderiv ℝ f x) x0) :
  HasFDerivAt f (fderiv ℝ f x0) x0 := by sorry
