import Mathlib
open Set Filter Metric Complex
open scoped Topology

/-- If f : U → ℂ is a holomorphic function on a domain U ⊂ ℂ, then f is analytic. That is, given z0 ∈ U, f has a Taylor series, and it converges in the disk {z : |z - z0| < R}, where R is the distance to the nearest singularity (possibly R = ∞). Furthermore, the sum of the series is f. -/
theorem analyticAt_of_mem_nhds {f : ℂ → ℂ} {z : ℂ} {U : Set ℂ} (h : DifferentiableOn ℂ f U)
    (hz : z ∈ U) (hU : IsOpen U) : AnalyticAt ℂ f z := by sorry
