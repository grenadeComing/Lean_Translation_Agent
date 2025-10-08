import Mathlib
open scoped Manifold Topology
open Function Set

/-- Suppose U ⊂ ℂ is open, p ∈ U, and f : U → ℂ is holomorphic, and f'(p) ≠ 0. Then there is an open neighborhood V of p such that f restricted to V is injective. -/
theorem injOn_of_deriv_ne_zero_nhds {U : Set ℂ} {p : ℂ} {f : ℂ → ℂ} {hf : DifferentiableOn ℂ f U}
    (hU : IsOpen U) (hp : p ∈ U) (hf' : deriv f p ≠ 0) :
    ∃ V ∈ 𝓝 p, InjOn f V := by sorry
