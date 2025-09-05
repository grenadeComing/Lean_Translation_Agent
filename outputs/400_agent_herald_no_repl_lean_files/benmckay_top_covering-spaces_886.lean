import Mathlib

/-- Van Kampen-style algebraic formulation for a cover.

We package the usual hypotheses (fundamental groups of the sets and their
intersections, and the inclusion-induced homomorphisms) as algebraic data.
Given a family of group homomorphisms φ_a : π_a →* Γ which agree on every
π_{ab}, there is a unique group homomorphism π →* Γ extending them.

This file provides the algebraic statement; the topological hypotheses
(which produce the groups π, π_a, π_{ab} and the inclusion maps) are not
expressed here. -/
theorem van_kampen_for_covering_spaces {π : Type*} [Group π]
  {A : Type*} (π_a : A → Type*) [∀ a, Group (π_a a)]
  (incl_a : ∀ a, (π_a a →* π))
  (π_ab : A → A → Type*) [∀ a b, Group (π_ab a b)]
  (incl_ab_a : ∀ a b, (π_ab a b →* π_a a))
  (incl_ab_b : ∀ a b, (π_ab a b →* π_a b))
  (incl_ab_compat : ∀ a b,
    (incl_a a).comp (incl_ab_a a b) = (incl_a b).comp (incl_ab_b a b))
  (Γ : Type*) [Group Γ]
  (φ_a : ∀ a, (π_a a →* Γ))
  (h_compat : ∀ a b, (φ_a a).comp (incl_ab_a a b) = (φ_a b).comp (incl_ab_b a b)) :
  ∃! (φ : π →* Γ), ∀ a, φ.comp (incl_a a) = φ_a a := by sorry
