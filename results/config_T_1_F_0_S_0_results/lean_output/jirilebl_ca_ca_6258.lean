import Mathlib

/-- Let U ⊂ ℂ be open and connected, f : U → ℂ holomorphic and nonconstant, and p ∈ U.
There exists δ > 0 such that the restriction of f to the punctured disk (ball p δ) \ {p}
is an open map. -/
theorem open_map_on_punctured_disk_of_holomorphic_nonconstant {U : Set ℂ} (hU : IsOpen U)
  (hUconn : IsConnected U) {f : ℂ → ℂ} (hf : DifferentiableOn ℂ f U)
  (hnonconst : ¬∃ c, ∀ z ∈ U, f z = c) {p : ℂ} (hp : p ∈ U) :
  ∃ δ : ℝ, 0 < δ ∧ ball p δ ⊆ U ∧ IsOpenMap (fun z : (ball p δ \ {p}) => f (z : ℂ)) := by sorry