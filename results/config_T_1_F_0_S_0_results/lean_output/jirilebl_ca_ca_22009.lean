import Mathlib

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic and nonconstant. Then f is an open mapping (images of open subsets are open). -/
theorem open_map_of_analytic_on {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : AnalyticOn ℂ f U) (hne : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) : IsOpenMap f := by sorry