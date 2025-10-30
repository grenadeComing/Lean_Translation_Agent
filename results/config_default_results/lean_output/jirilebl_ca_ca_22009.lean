import Mathlib
open scoped Topology
open Filter
open Complex

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic and nonconstant. Then f is an open mapping. -/
theorem isOpenMap_of_holomorphic_on {f : ℂ → ℂ} {U : Set ℂ} (ho : IsOpen U) (hf : AnalyticOn ℂ f U)
    (nc : ¬∃ c, ∀ z ∈ U, f z = c) : IsOpenMap f := by sorry
