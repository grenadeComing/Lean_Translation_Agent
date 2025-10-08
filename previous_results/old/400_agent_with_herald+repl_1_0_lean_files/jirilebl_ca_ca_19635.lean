import Mathlib

open Set

/-- We define a local notion of a set S being discrete in U: every point of S has an open
neighborhood V contained in U whose intersection with S is just that point. -/
def discrete_in (U S : Set ℂ) : Prop :=
  ∀ x ∈ S, ∃ V, IsOpen V ∧ x ∈ V ∧ V ∩ S ⊆ ({x} : Set ℂ) ∧ V ⊆ U

theorem zeros_of_deriv_discrete (U : Set ℂ) (hU : IsOpen U) (f : ℂ → ℂ)
  (hf : DifferentiableOn ℂ f U) (hnc : ∃ z1 z2, z1 ∈ U ∧ z2 ∈ U ∧ f z1 ≠ f z2) :
  discrete_in U {z | z ∈ U ∧ deriv f z = 0} := by sorry
