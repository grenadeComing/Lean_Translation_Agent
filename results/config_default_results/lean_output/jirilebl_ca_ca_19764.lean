import Mathlib
open TopologicalSpace Metric Set Filter Asymptotics Function
open scoped Topology Filter NNReal Real

/-- Let U ⊂ ℂ be a domain (open connected) and f : U → ℂ be holomorphic. Show that f is analytic on U: i.e. for each a ∈ U, f has a power series expansion centered at a with radius of convergence equal to the distance from a to the complement of U, and the series sums to f on its disk of convergence. -/
theorem analyticOn_of_isPreconnected {U : Set ℂ} (hU : IsPreconnected U) (f : ℂ → ℂ) (hf : DifferentiableOn ℂ f U) :
    AnalyticOn ℂ f U := by sorry
