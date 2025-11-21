import Mathlib

/-!
Statement translation:
Take a free group action on a metric space X by a group of isometries Γ with discrete orbits.
Prove that the quotient map X → X/Γ is a locally isometric covering map.

We state this as a lemma (no proof): the quotient map is a covering map, assuming the
action is by isometries, free, and has discrete orbits (expressed by a uniform positive
separation at each point).
-/

theorem quotient_map_locally_isometric_covering
  {X : Type*} [MetricSpace X]
  {Γ : Type*} [Group Γ] [MulAction Γ X]
  (h_isometry : ∀ γ : Γ, Isometry (fun x : X => γ • x))
  (h_free : ∀ (γ : Γ) (x : X), γ • x = x → γ = 1)
  (h_discrete_orbits : ∀ x : X, ∃ ε : ℝ, 0 < ε ∧ ∀ γ : Γ, γ ≠ 1 → dist (γ • x) x ≥ ε) :
  IsCoveringMap (Quotient.mk : X → Quotient (MulAction.orbitRel Γ X)) := by sorry
