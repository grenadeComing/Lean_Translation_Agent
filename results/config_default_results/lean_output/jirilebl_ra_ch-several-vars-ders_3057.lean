import Mathlib
open Filter Set
open scoped Topology Convex

/-- Let X be a normed vector space over R. If f : X → ℝ is differentiable at x₀ ∈ X and f attains a local minimum at x₀, then the Fréchet derivative Df(x₀) (as an element of the continuous linear maps from X to ℝ) is the zero map. -/
theorem fderiv_eq_zero_of_is_local_min {X : Type*} [NormedAddCommGroup X] [NormedSpace ℝ X] {f : X → ℝ} {x₀ : X} {f' : X →L[ℝ] ℝ} (h : HasFDerivAt f f' x₀) (hmin : IsLocalMin f x₀) : f' = 0 := by sorry