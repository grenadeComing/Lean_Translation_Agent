import Mathlib

/-- Let X be a metric space and Γ a group acting on X by isometries. Assume the action is free
    (stabilizers are trivial) and has discrete orbits. Then the quotient map q : X → Quotient
    (MulAction.orbitRel Γ X) is a locally isometric covering map. -/
theorem quotient_map_locally_isometric_covering_of_free_isometric_discrete_orbits
  {X : Type*} [MetricSpace X] {Γ : Type*} [Group Γ] [MulAction Γ X]
  (h_free : IsFree Γ X)
  (h_isometric : ∀ g : Γ, Isometry (fun x : X => g • x))
  (h_discrete : ∀ x : X, Discrete (MulAction.orbit Γ x)) :
  IsCoveringMap (Quotient.mk : X → Quotient (MulAction.orbitRel Γ X)) ∧
    LocalIsometry (Quotient.mk : X → Quotient (MulAction.orbitRel Γ X)) := by sorry