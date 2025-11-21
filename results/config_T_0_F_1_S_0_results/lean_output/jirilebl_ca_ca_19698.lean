import Mathlib

variable {U : Set Complex} {f g : Complex → Complex} {S : Set Complex}

/-- Identity theorem for holomorphic functions (stated using complex differentiability).
If U ⊂ ℂ is open and f,g are differentiable on U (as functions over ℂ),
and S ⊂ U has an accumulation point in U and f = g on S, then f = g on U. -/
theorem identity_theorem_holomorphic_on (hU : IsOpen U)
  (hf : DifferentiableOn ℂ f U) (hg : DifferentiableOn ℂ g U)
  (hS : ∃ z0, z0 ∈ U ∧ z0 ∈ closure (S \ {z0}))
  (heq : ∀ z ∈ S, f z = g z) : ∀ z ∈ U, f z = g z := by sorry
