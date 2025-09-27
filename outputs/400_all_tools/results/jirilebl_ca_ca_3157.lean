import Mathlib
open Complex Set
open scoped Topology

/-- Let U ⊆ ℂ be an open set and f : ℂ → ℂ a function. If f is holomorphic on U (i.e. complex-differentiable on U), then f is analytic: for every z0 ∈ U, f is analytic at z0. Formalize as: if Open U and DifferentiableOn ℂ f U, then ∀ z0 ∈ U, AnalyticAt ℂ f z0. End the Lean statement with := by sorry. -/
theorem analyticAt_of_differentiableOn_ext {U : Set ℂ} : IsOpen U → ∀ {f : ℂ → ℂ}, DifferentiableOn ℂ f U → ∀ {z₀ : ℂ}, z₀ ∈ U → AnalyticAt ℂ f z₀ := by sorry
