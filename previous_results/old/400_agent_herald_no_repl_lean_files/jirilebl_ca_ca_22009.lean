import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic and nonconstant. Then f is an open mapping. -/
theorem holomorphic_on.is_open_map {U : Set ℂ} {f : ℂ → ℂ} (hU : IsOpen U) (hf : HolomorphicOn f U) (hfnc : ¬ IsConstantOn U f) : IsOpenMap (fun z : U => f z) := by sorry
