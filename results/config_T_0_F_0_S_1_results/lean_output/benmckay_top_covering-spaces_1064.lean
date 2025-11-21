import Mathlib

-- Van Kampen statement (amalgamated free product form) for a cover by path-connected opens.
-- This file records the statement only (no proof): the fundamental group π = π1(X,x0)
-- is the amalgamation of the groups π_a = π1(X_a,x0) over the intersection groups
-- π_ab = π1(X_a ∩ X_b, x0), in the sense of the usual universal property.

/--
We formalise the universal property of the amalgamated free product in the setting
of a cover of a topological space. The topological hypotheses are recorded as
assumptions (path-connectedness, local simple connectivity, cover by path-connected
open sets containing the base point x0). The algebraic conclusion is that the
fundamental group π (written below as an abstract Group) is the colimit (amalgam)
of the family of groups π_a along the groups π_ab, i.e. it satisfies the usual
universal property of the pushout/colimit in the category of groups.

Note: we only state the universal property (no construction nor proof).
-/
theorem benmckay_top_covering_spaces_1064
  {X : Type*} [TopologicalSpace X]
  (ι : Type*) (Xa : ι → Set X) (x0 : X)
  -- topological hypotheses (recorded as propositions)
  (path_connected_X : Prop) (locally_simply_connected_X : Prop)
  (cover_by_Xa : (⋃ a : ι, Xa a) = (Set.univ : Set X))
  (each_Xa_open : ∀ a, IsOpen (Xa a))
  (each_Xa_path_connected : ∀ a, Prop)
  (each_Xab_path_connected : ∀ a b, Prop)
  (x0_in_each_Xa : ∀ a, x0 ∈ Xa a)
  -- the groups appearing (we treat them abstractly as groups; these stand for
  -- π = π1(X,x0), π_a = π1(X_a,x0), π_ab = π1(X_a ∩ X_b, x0))
  (π : Type*) [Group π]
  (π_a : ι → Type*) [∀ a, Group (π_a a)]
  (π_ab : ι → ι → Type*) [∀ a b, Group (π_ab a b)]
  -- the inclusion-induced group homomorphisms π_ab → π_a and the maps π_a → π
  (incl_ab_to_a : ∀ a b, (π_ab a b) →* (π_a a))
  (incl_ab_to_b : ∀ a b, (π_ab a b) →* (π_a b))
  (incl_a_to_π : ∀ a, (π_a a) →* π)
  :
  -- universal property characterising π as the amalgamation (colimit / pushout)
  (∀ (G : Type*) [Group G] (f : ∀ a, (π_a a) →* G),
      ( (∀ a b, (f a).comp (incl_ab_to_a a b) = (f b).comp (incl_ab_to_b a b)) →
        ∃! (φ : π →* G), ∀ a, φ.comp (incl_a_to_π a) = f a )) := by sorry